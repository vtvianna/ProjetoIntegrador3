<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav>
    <div class="logo">VT</div>
    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
      <i class="fas fa-bars"></i>
    </label>
    <ul>
   
        
      
      <li><a class="active" href="#">Home</a></li>
      <li><a href="cadastro.jsp">Cadastro</a></li>
      <li><a href="index.jsp">login</a></li>
      <li><a href="LogoutServlet">Sair</a></li>
       </ul> 
       </nav>
       
       <%
       List<Usuario> lista = (List<Usuario>)session.getAttribute("lista");
       %>
       
       <div class="caixa">
       <div class="caixa1">
      <div style="height:50px" >
    
       
       <table  >
       <tr>
       <td>usuario</td>
        <td>nome</td>
        <td>email</td>
       </tr>
       
        <%
       for(Usuario usuario:lista){
    	   out.write("<tr>");
    	   out.write("<td style = padding:8px; align-items: center;>" + usuario.getUsuario() + "</td>");
    	   out.write("<td style = padding:8px ; align-items: center;>" + usuario.getNome() + "</td>");
    	   out.write("<td style = padding:8px ; align-items: center;>" + usuario.getEmail() + "</td>");
       }
       %>
       
       
       </table>
     
   <a href="cadastro.jsp">
   <input type="button" name="btninclusao" value="Adicionar novo usuário" style ="position:relative;  top:25px;color: #fff;background-color: black;cursor: pointer;height: 100%;width: 40%;border: none;font-size: 16px;font-weight: 400;border-radius: 6px;">
   </a>
   
   </div>
       
       </div>
       </div>
      
     
  </body>
  </html>