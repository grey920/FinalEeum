package com.kh.eeum.service;


import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.eeum.dao.ExpertDAO;
import com.kh.eeum.dao.PortfolioDAO;
import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Reservation;
import com.kh.eeum.domain.Review;
import com.kh.eeum.domain.User;



@Service
public class ExpertServiceImpl implements ExpertService {

	
	@Autowired
	private ExpertDAO exdao;
	
	@Autowired
	private PortfolioDAO pfDao;

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	private static final Logger logger = LoggerFactory.getLogger(ExpertServiceImpl.class);

	@Override
	public int insert(Expert ex) {
		return exdao.insert(ex);
	}

	@Override
	public int isId(String expert_id, String expert_pass) {
		Expert ex = exdao.isId(expert_id);

		int result = -1;

		if (ex != null) {
			if (passwordEncoder.matches(expert_pass, ex.getExpert_pass())) {
				result = 1;
			} else {
				result = 0;
			}
		}
		return result;
	}

	@Override
	public int isId(String expert_id) {
		Expert ex = exdao.isId(expert_id);

		int result = -1;

		if (ex != null) {
			result = 0;
		}

		return result;
	}

	@Override
	public Expert expert_info(String expert_id) {
		return exdao.expert_info(expert_id);
	}

	@Override
	public int expert_update(Expert ex) {
		return exdao.update(ex);
	}


	@Override
	public List<Expert> getList() {
		return exdao.getList();
	}
	

	@Override
	public int getExpertListCount() {
		return exdao.expert_listCount();
	}

	@Override
	public List<Expert> expertlist(int page, int limit) {
		// map 형식으로 담는다.
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return exdao.getexpertList(map);
	}
	

	@Override
	public Expert expertlistOne(String expertid) {
		System.out.println("서비스 impl 넘어온 값: "+expertid);
		return exdao.getexpertListOne(expertid);
	}

	@Override
	public Portfolio getPortfolio(String expert_id) {
		return pfDao.getPortfolio(expert_id);
	}
	
