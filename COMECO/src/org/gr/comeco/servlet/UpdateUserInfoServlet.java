package org.gr.comeco.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.gr.comeco.biz.IUserBiz;
import org.gr.comeco.biz.impl.UserBizImpl;
import org.gr.comeco.po.User;

/**
 * Servlet implementation class UpdateInfServlet
 */
public class UpdateUserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		IUserBiz userBiz = new UserBizImpl();

		String fileUploadPath = this.getServletContext().getRealPath(
				"/user_images");
		System.out.println("[SingleFileUploadServlet] 设置服务器接受客户端上传文件的位置是："
				+ fileUploadPath);
		File fileUploadPathD = new File("/user_images");
		// 1-2：设置服务器临时缓冲区的位置（临时缓冲的文件夹）
		File fileUploadTempPath = new File(this.getServletContext()
				.getRealPath("/tempDir"));
		if (!fileUploadTempPath.exists()) {
			// 创建一个全新的
			fileUploadTempPath.mkdir();
		}
		if (!fileUploadPathD.exists()) {
			// 创建一个全新的
			fileUploadPathD.mkdir();
		}
		System.out.println("[SingleFileUploadServlet] 设置服务器接受客户端上传文件的临时位置是："
				+ fileUploadTempPath.getPath());

		// 步骤2：判断表单是否符合上传要求
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			// 步骤3：设置文件上传缓冲区对象
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 3-1:缓冲区对象与磁盘物理位置的绑定
			factory.setRepository(fileUploadTempPath);
			// 3-2：设置缓冲区对象的大小（4*1024 字节）
			factory.setSizeThreshold(4 * 1024);
			System.out
					.println("[SingleFileUploadServlet] 初始化服务器接受客户端上传文件的临时位置完毕！");

			// 步骤4：解析客户端表单待上传的数据
			// 4-1:创建一个ServletFileUpload对象完成对二进制表单数据的解析，并实现服务器上传功能
			ServletFileUpload sfu = new ServletFileUpload(factory);

			try {
				// 4-2:将解析到的二进制文件封装到FileItem的对象中
				@SuppressWarnings("unchecked")
				List<FileItem> fileItems = sfu.parseRequest(request);
				for (FileItem fileItem : fileItems) {
					// 扩展3：判断当前解析的请求数据是否为普通表单数据
					if (fileItem.isFormField()) {
						// 获取客户端表单输入元素的name属性的值
						String name = fileItem.getFieldName().trim();
						// 判断数据为哪个字段数据
						if ("nickName".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setName(value);
						}
						if ("gender".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setGender(Integer.parseInt(value));
						}
						if ("major".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setMajor(value);
						}
						if ("district".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setDistrict(value);
						}
						if ("school".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setSchool(value);;
						}
						if ("intro".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setIntroduce(value);;
						}
						if ("level".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setLevel(value);
						}
						if ("password".equalsIgnoreCase(name)) {
							String value = fileItem.getString();
							value = new String(value.getBytes("iso8859-1"),
									"UTF-8");
							System.out.println("消息内容：> " + value);
							user.setPassword(value);
						}
					} else {
						// 4-3:获取上传文件的名称
						String fileName = fileItem.getName().trim();
						if (fileName.equals("")) {
							// 扩展1：唯一命名
							user.setImage("default.jpg");
						    System.out.println("[SingleFileUploadServlet] 获取上传文件的名称为: "
										+ fileName);
						}
						else{
							String fileExtName = fileName.substring(fileName.lastIndexOf("."));
							fileName = generateUnqieName() + fileExtName;
							user.setImage(fileName);
						    System.out.println("[SingleFileUploadServlet] 获取上传文件的名称为: "
										+ fileName);
							// 4-4:封装上传文件对象并写入到服务器
							File saveFile = new File(fileUploadPath, fileName);
							fileItem.write(saveFile);
							System.out.println("[SingleFileUploadServlet] 上传文件成功！");
						}

					}
				}
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			System.out.println("客户端表单不符合上传要求！");
		}
		System.out.println(user);
		boolean flag = userBiz.changeInfo(user);
		String url = "";
		if (flag) {
			url = "1";
		} else {
			url = "2";
		}
		request.setAttribute("tip", url);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("personaldetails.jsp");
		dispatcher.forward(request, response);
	}

	// 自定义方法完成上传文件名称的自动生成
	private synchronized String generateUnqieName() {
		return String.valueOf(System.nanoTime());
	}

}