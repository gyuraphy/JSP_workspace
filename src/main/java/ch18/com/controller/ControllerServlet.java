package ch18.com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.LoginBean;

public class ControllerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");		

		String id = request.getParameter("id");
		String password = request.getParameter("passwd");
		
		// DTO 형식처럼 사용되는 객체
		// 입력 받은 id, 패스워드를 임시로 저장 해두는 역할
		LoginBean bean = new LoginBean();
		bean.setId(id);
		bean.setPassword(password);
		
		// request 내장객체 key: bean, value: bean 실제 객체가 들어 있음
		request.setAttribute("bean", bean);
		
		// bean 객체 내부에 validate() 메서드가 있음
		// 하드코딩, 패스워드: admin으로 하면 true로 반환하는 메서드
		boolean status = bean.validate();
		
		// 간단한 유효성 체크를 통과한 후 뷰에 값을 전달하는 역할
		if (status) {
			// mvc_success.jsp 뷰 페이지를 rd라는 객체에 담아서 전달하는 역할
			// 뷰에 전달한다 (request와 response 두개의 객체를 전달합니다)
			// 그러면 뷰에서 해당 객체에 담겨진 데이터를 꺼내서 사용하는 형식
			RequestDispatcher rd = request.getRequestDispatcher("mvc_success.jsp");			
			rd.forward(request, response);
			// 결과
			// 웹 브라우저에서는 해당 뷰 페이지의 정보만 불러오게 되고
			// 실제 주소는 /ch18/ControllerServlet
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("mvc_error.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
