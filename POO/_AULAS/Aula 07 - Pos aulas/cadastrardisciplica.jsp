<%@page import="escola.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page 
    contentType="text/html" 
    pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta 
            http-equiv="Content-Type" 
            content="text/html; charset=UTF-8"
            name="viewport" 
            content="width=device-width, initial-scale=1"
        />
        
        <title>JSP Page</title>
        
        <link 
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
            rel="stylesheet" 
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    <body>  
        <div class="container-fluid">
        
        <nav class="navbar bg-dark border-bottom border-body navbar-expand-lg" data-bs-theme="dark">
          <div class="container">
            <a class="navbar-brand" href="http://localhost:8084/EscolaWeb/">Escola - WEB</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarScroll">
              <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

                <li class="nav-item">
                  <a class="nav-link" href="cadastrardisciplica.jsp">Disciplina</a>
                </li>

              </ul>

            </div>
          </div>
        </nav>
            <div class="container">
            <!--<h1>Adicionar nova Disciplica</h1>-->
            <h2 class="sub-titulo">Adicionar nova Disciplica</h2>
            <form method="post" action="cadastrardisciplica.jsp">
                <div class="row">

                    <div class="col-2">
                        <label>Nome</label>
                        <br/>
                        <input 
                            type="text" 
                            name="nome" 
                            placeholder="nome da disciplina"
                        />
                    </div>

                    <div class="col-2">
                        <label>Carga horária</label>
                        <br/>
                        <input 
                            type="number" 
                            name="cargaHoraria" 
                            placeholder="carga horaria da disciplina"
                        />
                    </div>

                </div>

                <div class="row ">

                    <div class="col-2 botao">
                        <br>
                        <input 
                            class="btn btn-primary" 
                            style="width: 150px;" 
                            type="submit" 
                            name="enviar" 
                            value="Salvar" 
                        /> 
                    </div>

                </div>
            </form>
            
            <hr>
             
        <%
            request.setCharacterEncoding("UTF-8");
            
            String paramNome = request.getParameter("nome");
            String nome = (paramNome == null || paramNome.isEmpty()) ? "Valor Padrão" : paramNome;

            String paramCargaHoraria = request.getParameter("cargaHoraria");
            String cargaHoraria = (paramCargaHoraria == null || paramCargaHoraria.isEmpty()) ? "0" : paramCargaHoraria;

            ServletContext context = getServletContext();
            ArrayList<Disciplina> vetDisciplina = (ArrayList<Disciplina>) context.getAttribute("vetDisciplina");

            // Se a lista não existir no contexto, inicialize-a
            if (vetDisciplina == null) {
                vetDisciplina = new ArrayList<Disciplina>();
                context.setAttribute("vetDisciplina", vetDisciplina);
            }
        %>  
        
        <div class="container">
            
            <h3>Lista de Disciplinas</h3>
                <%
                    // Apenas listar as disciplinas se o nome for vazio ou "Valor Padrão"
                    if (!("Valor Padrão".equals(nome))) {
                        // Adicionar a nova disciplina
                        Disciplina disciplina = new Disciplina();
                        disciplina.setNome(nome);
                        disciplina.setCargaHoraria(Integer.parseInt(cargaHoraria));
                        vetDisciplina.add(disciplina);

                        // Atualiza a lista no contexto
                        context.setAttribute("vetDisciplina", vetDisciplina);

                        // Confirmação de adição
                        out.println(
                            "<div class='alert alert-success d-flex align-items-center' role='alert' style='width: 700px;'>"
                                +"<div>"
                                    + "Disciplina cadastrada com sucesso!"
                                +"</div>"
                            +"</div>"
                        );
                    }
                %>

            
            
            
            <table class="table" style="width: 700px;">
                <thead>
                  <tr>
                    <th>Nº</th>
                    <th>Nome:</th>
                    <th class="text-center">Carga Horária</th>
                  </tr>
                </thead>
                <tbody>
                <%
                    int index = 1;
                    for(Disciplina disc: vetDisciplina) {
                        out.print("<tr>");
                            out.print("<td>");
                                out.print(index);
                            out.print("</td>");                        
                            out.print("<td>");
                                out.print( disc.getNome() );
                            out.print("</td>");
                            out.print("<td class='text-center'>");
                                out.print( disc.getCargaHoraria() );
                            out.print("</td>");
                        out.print("</tr>");
                        index++;
                    }
                %>
                  
                </tbody>
            </table>
           
            </div>
        </div>
        
    </body>
</html>
