<br><br>
<br><br>
<cfoutput>
  <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
</cfoutput> 
<nav class="navbar navbar-expand-lg navbar-light bg-light"> 
  <div id="master" class="col-md-4">   
    <ul class="navbar-nav mr-auto">                   
      <li class="nav-item dropdown">                    
        <select id="select" name="select" class="form-select">
          <option value="">Selecione</option>                     
          <option value="div1">Por nome</option>
          <option value="div2">Por ano de nascimento</option>
          <option value="div3">Por intervalo</option>
        </select>                   
      </li>        
    </ul>
    <form class="form-inline my-2 my-lg-0"
                id="form-adiciona" method="post" action="#application.nomeProjeto#/pages/alunos/alunos.cfm">
        <div id="pai">          
          <div id="div1" class="col-md-6">
            <input class="form-control mr-sm-2"
                   type="text" 
                   aria-label="date"
                   placeholder="Digite o nome" 
                   id="cNome"
                   name="cNome">
          </div>
          <div id="div2" class="col-md-6">
            <input class="form-control mr-sm-2"
                   type="text" 
                   aria-label="text"
                   placeholder="Digite a data" 
                   id="cDtNascimento"
                   name="cDtNascimento">
          </div>
          <div id="div3" class="col-md-6">  
            <input class="form-control mr-sm-2"
                   type="text" 
                   aria-label="text"
                   placeholder="Digite a data" 
                   id="cIntervalo"
                   name="cIntervalo"
                   >
          </div>
          
            <button 
              type="submit" 
              id="buscar-aluno" 
              class="btn btn-primary col-md-6">Buscar
            </button>
          </form>         
        </div>
  </div>          
</nav>


  
