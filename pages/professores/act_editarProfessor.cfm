<cftry>
    <cfquery name="variables.qEditProfessor" datasource="#aplication.dsn#">
        update
            tb_professor
        set 
            nome = '#form.nome#',
            telefone = '#form.telefone#',
            endereco = '#form.endereco#'
        where
            idProf = #form.idProf#
    </cfquery>
    <!--- sucesso --->
    <cfset session.salvar.msg = "Dados do professor salvos com sucesso!">
    <cflocation  url="#application.nomeProjeto#/pages/professores/professores.cfm">

    <cfcatch type="any">
        <!--- com erro --->
        <cfinclude  template="#application.nomeProjeto#/pages/professores/professores.cfm">
    </cfcatch>
</cstry>


