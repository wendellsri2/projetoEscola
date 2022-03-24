<!--- seleção no banco --->
<cfset variables.qInsertAluno = createObject("component","alunos").inserirAlunos(
    cpf: form.cCpf,
    mat: form.cMat,
    nomeCompleto: form.cNome,
    endereco: form.cEndereco,
    telefone: form.cTelefone,
    turma: form.cTurma,
    dtNascimento: form.cDtNascimento
    )>
    
<cftry> 

    <!--- sucesso --->
    <cfset session.salvar.msg = "Dados do aluno inserido com sucesso!">
    <cflocation url="#application.nomeProjeto#/pages/alunos/alunos.cfm">    
   
    <cfcatch type="any">
        <!--- com erro --->  
        <cfinclude  template="#application.nomeProjeto#/pages/alunos/erroBanco.cfm">        
    </cfcatch>
</cftry> 




