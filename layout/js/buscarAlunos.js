$(document).ready(function(){
       console.log("aqui")
       $('#select').on('change',function(){
              
              var selectValor = '#'+$(this).val();
              $('#pai').children('div').hide();
              $('#pai').children(selectValor).show();
       })

       
});

