<!--- seleção no banco --->
<cfset variables.salvaAluno = createObject("component","alunos").editarAlunos(
    idAluno: form.cIdAluno,
    nomeCompleto: form.cNome,
    endereco: form.cEndereco,
    telefone: form.cTelefone,
    turma: form.cTurma,
    dtNascimento: form.cDtNascimento

)>

<!--- sucesso --->
<cfset session.salvar.msg = "Dados do aluno salvos com sucesso!">
cfm">
<cflocation url="#application.nomeProjeto#/pages/alunos/alunos.cfm">




