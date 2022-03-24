    <!--- caminho do css --->
    <cfoutput>
        <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
    </cfoutput>
    <cfquery nome="variables.qEditProfessor" datasource="#application.dsn#">
        SELECT 
            prof.id_professor as id_prof
            , prof.cpf_professor as cpf
            , prof.nome_prof as nome
            , prof.endereco
            , prof.telefone
        FROM tb_professor as prof
        WHERE 
    </cfquery>