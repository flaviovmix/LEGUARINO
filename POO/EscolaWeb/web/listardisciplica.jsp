<%@page import="escola.Disciplica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String nome = request.getParameter("nome");
            String cargaHoraria = request.getParameter("cargaHoraria");
            
            Disciplica disciplina = new Disciplica();
            disciplina.setNome(nome);
            disciplina.setCargaHoraria(Integer.parseInt(cargaHoraria));
        %>  
        
        <div class="container">
            
            <h1>Lista de Disciplinas</h1>

            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome:</th>
                    <th scope="col">Carga Horária</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td><%=nome%></td>
                    <td><%=cargaHoraria%></td>
                  </tr>
                </tbody>
            </table>
                
            <a class="btn btn-primary" href="cadastrardisciplica.jsp">Cadastrar Disciplina</a>
                  
        </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

  </body>
</html>