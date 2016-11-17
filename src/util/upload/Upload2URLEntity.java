package util.upload;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;

/**
 * WEB地址文件加载到本地保存
 * 示例：<br/>
 * <pre>
 * DownloadEntity downloadEntity = new DownloadEntity(&quot;http://....&quot;);
 * System.out.println(uploadEntity.downloadPhoto(true));
 * System.out.println(uploadEntity.getSmallPhoto(160, 160));
 * </pre>
 * 
 * @author ziry 2016-11-01 10:05
 */
public class Upload2URLEntity {

	private String fileUrl;

	// 创建你要保存的文件的路径
	private String path = "";

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

	// mime类型
	private String contentType = "";
	
	//记录是否已上传
	private boolean isUpload = false;

	public Upload2URLEntity(String fileUrl) {

		this.fileUrl = fileUrl;

		if (fileUrl == null || fileUrl.trim().length() == 0) {
			throw new NullPointerException("fileUrl 不能为空!");
		}

	}

	/**
	 * 上传文件
	 * 
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	private void download() throws IllegalStateException, IOException {

		// 构造URL
		URL url = new URL(fileUrl);

		// 打开连接
		URLConnection con = url.openConnection();

		// 设置请求超时为5s
		con.setConnectTimeout(5 * 1000);

		// 输入流
		InputStream is = con.getInputStream();

		// 1K的数据缓冲
		byte[] bs = new byte[1024];

		// 读取到的数据长度
		int len;

		// 获取文件mime类型
		contentType = con.getContentType();

		// 通过Mime类型获取文件类型
		fileSuffix = ContentTypeUtil.getFileTypeByMimeType(contentType);

		// 路径
		path = UploadUtil.getPath(fileSuffix);

		// 文件名
		filename = UploadUtil.getFileName();

		// 全路径
		filePath = path + filename + "." + fileSuffix;

		// 访问地址
		webURL = UploadUtil.getURL(fileSuffix) + filename + "." + fileSuffix;

		// 输出的文件流
		OutputStream os = new FileOutputStream(filePath);

		// 开始读取
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}

		// 完毕，关闭所有链接
		os.close();
		is.close();
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

		download();

		// 判断图片是否压缩
		if (isCompress) {
			ImageUtil.scaleCompress(filePath, filePath, 900d, 1d);
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

		download();

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

		download();

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
	 * 
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
	 * 上传其他类型文件
	 * 
	 * @return 可供web访问的路径(/xxx/xxx.txt)
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public String saveFile() throws IllegalStateException, IOException {

		download();

		return webURL;
	}

	public String getFileUrl() {
		return fileUrl;
	}

	public String getPath() {
		return path;
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

	public String getContentType() {
		return contentType;
	}

}
