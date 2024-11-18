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
        
    </head>
    <body>  
        <div class="container">
        
            <h1>Cadastrar Disciplica</h1>
        
            <form method="post" action="listardisciplica.jsp">
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

                    <div class="col-2">
                        <br>
                        <input 
                            class="btn btn-primary " 
                            style="width: 150px;" 
                            type="submit" 
                            name="enviar" 
                            value="Salvar" 
                        /> 
                    </div>

                </div>
            </form>
        </div>
        
    </body>
</html>
