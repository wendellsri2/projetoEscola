    <!--- caminho do css --->
    <cfoutput>
        <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
    </cfoutput> 
    
    <!--- referencia ao componete deletar aluno --->
    <cfset variables.qDeleteAluno = createObject("component","alunos").listarAlunos(
        idAluno: url.idDelAluno
    )>
    
    <cfoutput query="variables.qDeleteAluno">
        <section class="container">
            <h2 id="titulo-form">Deletar dados aluno</h2>
            <ul id="mensagens-erro"></ul>
            <form id="form-aluno" 
                  action="#application.nomeProjeto#/pages/alunos/act_deletAluno.cfm" method="Post">
    
                <!--- ID ALUNO --->
                <input type="hidden"
                       id="cIdAluno"
                       name="cIdAluno"
                       class="campo1"
                       value="#idAluno#">
    
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
                    <label for="endereço"> Endereço:</label>
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
                        type="text"     
                        id="cTelefone" 
                        name="cTelefone"
                        placeholder="Digite o telefone"
                        value="#TELEFONE#"
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
                        value="#TURMA#"
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