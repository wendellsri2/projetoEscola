    <!--- caminho do css --->
<cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
</cfoutput> 
<cfquery name="variables.qGetProfessores" datasource="#application.dsn#">
    select 
        prof.ID_PROFESSOR as idProf
        , prof.CPF_PROFESSOR as cpf
        , prof.ENDERECO	
        , prof.NOME_PROF as nome	
        , prof.TELEFONE 
    from 
    	tb_professor as prof
    ORDER BY 
        nome ASC    
</cfquery>
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
                        <td>#ENDERECO#</td>
                        <td>#TELEFONE#</td>
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
