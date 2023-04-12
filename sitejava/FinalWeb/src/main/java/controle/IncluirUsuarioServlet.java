package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Usuario;
import servico.UsuarioServico;


@WebServlet("/IncluirUsuarioServlet")
public class IncluirUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public IncluirUsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = new Usuario();
		UsuarioServico servico = new UsuarioServico();
		
		usuario.setUsuario(request.getParameter("usuario"));
		usuario.setNome(request.getParameter("nome"));
		usuario.setSenha(request.getParameter("senha"));
		usuario.setEmail(request.getParameter("email"));
		
		
		servico.incluirUsuario(usuario);
	
		
		response.sendRedirect("home.jsp");
	}

}
