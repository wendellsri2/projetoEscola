<cfset variables.qGetAlunos = DeserializeJSON(form.qGetAlunos)>

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
        <cfoutput>
            <cfloop array="#variables.qGetAlunos#" index="iAluno">            
                <tr class="aluno" id="primeiro-aluno">
                    <td>#iAluno.turma#</td>
                    <td>#iAluno.nomeCompleto#</td>
                    <td>#iAluno.matricula#</td>				
                    <td>#iAluno.cpf#</td>
                    <td>#iAluno.endereco#</td>
                    <td>#iAluno.telefone#</td>
                    <th>#LSDateFormat(iAluno.dtNascimento, "dd/mm/yyyy")#</th>
                    <td>                            
                        <a href="#application.nomeProjeto#/pages/alunos/editarAluno.cfm?idEditAluno=#iAluno.idAluno#"><img src="#application.layout.img#/acoes/edit.png" width="24px" alt="editar registro do aluno #iAluno.nomeCompleto#"></a>                      
                        <a href="#application.nomeProjeto#/pages/alunos/deleteAluno.cfm?idDelAluno=#iAluno.idAluno#"><img src="#application.layout.img#/acoes/delete.png" width="24px" alt="deletar registro do aluno #iAluno.nomeCompleto#"></a>
                        <a href="#application.nomeProjeto#/pages/alunos/inserirAluno.cfm"><img src="#application.layout.img#/acoes/insert.png" width="24px"></a>                            
                    </td>                        
                </tr>                    
            </cfloop>
        </cfoutput>
    </tbody>
  </table>