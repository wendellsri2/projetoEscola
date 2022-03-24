$(document).ready(function () {
    $("#buscar-professor").click(function(){ 
        
        $.ajax({
            type: "post",
            url: "/projetoEscola/pages/alunos/alunos.cfc?method=listaralunos",
            data: "data",
            dataType: "dataType",
            success: function (response) {
                
            }
        });
        
    });
});