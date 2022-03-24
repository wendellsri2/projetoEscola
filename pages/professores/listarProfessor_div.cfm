
<table>
    <thead>
      <tr>
        <th>Turma</th>
        <th>Nome</th>        
        <th>CPF</th>
        <th>Endereço</th>
        <th>Telefone</th>
        <th>Data de Nascimento</th>
        <th>Ações</th>
      </tr>
    </thead>
    <tbody id="tabela-professor">
        <cfoutput>
            <cfloop array="#variables.qGetProfessores#" index="iProfessor">            
                <tr class="professor" id="primeiro-professor">
                    <td>#iProfessor.turma#</td>
                    <td>#iProfessor.nome#</td>                    		
                    <td>#iProfessor.cpf#</td>
                    <td>#iProfessor.endereco#</td>
                    <td>#iProfessor.telefone#</td>
                    <th>#LSDateFormat(iProfessor.dtNascimento, "dd/mm/yyyy")#</th>
                    <td>                            
                        <a href=""><img src="" width="24px" alt=""></a>                      
                        <a href=""><img src="" width="24px" alt=""></a>
                        <a href=""><img src="" width="24px"></a>                            
                    </td>                        
                </tr>                    
            </cfloop>
        </cfoutput>
    </tbody>
  </table>