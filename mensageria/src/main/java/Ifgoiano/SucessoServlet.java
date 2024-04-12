package Ifgoiano;
	import java.io.IOException;
	import java.io.PrintWriter;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	@WebServlet("/enviarEmailServlet")
	public class SucessoServlet extends HttpServlet {
	    private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        response.setContentType("text/html");
	        
	        String email = request.getParameter("email");
	        String cumprimentoFormal = request.getParameter("cumprimentoFormal");
	        String cumprimentoFormalHorario = request.getParameter("cumprimentoFormalHorario");
	        String avisoAutomatico = request.getParameter("avisoAutomatico");
	        String titulo = request.getParameter("titulo");
	        String texto = request.getParameter("texto");
	        
	        PrintWriter out = response.getWriter();
	        out.println("<html><body>");
	        out.println("<h2>E-mail enviado com sucesso.</h2>");
	        out.println("</body></html>");
	    }
	}


