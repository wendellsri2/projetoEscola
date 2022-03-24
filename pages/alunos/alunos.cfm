<!--- caminho do css --->
<cfoutput>
  <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
  <script src="#application.layout.js#/buscarAlunos.js"></script>
</cfoutput> 

<!--- seleção no banco --->
<cfparam name="form.cNome" default="">
<cfparam name="form.cAnoNascimento" default="">
<cfparam name="form.cIntervalo" default="">
<cfset variables.qGetAlunos = createObject("component","alunos").listarAlunos(
  nomeCompleto: form.cNome,
  anoNascimento: form.cAnoNascimento,
  intervalo: form.cIntervalo
)>
<main>            
  <section class="container">
    <cfoutput>            
      <h2>Listar Alunos</h2>
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
                        aria-label="text"
                        placeholder="Digite o nome" 
                        id="cNome"
                        name="cNome">
                </div>
              <div id="div2" class="col-md-6">
                  <input class="form-control mr-sm-2"
                      type="date" 
                      aria-label="date"
                      placeholder="Digite a data" 
                      id="cAnoNascimento"
                      name="cAnoNascimento"
                      maxlength="4">
                </div>
              <div id="div3" class="col-md-6">  
                  <input class="form-control mr-sm-2"
                        type="text" 
                        aria-label="text"
                        placeholder="Digite a data" 
                        id="cIntervalo"
                        name="cIntervalo">
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
    </cfoutput>
    <table>
      <thead>
        <tr>
          <th>Turma</th>
          <th>Nome</th>                    
          <th>Matricula</th>
          <th>CPF</th>
          <th>Endereço</th>
          <th>Telefone</th>                     
          <th>Data de Nascimento</th>                 
          <th>Ações</th>   
        </tr>
      </thead>
      <tbody id="tabela-aluno">
        <cfoutput query="variables.qGetAlunos">
          <tr class="aluno" id="primeiro-aluno">
            <td>#turma#</td>
            <td>#nomeCompleto#</td>
            <td>#matricula#</td>				
            <td>#cpf#</td>
            <td>#endereco#</td>
            <td>#telefone#</td>
            <th>#LSDateFormat(dtNascimento, "dd/mm/yyyy")#</th>
            <td>                            
              <a href="#application.nomeProjeto#/pages/alunos/editarAluno.cfm?idEditAluno=#idAluno#"><img src="#application.layout.img#/acoes/edit.png" width="24px" alt="editar registro do aluno #nomeCompleto#"></a>                      
              <a href="#application.nomeProjeto#/pages/alunos/deleteAluno.cfm?idDelAluno=#idAluno#"><img src="#application.layout.img#/acoes/delete.png" width="24px" alt="deletar registro do aluno #nomeCompleto#"></a>
              <a href="#application.nomeProjeto#/pages/alunos/inserirAluno.cfm"><img src="#application.layout.img#/acoes/insert.png" width="24px"></a>                            
            </td>                        
          </tr>                    
        </cfoutput>
      </tbody>
    </table>               
  </section>
</main>
