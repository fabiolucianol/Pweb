package Ifgoiano;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MensageriaServlet")
public class MensageriaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String titulo = request.getParameter("titulo");
        String texto = request.getParameter("texto");
        String tipoEnvio = request.getParameter("tipoEnvio");

        String mensagem = "";

        switch (tipoEnvio) {
            case "cumprimentoHorario":
                mensagem = cumprimentoHorario(email, titulo, texto);
                break;
            case "automatico":
                mensagem = emailAutomatico(email, titulo, texto);
                break;
            default:
                mensagem = enviarEmailPadrao(email, titulo, texto);
                break;
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Resultado do envio do e-mail:</h2>");
        out.println("<p>" + mensagem + "</p>");
        out.println("</body></html>");
    }

    private String enviarEmailPadrao(String email, String titulo, String texto) {
        return "E-mail enviado para " + email + " com título: " + titulo;
    }

    private String cumprimentoHorario(String email, String titulo, String texto) {
        int hora = java.time.LocalTime.now().getHour();
        String cumprimento;

        if (hora >= 5 && hora < 12) {
            cumprimento = "Bom dia,";
        } else if (hora >= 12 && hora < 19) {
            cumprimento = "Boa tarde,";
        } else {
            cumprimento = "Boa noite,";
        }

        return "E-mail enviado para " + email + " com título: " + titulo + " e cumprimento: " + cumprimento;
    }

    private String emailAutomatico(String email, String titulo, String texto) {
        return "E-mail automático enviado para " + email + " com título: " + titulo + ". Atenção: esse é um e-mail automático e não deve ser respondido.";
    }
}
