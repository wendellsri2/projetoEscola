<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Colegio Saboia</title>
        
        <!--- aqui inicia css --->
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">        
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />       
        <cfoutput>
            <!--- aqui CF--->
            <link rel="stylesheet" type="text/css" href="#application.layout.css#/carrossel.css">            
        </cfoutput>                
        <!--- aqui termina css --->


        <!--- aqui começa o javaScript --->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!--- jquery daterangerpiker --->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <!--- jquery daterangerpiker --->
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>        
        
        <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
        <cfoutput>
            <script src="#application.layout.js#/validacao.js"></script>
            <script src="#application.layout.js#/calendario.js"></script>
            <script src="#application.layout.js#/buscar.js"></script>
            <script src="#application.layout.js#/listarAlunos.js"></script>

        </cfoutput>
        <!--- aqui termina o javaScript --->
        
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
                <ul class="container-fluid">
                    <li>
                        <cfoutput>
                            <a class="navbar-brand fonte-titulo cor-especial" href="##">
                                Colegio Saboia - #lsDateFormat(session.dataInicio, "dd/mm/YYYY")# #lsTimeFormat(session.dataInicio, "HH:mm:ss")# (#application.contador#)
                            </a>
                        </cfoutput>
                    </li>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                            <cfoutput>
                                <li><a class="nav-link active" aria-current="page" href="#application.nomeProjeto#/default.cfm">Ininio</a></li>
                                <li><a class="nav-link" href="#application.nomeProjeto#/pages/alunos/alunos.cfm">Alunos</a></li>
                                <li><a class="nav-link" href="#application.nomeProjeto#/pages/alunos/listaAlunos.cfm">Lista de alunos</a></li>
                                <li><a class="nav-link" href="#application.nomeProjeto#/pages/professores/professores.cfm"> Professores</a></li>                                
                            </cfoutput>              
                        </div>
                    </div>
                </ul>
            </nav>
        </header>        
        
        <cfif isDefined("session.salvar.msg")>
            <cfoutput>
                #session.salvar.msg#
            </cfoutput>
            <cfset structClear(session.salvar)>
            <br />
        </cfif>
