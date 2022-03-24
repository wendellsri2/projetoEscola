   <!--- caminho do css --->
<cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
</cfoutput>

<!--- referencia ao componete deletar professor --->
<cfset vaiables.qDeleteProfessor = createObject("component", "professores").listarProfessores()>

<cfoutput>
    <section class="container">
        <h2 id="titulo-form">Deletar os dados professor</h2>
        <ul id="mensagens-erro"></ul>
        <form id="form-professor" 
            action="" method="Post">

            <!--- ID Professor --->
            <input type="hidden"
                id="cIdProfessor"
                name="cIdProfessor"
                class="campo1"
                value="#idProfessor#">

            <!--- Nome --->
            <div class="grupo">
                <label for="nomeCompleto">Nome Completo:</label>
                <input type="text"
                    id="cNome"
                    name="cNome"
                    placeholder="digite o Nome"
                    class="campo3"
                    value="#nome#"
                    >
            </div>
            
            <!--- Endereço --->
            <div class="grupo">
                <label for="endereço">Endereço:</label>
                <input type="text"
                    id="cEndereco" 
                    name="cEndereco"
                    placeholder="digite o Endereco"
                    class="campo4"
                    value="#endereco#"
                    >
            </div>

            <!--- Telefone --->
            <div class="grupo">
                <label for="telefone">Telefone:</label>
                <input 
                    type="text"     
                    id="cTelefone" 
                    name="cTelefone"
                    placeholder="Digite o telefone"
                    value="#telefone#"
                    class="campo5"
                    >
                </div>
                    

            <!--- Turma --->
            <div class="grupo">
                <label for="cTurma">Turma:</label>
                <input 
                    type="text" 
                    id="cTurma"
                    name="cTurma"
                    placeholder="Digite a Turma"
                    class="campo7"
                    value="#turma#"
                    >
            </div>
            <button 
                type="submit" 
                id="adicionar-aluno" 
                class="btn btn-danger">Deletar
            </button>
            <button 
                type="submit" 
                class="btn btn-secondary" 
                onclick="volta">Voltar                
            </button>            
        </form>
    </section>
</cfoutput>