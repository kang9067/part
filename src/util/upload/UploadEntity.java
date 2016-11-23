package util.upload;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;

/**
 * 基于spring mvc 的文件上传实体类<br/>
 * 内部包含MultipartFile<br/>
 * 示例：<br/>
 * 
 * <pre>
 * @RequestMapping(value = "/testUpload.html", method = RequestMethod.POST)
 * public ModelAndView testUploadAction(@RequestParam(value = "photo", required = false) MultipartFile file, ModelMap modelMap,
 * 		HttpServletRequest request, HttpServletResponse response) {
 * 
 * 	UploadEntity uploadEntity = new UploadEntity(file);
 * 	try {
 * 		System.out.println(uploadEntity.uploadPhoto(true));
 * 		System.out.println(uploadEntity.getSmallPhoto(160, 160));
 * 	} catch (Exception e) {
 * 		e.printStackTrace();
 * 	}
 * 
 * 	return createModelAndView("WeCharTest/testUpload", modelMap);
 * }
 * 
 * @RequestMapping(value = "/testUpload.html", method = RequestMethod.POST)
 * public ModelAndView testUploadAction(@RequestParam(value = "photos", required = false) MultipartFile[] files, ModelMap modelMap,
 * 		HttpServletRequest request, HttpServletResponse response) {
 * 
 * 	try {
 * 		UploadEntity uploadEntity = null;
 * 		for (MultipartFile file : files) {
 * 			if (!UploadUtil.isNull(file)) {
 * 				uploadEntity = new UploadEntity(file);
 * 				System.out.println(uploadEntity.uploadPhoto(true));
 * 				System.out.println(uploadEntity.getSmallPhoto(160, 160));
 * 			}
 * 		}
 * 	} catch (Exception e) {
 * 		e.printStackTrace();
 * 	}
 * 
 * 	return createModelAndView("WeCharTest/testUpload", modelMap);
 * }
 * </pre>
 * 
 * @author ziry 2016-11-01 10:05
 */
public class UploadEntity {

	private MultipartFile file;

	// 创建你要保存的文件的路径
	private String path = "";

	// 获取该文件的文件名
	private String originalFilename = "";

	// 获取文件后缀
	private String fileSuffix = "";

	// 创建文件名
	private String filename = "";

	// 实际文件路径
	private String filePath = "";

	// 可供web访问的路径
	private String webURL = "";

	// 缩略图实际文件路径
	private String smallPhotoFilePath = "";

	// 缩略图可供web访问的路径
	private String smallPhotoWebURL = "";

	// 文件大小（KB）
	private long fileSizeByKB = 0;
	
	//记录是否已上传
	private boolean isUpload = false;

	public UploadEntity(MultipartFile file) {

		this.file = file;

		if (file == null) {
			throw new NullPointerException("MultipartFil 不能为空!");
		}

		fileSizeByKB = file.getSize() / 1024;

	}
	
	/**
	 * 带文件大小限制的构造
	 * 
	 * @param file
	 *            MultipartFile
	 * @param maxSize2KB
	 *            限制文件大小
	 * @throws IOException
	 */
	public UploadEntity(MultipartFile file, long maxSizeByKB) throws MaxUploadSizeExceededException {

		this.file = file;

		if (file == null) {
			throw new NullPointerException("MultipartFil 不能为空!");
		}

		fileSizeByKB = file.getSize() / 1024;

		if (fileSizeByKB > maxSizeByKB) {
			throw new MaxUploadSizeExceededException(maxSizeByKB * 1024);
		}

	}

	/**
	 * 上传文件
	 * 
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	private void save() throws IllegalStateException, IOException {

		// 获取该文件的文件名
		originalFilename = file.getOriginalFilename();

		// 获取文件后缀
		fileSuffix = UploadUtil.getFileSuffix(originalFilename);
		if (fileSuffix == null || fileSuffix.length() == 0) {
			// 通过Mime类型获取文件类型
			fileSuffix = ContentTypeUtil.getFileTypeByMimeType(file.getContentType());
		}

		// 创建文件名
		filename = UploadUtil.getFileName();

		// 实际文件路径
		filePath = path + filename + "." + fileSuffix;

		File targetFile = new File(filePath);

		// 保存
		file.transferTo(targetFile);
		
		isUpload = true;

	}

	/**
	 * 上传图片文件
	 * 
	 * @param isCompress
	 *            是否压缩
	 * @return 可供web访问的路径(/xxx/xxx.jpg)
	 * @throws Exception
	 */
	public String savePhoto(boolean isCompress) throws Exception {
		return savePhoto(isCompress,900d, 1d);
	}
	/**
	 * 上传图片文件
	 * @param isCompress
	 * 		 是否压缩
	 * @param x
	 * 		亚索长度
	 * @param y
	 * 		亚索高度
	 * @return
	 *  	可供web访问的路径(/xxx/xxx.jpg)
	 * @throws Exception
	 */
	public String savePhoto(boolean isCompress,double x,double y) throws Exception {

		// 创建你要保存的文件的路径
		path = UploadUtil.getPhotoPath(true);
				
		save();

		// 可供web访问的路径
		webURL = UploadUtil.getPhotoURL() + filename + "." + fileSuffix;

		// 判断图片是否压缩
		if (isCompress) {
			ImageUtil.scaleCompress(filePath, filePath, x, y);
		}

		return webURL;
	}
	/**
	 * 上传图片文件
	 * 
	 * @param isCompress
	 *            是否压缩
	 * @param cropMiddle
	 *            是否取正方型
	 * @return 可供web访问的路径(/xxx/xxx.jpg)
	 * @throws Exception
	 */
	public String savePhoto(boolean isCompress, boolean cropMiddle) throws Exception {
		// 创建你要保存的文件的路径
		path = UploadUtil.getPhotoPath(true);
				
		save();

		// 可供web访问的路径
		webURL = UploadUtil.getPhotoURL() + filename + "." + fileSuffix;

		// 判断图片是否压缩
		if (isCompress) {
			ImageUtil.scaleCompress(filePath, filePath, 900d, 1d);
		}

		// 判断图片是否取正方型
		if (cropMiddle) {
			ImageUtil.cropMiddle(filePath, filePath);
		}

		return webURL;
	}

