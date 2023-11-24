<%@page language="java" import="java.sql.*" %>
<%
   //verifica se a session chamada usuario existe
   if (  session.getAttribute("usuario") == null ) {
        response.sendRedirect("../admin/admin.html") ;
   }
   else
   {
  
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post</title>
    <link rel="stylesheet" href="style/style.css" media="all">
    
</head>
<body>

    <nav class="menu">
        <img class="logo" src="../imagens/logo_maleficis.png" alt="logo">
        <ul>
            <li><a href="post_blog.jsp">Postar No Blog</a></li>
            <li><a href="post_portfolio.jsp">Postar No Portfolio</a></li>
        </ul>
        <div class="recepcao">
            <%out.print( "<p>Bem vinda " + "<strong>" + session.getAttribute("usuario") + "</strong></p>" ) ;%>
            <button type="button" class="sair"><a href='../index.html'>Site</a></button>
            <button type="button" class="sair"><a href='../servidor/logout.jsp'>Sair</a></button>
        </div>
    </nav>

    <section class="postagens">
    
        <form action="../servidor/postar.jsp" method="post" autocomplete="on">
            <label for="titulo">Título:</label>
            <input type="text" name="titulo" class="titulo">
            <label for="descricao">Descrição:</label>
            <textarea name="descricao" id="descricao" cols="30" rows="10"></textarea></textarea>

            <input type="file" name="foto1" class="foto" required>
            <input type="file" name="foto2" class="foto" >
            <input type="file" name="foto3" class="foto" >

            <input class="botao"  type="submit" value="Enviar" >
        </form>
    </section>
</body>
</html>

<%}%>