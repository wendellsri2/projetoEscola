$(document).ready(function(){
    var dataAtual = new Date();
    var anoFinal = dataAtual.getFullYear() - 10;
    var anoInicial = anoFinal - 12;



    $("#cDtNascimento").datepicker({      
        yearRange: anoInicial+ ':' +anoFinal,    
        language: 'pt-BR',    
        changeYear: true,
        changeMonth: true,    
        dateFormat: 'dd/mm/yy',
        dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
        dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
        dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
        monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
        monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
        nextText: 'Próximo',
        prevText: 'Anterior'
    });
    
    $("#cIntervalo").daterangepicker({ 

        linkedCalendars: false,
        autoApply: true,
        minYear: 2000,
        maxYear: 2012,
        showDropdowns: true,
        
        "locale": {
        "format": "DD/MM/YYYY",
        "separator": " - ",
        "applyLabel": "Aplicar",
        "cancelLabel": "Cancelar",
        "fromLabel": "De",
        "toLabel": "Até",
        "customRangeLabel": "Custom",
        "daysOfWeek": [
            "Dom",
            "Seg",
            "Ter",
            "Qua",
            "Qui",
            "Sex",
            "Sáb"
        ],
        "monthNames": [
            "Janeiro",
            "Fevereiro",
            "Março",
            "Abril",
            "Maio",
            "Junho",
            "Julho",
            "Agosto",
            "Setembro",
            "Outubro",
            "Novembro",
            "Dezembro"
        ],
        "firstDay": 0
      }
    
        
      }, function(start, end){
        start.format('dd/mm/yy') + 'to' + end.format('dd/mm/yy')
});

      
});