	/**
	 * 上传图片文件
	 * 
	 * @param isCompress
	 *            是否压缩
	 * @param cropMiddle
	 *            是否取正方型
	 * @param width
	 *            压缩宽度
	 * @param height
	 *            压缩高度
	 * @return 可供web访问的路径(/xxx/xxx.jpg)
	 * @throws Exception
	 */
	public String savePhoto(boolean isCompress, boolean cropMiddle, int width, int height) throws Exception {

		// 创建你要保存的文件的路径
		path = UploadUtil.getPhotoPath(true);
				
		save();

		// 可供web访问的路径
		webURL = UploadUtil.getPhotoURL() + filename + "." + fileSuffix;

		// 判断图片是否压缩
		if (isCompress) {
			ImageUtil.scaleCompress(filePath, filePath, 900d, 1d);
		}

		// 判断图片是否取正方型
		if (cropMiddle) {
			ImageUtil.cropMiddle(filePath, filePath);
		}

		// 按比例压缩
		ImageUtil.doCompress(filePath, width, height);

		return webURL;
	}

	/**
	 * 获取缩略图，注意一定要先调用uploadPhoto(),此方法是对已上传文件进行的拷贝压缩
	 * @param width
	 * @param height
	 * @return
	 * @throws Exception
	 */
	public String getSmallPhoto(int width, int height) throws Exception {
		
		if ( isUpload == false) {
			throw new NullPointerException("未检测到上传文件，请先调用save..()方法");
		}

		// 缩略图实际文件路径
		smallPhotoFilePath = path + filename + "_small." + fileSuffix;

		// 缩略图可供web访问的路径
		smallPhotoWebURL = UploadUtil.getPhotoURL() + filename + "_small." + fileSuffix;

		// 取正方型
		ImageUtil.cropMiddle(filePath, smallPhotoFilePath);

		// 按比例压缩
		ImageUtil.doCompress(smallPhotoFilePath, width, height);

		return smallPhotoWebURL;
	}

	/**
	 * 上传视频文件
	 * 
	 * @return 可供web访问的路径(/xxx/xxx.mp4)
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public String saveVideo() throws IllegalStateException, IOException {
		// 创建你要保存的文件的路径
		path = UploadUtil.getVideoPath(true);
				
		save();

		// 可供web访问的路径
		webURL = UploadUtil.getVideoURL() + filename + "." + fileSuffix;

		return webURL;
	}

	/**
	 * 上传音频文件
	 * 
	 * @return 可供web访问的路径(/xxx/xxx.mp3)
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public String saveAudio() throws IllegalStateException, IOException {
		// 创建你要保存的文件的路径
		path = UploadUtil.getAudioPath(true);
		
		save();

		// 可供web访问的路径
		webURL = UploadUtil.getAudioURL() + filename + "." + fileSuffix;

		return webURL;
	}

	/**
	 * 上传其他类型文件
	 * 
	 * @return 可供web访问的路径(/xxx/xxx.txt)
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public String saveOther() throws IllegalStateException, IOException {
		// 创建你要保存的文件的路径
		path = UploadUtil.getOtherPath(true);
		
		save();

		// 可供web访问的路径
		webURL = UploadUtil.getOtherURL() + filename + "." + fileSuffix;

		return webURL;
	}

	public String getPath() {
		return path;
	}

	public String getOriginalFilename() {
		return originalFilename;
	}

	public String getFileSuffix() {
		return fileSuffix;
	}

	public String getFilename() {
		return filename;
	}

	public String getFilePath() {
		return filePath;
	}

	public String getWebURL() {
		return webURL;
	}

	public String getSmallPhotoFilePath() {
		return smallPhotoFilePath;
	}

	public String getSmallPhotoWebURL() {
		return smallPhotoWebURL;
	}

	public long getFileSizeByKB() {
		return fileSizeByKB;
	}

	
}
