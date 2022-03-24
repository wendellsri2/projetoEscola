    <!--- caminho do css --->
<cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
</cfoutput> 
<main>
    <section class="container">
        <h2>Professores</h2>
        <label for="filtrar-tabela">Buscar:</label>
        <input type="text" name="filtro" id="filtrar-tabela" 
        placeholder="">
        <table>
            <thead>
                <tr>
                    <th>Nome</th>                    
                    <th>CPF</th>
                    <th>Endereço</th>
                    <th>Telefone</th>
                    <th>Ações</th>                    
                </tr>
            </thead>
            <tbody id="tabela-professor">
                <cfoutput query="variables.qGetProfessores">
                    <tr class="professor" id="primeiro-professor">
                        <td>#nome#</td>			
                        <td>#cpf#</td>
                        <td>#endereco#</td>
                        <td>#telefone#</td>
                        <td>
                            <a href="#application.nomeProjeto#/pages/professores/eitarProfessor.cfm?idEditProfessor=#idProf#"><img src="#application.layout.img#/acoes/edit.png" width="24px" alt="editar registro do aluno #nome#"></a>
                            
                            <a><img src="#application.layout.img#/acoes/delete.png" width="24px" alt="deletar registro do aluno #nome#"></a>
                        </td>                        
                    </tr>
                </cfoutput>                
            </tbody>
        </table>        
    </section>
</main>
