$(document).ready(function(){
    
    $("#buscar-aluno").click(function(){ 
        
        $.ajax({
            type: "post",
            url: "/projetoEscola/pages/alunos/alunos.cfc?method=listaralunos", /* aqui retorna o json */
            data: {
                nomeCompleto: $("#cNome").val(),
                anoNascimento: $("#cAnoNascimento").val()
            },
            success: function (retornoJson) {
                /* se sucesso, o json vai ter a variavel RETORNO JSON ou outra que vc pedir */ 
                $.ajax({
                    type: "post",
                    url: "listarAlunos_div.cfm",
                    data: {qGetAlunos : retornoJson},
                    success: function (response) {
                        $("#tabela-aluno").html(response);
                    }
                });

            }
        });
        
    });

});