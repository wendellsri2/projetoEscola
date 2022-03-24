
    <!--- seleção no banco --->
    <cfset variables.qDeletarAluno = createObject("component","alunos").deletarAluno(
        idAluno: form.cIdAluno
    )>
    <!--- sucesso --->
    <cfset session.salvar.msg = "Dados do aluno excluido com sucesso!">
    <cflocation url="#application.nomeProjeto#/pages/alunos/alunos.cfm">
    
        