	@Override
	@Transactional
	public int requestAjax(List<String> realFiles , MultipartHttpServletRequest request, Map<String, Object> paramMap, Reservation reservation) {
		logger.info("\n\n requestAjax  요청 파라미터 값 reqMap : " + paramMap.toString());

		//1.Request 테이블에 데이터 등록
		exdao.insertRequest(paramMap);
		logger.info(" 시퀀스 반환 값 : " + paramMap.get("request_no"));
		
		int result = 0;
		List<MultipartFile> fileList = new ArrayList<MultipartFile>();

		/** 파일이 존재할 경우 **/
		if (realFiles!=null && request.getFiles("request_file").get(0).getSize() != 0) {
			fileList = request.getFiles("request_file");
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH) + 1;
			int date = c.get(Calendar.DATE);
			String saveFolder = request.getSession().getServletContext().getRealPath("resources") + File.separator+"Requestupload" + File.separator;
			String homedir = saveFolder + year + "-" + month + "-" + date;

			File path1 = new File(homedir);

			if (!(path1.exists())) {
				path1.mkdir();
			}
			
			for(String realImage : realFiles) {           
						for (MultipartFile mf : fileList) {
								String originalFilename = mf.getOriginalFilename();
								
								if(realImage.equals(originalFilename)) {
										Random r = new Random();
										int random = r.nextInt(100000000);
					
										int index = originalFilename.lastIndexOf(".");
										String fileExtension = originalFilename.substring(index + 1);
										String realFileName = "rq" + year + month + date + random + "." + fileExtension;
										String dateFolder = year + "-" + month + "-" + date;
										String finalFile = saveFolder + dateFolder + File.separator + realFileName;
										String fileDBName = "/" + dateFolder + "/" + realFileName;
					
										try {
											// 파일생성
											mf.transferTo(new File(finalFile));
											
											String fileName = fileDBName;
											String fileOriginal = originalFilename;
											String fileThumbName = "/"+ makeThumbnail(saveFolder, fileDBName, originalFilename, dateFolder, realFileName);
											
											//paramMap.put("request_no", requestNo);
											paramMap.put("file_name", fileName);
											paramMap.put("file_original", fileOriginal);
											paramMap.put("file_thumb_name", fileThumbName);
											
											System.out.println("\n\n파일이름 . 위치 = " + index);
											System.out.println("원본 파일 명  = " + originalFilename);
											System.out.println("이미지 확장자 = " + fileExtension);
											System.out.println("새로운 파일명 = " + realFileName);
											System.out.println("최종 파일 저장 위치및 파일 명  " + finalFile);
											System.out.println("DB에 저장될 파일 내용  = " + fileDBName);
											System.out.println("DB에 저장될 썸네일 내용  = " + fileThumbName);
											System.out.println("데이터 베이스 등록 : file_name : " + fileName + " , file_original :" + fileOriginal+ " , file_thumb_name : " + fileThumbName);
																
											result=exdao.insertRequestFileData(paramMap);
											
										} catch (Exception e) {
											e.printStackTrace();
											result = 5;
										}
								}
						}
	        }
			
			String expert_id = (String) paramMap.get("expert_id");
			System.out.println(expert_id);
			String user_id = (String) paramMap.get("writer");
			System.out.println(user_id);
			int rs_no = (int) paramMap.get("request_no");
			
			reservation.setRs_no(rs_no);
			reservation.setRs_exid(expert_id);
			reservation.setRs_uid(user_id);
			
			exdao.insertReservation(reservation);
		}
		return result;
	}

	/** 250 x 150 크기의 썸네일을 생성 */
	private String makeThumbnail(String saveFolder, String fileDBName, String originalFileName, String dateFolder,
			String refileName) throws Exception {
		int index = originalFileName.lastIndexOf(".");
		String fileExt = originalFileName.substring(index + 1);

		// 저장된 원본파일로부터 BufferedImage 객체를 생성
		BufferedImage srcImg = ImageIO.read(new File(saveFolder + fileDBName));

		// 썸네일의 너비와 높이
		int dw = 250, dh = 150;

		// 원본 이미지의 너비와 높이
		int ow = srcImg.getWidth();
		int oh = srcImg.getHeight();

		// 원본 너비를 기준으로 하여 썸네일의 비율로 높이를 계산
		int nw = ow;
		int nh = (ow * dh) / dw;

		// 계산된 높이가 원본보다 높다면 crop이 안되므로 원본 높이를 기준으로 썸네일의 비율로 너비를 계산
		if (nh > oh) {
			nw = (oh * dw) / dh;
			nh = oh;
		}

		// 계산된 크기로 원본이미지를 가운데에서 crop
		BufferedImage cropImg = Scalr.crop(srcImg, (ow - nw) / 2, (oh - nh) / 2, nw, nh);

		// 1.crop된 이미지로 썸네일을 생성
		// BufferedImage destImg = Scalr.resize(cropImg, dw, dh);

		// 2.원본 이미지의 비율을 유지하면서 높이를 150px
		BufferedImage destImg = Scalr.resize(srcImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 150);

		// 3.원본 이미지의 비율을 유지하면서 너비를 250px
		// BufferedImage destImg = Scalr.resize(srcImg, Scalr.Method.AUTOMATIC,
		// Scalr.Mode.FIT_TO_WIDTH, 250);

		// thumb_ 붙여 썸네일을 저장
		String thumbName = saveFolder + dateFolder + File.separator + "thumb_" + refileName;
		File thumbFile = new File(thumbName);
		ImageIO.write(destImg, fileExt.toUpperCase(), thumbFile);

		return dateFolder + "/" + "thumb_" + refileName;
	}

	@Override
	public int insertReservation(Reservation reservation) {
		return exdao.insertReservation(reservation);
	}
	
	@Override
	public int insert(Portfolio pf) {
		return pfDao.insert(pf);
	}

	@Override
	public int deletePF(String expertid) {
		return pfDao.deletePF(expertid);
		
	}

	@Override

	public Portfolio poexpertListOne(String expertid) {
		return exdao.poselectone(expertid);
	}

	@Override
	public int getRequestCount(String expertid) {
		
		return exdao.getRquestCount(expertid);
	
	}

	@Override
	public List<Portfolio> poexpertListOne1(String expert_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("expert_id", expert_id);
		return exdao.getPoList(map);
	}



	public int modifyPF(Portfolio pf) {
		return pfDao.modifyPF(pf);
	}

	
	//수리수리수리수리
	@Override
	public int getExpertListCountRepair() {
		return exdao.expert_listCountRepair();
	}

	@Override
	public int reserveCount(String user_id) {
		return exdao.reserveCount(user_id);
	}

	@Override
	public List<Reservation> ureserveList(String user_id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("user_id"	, user_id);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return exdao.ureserveList(map);
	}
	
	@Override
	public int cancelReserve(String rs_exid, String user_id, String rs_no) {
		Map <String, Object> map = new HashMap<String, Object>();
		int rs_state = 4;
		map.put("rs_exid", rs_exid);
		map.put("rs_uid", user_id);
		map.put("rs_no", rs_no);
		map.put("rs_state", rs_state);
		
		return exdao.cancelReserve(map);
	}

	@Override
	public List<Review> ReviewRatingList(String expert_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("expert_id", expert_id);
		
		return exdao.ReviewRatingList(map);
	}

	@Override
	public String findId(String expert_name, String expert_jumin1, String expert_jumin2) {
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		list = exdao.findId(expert_name, expert_jumin1);
		
		String result_id = null;
		
		for(int i = 0; i <list.size(); i++) {
			String result_jumin = list.get(i).get("EXPERT_JUMIN2");
			
			if(passwordEncoder.matches(expert_jumin2, result_jumin)) {
				result_id = list.get(i).get("EXPERT_ID");
				break;
			}
		}
		
		return result_id;
	}

	@Override
	public int findPwd(String expert_id, String expert_name, String expert_jumin1, String expert_jumin2) {
		Map<String, String> map = new HashMap<String, String>();
		
		map = exdao.findPwd(expert_id, expert_name, expert_jumin1);
		
		int result = 0;
		
		String result_jumin2 = map.get("EXPERT_JUMIN2");
			
		if(passwordEncoder.matches(expert_jumin2, result_jumin2)) {
			result = 1;
		}
		
		return result;
	}

	@Override
	public int updatePwd(String expert_id, String expert_name, String expert_jumin1, String expert_pass) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("expert_id", expert_id);
		map.put("expert_name", expert_name);
		map.put("expert_jumin1", expert_jumin1);
		map.put("expert_pass", expert_pass);
		
		return exdao.updatePwd(map);
	}

	@Override
	public int estimateCount(String expert_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int state = 0;
		
		map.put("expert_id", expert_id);
		map.put("state", state);
		
		return exdao.exreserveCount(map);
	}

	@Override
	public List<Map<String, Object>> estimateList(String expert_id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int state = 0;
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("expert_id", expert_id);
		map.put("state", state);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return exdao.exreserveList(map);
	}

	@Override
	public int exreserveCount(String expert_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int state1 = 1;
		int state2 = 2;
		
		map.put("expert_id", expert_id);
		map.put("state1", state1);
		map.put("state2", state2);
		
		return exdao.reservingCount(map);
	}

	@Override
	public List<Map<String, Object>> exreserveList(String expert_id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int state1 = 1;
		int state2 = 2;
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("expert_id", expert_id);
		map.put("state1", state1);
		map.put("state2", state2);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return exdao.reservingList(map);
	}

	@Override
	public int completeCount(String expert_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int state = 3;
		
		map.put("expert_id", expert_id);
		map.put("state", state);
		
		return exdao.exreserveCount(map);
	}

	@Override
	public List<Map<String, Object>> completeList(String expert_id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int state = 3;
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("expert_id", expert_id);
		map.put("state", state);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return exdao.exreserveList(map);
	}

	@Override
	public int reserveCancel(int rs_no) {
		return exdao.reserveCancel(rs_no);
	}

	@Override
	public Map<String, Object> estimateList(int request_no) {
		return exdao.estimateList(request_no);
	}

	@Override
	public Map<String, Object> serviceForm(int rs_no) {
		return exdao.serviceForm(rs_no);
	}
	
	@Override
	public int serviceYes(Reservation rv) {
		return exdao.serviceYes(rv);
	}

	public int serviceOk(int rs_no) {
		return exdao.serviceOk(rs_no);
	}

	public Reservation reserveCheck(String user_id, int num) {
		Map<String, Object> map= new HashMap<String, Object>();
		map.put("rs_uid", user_id);
		map.put("rs_no", num);
		System.out.println("rs_uid="+user_id+", rs_no="+num);
		Reservation reserve = exdao.reserveCheck(map);
		return reserve;
	}

	@Override
	public int updateState(String id, int rsIndex) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rs_uid", id);
		map.put("rs_no", rsIndex);
		System.out.println("ExImpl의 updateState()");
		return exdao.updateState(map);
	}

	@Override
	public String getGrade (String expert_id) {
		return exdao.getGrade(expert_id);
	}
	
	@Override
	public String getName (String expert_id) {
		return exdao.getName(expert_id);
	}

	@Override
	public Map<String, Object> requestT(int request_no) {
		return exdao.requestT(request_no);
	}

	@Override
	public Reservation reserveT(int request_no) {
		return exdao.reserveT(request_no);
	}

	@Override
	public List<Map<String, Object>> rfT(int request_no) {
		return exdao.rfT(request_no);
	}

	@Override
	public int countGrade(int g) {
		return exdao.countGrade(g);
	}

	@Override
	public Map<String, Object> pick(int g, int count) {
		Random random = new Random();
		
		int pick = random.nextInt(count) + 1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("g", g);
			map.put("pick", pick);

		return exdao.pick(map);
	}


}
