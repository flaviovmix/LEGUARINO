<%@page 
    import="escola.Disciplina"
    import="java.util.ArrayList"
    contentType="text/html" pageEncoding="UTF-8"
%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta 
            name="viewport"
            http-equiv="Content-Type" 
            content="width=device-width, initial-scale=1, text/html, charset=UTF-8"
        />
        
        <title>JSP Page</title>
        
        <link 
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
            rel="stylesheet" 
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
            crossorigin="anonymous"
        />
        
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
            </div>
        
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

            // Adicionar a nova disciplina
            Disciplina disciplina = new Disciplina();
            disciplina.setNome(nome);
            disciplina.setCargaHoraria(Integer.parseInt(cargaHoraria));
            vetDisciplina.add(disciplina);

            // Atualiza a lista no contexto
            context.setAttribute("vetDisciplina", vetDisciplina);

        %>  
        
        <div class="container">
            
            <h1>Lista de Disciplinas</h1>
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
                                out.print( disc.getNome());
                            out.print("</td>");
                            out.print("<td class='text-center'>");
                                out.print(disc.getCargaHoraria());
                            out.print("</td>");
                        out.print("</tr>");
                        index++;
                    }
                %>
                  
                </tbody>
            </table>
                
            <a 
                class="btn btn-primary" 
                href="cadastrardisciplica.jsp">
                    Cadastrar Disciplina
            </a>
                  
        </div>
    
    <script 
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" 
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" 
        crossorigin="anonymous">
    </script>
    
    <script 
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" 
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" 
        crossorigin="anonymous">
    </script>

  </body>
</html>
