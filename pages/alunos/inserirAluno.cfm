<cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
</cfoutput>
<cfoutput> 
<section class="container">
    <h2 id="titulo-form">Inserir aluno</h2>
    <form id="form-aluno"
          method="Post"
          action="#application.nomeProjeto#/pages/alunos/act_inserirAluno.cfm">

          <!--- CPF --->
          <div class="grupo">
            <label for="cpf">CPF:</label>
            <input type="number"
                   id="cCpf"                        
                   name="cCpf"
                   placeholder="Digite o CPF"
                   class="campo7"                  
                   >
        </div>

        <!--- MATRICULA --->
        <div class="grupo">
            <label for="mat">Matricula:</label>
            <input type="number"
                   id="cMat"
                   name="cMat"
                   placeholder="Digite a Matricula"
                   class="campo2"                  
                   >
        </div>

        <!--- NOME COMPLETO --->
        <div class="grupo">
            <label for="nomeCompleto">Nome Completo:</label>
            <input type="text"
                   id="cNome"
                   name="cNome"
                   placeholder="Digite o Nome Completo"
                   class="campo3"                  
                   >
        </div>

        <!--- Endereço --->
        <div class="grupo">
            <label for="endereço">Endereço:</label>
            <input type="text"
                   id="cEndereço" 
                   name="cEndereco"
                   placeholder="digite o Endereco"
                   class="campo4"                   
                   >
        </div>

        <!--- Telefone --->
        <div class="grupo">
            <label for="telefone">Telefone:</label>
            <input type="text"     
                   id="cTelefone" 
                   name="cTelefone"
                   placeholder="Digite o Telefone"
                   class="campo5"                  
                   >
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
            <input type="text" 
                   id="cTurma"
                   name="cTurma"
                   placeholder="digite a Turma"
                   class="campo7"                   
                   >
        </div>
                <input 
                    type="Submit" 
                    id="adicionar-aluno"
                    class="btn btn-success"                    
                    value="Inserir"  
                    >
                <input 
                    type="button" 
                    class="btn btn-secondary" 
                    value="Voltar e Corrigir" 
                    onclick="javascript:window.history.back();">            
    </form>
</section>
</cfoutput> 



