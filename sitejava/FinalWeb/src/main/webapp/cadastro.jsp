
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<nav>
    <div class="logo">Projeto Integrador</div>
    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
      <i class="fas fa-bars"></i>
    </label>
    <ul>
     <li><a  href="home.jsp">Home</a></li>
      <li><a href="cadastro.jsp" href="cadastro.jsp">Cadastro</a></li>
      <li><a class="active" href="index.jsp">login</a></li>
     
      
    </ul>
  </nav>
  
  <div class="container2">
  <div class="registration form">
      <header>Inscrever-se</header>
      
       <form action="IncluirUsuarioServlet" method="post">
       <input  type="text" placeholder="Enter your usuario" id="usuario" name="usuario" required>
        <input  type="text" placeholder="Enter your nome" id="nome" name="nome" required>
        <input  type="text" placeholder="Create a email" id="email" name="email" required>
        <input  type="password" placeholder="Confirm your password" id="senha" name="senha"  required>
        <input type="submit" class="button" value="Inscrever-se">
      </form>
     
      <div class="signup">
        <span class="signup">Você já tem conta?
         <label for="check"><a href="index.jsp">Entrar</a></label>
        </span>
      </div>
    </div>
  </div>
  

</body>
</html>

