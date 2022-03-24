    <!--- caminho do css --->
<cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
</cfoutput> 

<!--- seleção no banco --->
<cfset variables.qEditAluno = createObject("component","alunos").listarAlunos(
    idAluno: url.idEditAluno
)>

<cfoutput query="variables.qEditAluno">
    <section class="container">
        <h2 id="titulo-form">Editar aluno</h2>
        <ul id="mensagens-erro"></ul>
        <form 
            id="form-aluno" 
            action="#application.nomeProjeto#/pages/alunos/act_editarAluno.cfm" 
            method="Post">

            <!--- ID ALUNO --->
            <input type="hidden"
                   id="cIdAluno"
                   name="cIdAluno"
                   class="campo1"
                   value="#idAluno#"
                   >
                   
            <!--- NOME COMPLETO --->
            <div class="grupo">
                <label for="nomeCompleto">Nome Completo:</label>
                <input type="text"
                       id="cNome"
                       name="cNome"
                       placeholder="digite o Nome"
                       class="campo3"
                       value="#nomeCompleto#"
                       >
            </div>

            <!--- Endereço --->
            <div class="grupo">
                <label for="endereco"> Endereço:</label>
                <input 
                    type="text"
                    id="cEndereco" 
                    name="cEndereco"
                    placeholder="digite o Endereco"
                    class="campo4"
                    value="#ENDERECO#"
                    >
            </div>

            <!--- Telefone --->
            <div class="grupo">
                <label for="telefone">Telefone:</label>
                <input 
                    type="number"     
                    id="cTelefone" 
                    name="cTelefone"
                    placeholder="digite o telefone"
                    value="#TELEFONE#"
                    class="campo5">
            </div>
            
            <!--- Dt Nascimento --->
        <div class="grupo">
            <label for="dtNascimento">Data de Nascimento:</label>
            <input type="text"     
                   id="cDtNascimento" 
                   name="cDtNascimento"
                   placeholder="Digite a data de Nascimento"
                   class="campo6"                  
                   >
        </div>

            <!--- Turma --->
            <div class="grupo">
                <label for="turma">Turma:</label>
                <input 
                    type="text" 
                    id="cTurma"
                    name="cTurma"
                    placeholder="digite a Turma"
                    class="campo7"
                    value="#TURMA#"
                    >
            </div>

            <button 
                type="submit" 
                id="adicionar-aluno" 
                class="botao bto-principal">Editar
            </button>
            
            <button 
                type="submit" 
                class="btn btn-secondary" 
                onclick="volta">Voltar                
            </button>            
        </form>
    </section>
</cfoutput>

.