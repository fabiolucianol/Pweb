package br.edu.ifgoiano;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/agora")
public class AgoraServlet extends HttpServlet {

	private static final long serialVersionUID = -8685905556335379708L;

	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Date data = new Date();

		req.setAttribute("data", data);

		req.getRequestDispatcher("datahoracert.jsp").forward(req, resp);
	}
}
