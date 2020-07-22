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
import com.kh.eeum.domain.Review;

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
	public int requestAjax(List<String> realFiles , MultipartHttpServletRequest request, Map<String, Object> paramMap) {
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
	public List<Review> ReviewRatingList(String expert_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("expert_id", expert_id);
		
		return exdao.ReviewRatingList(map);
	}


}
