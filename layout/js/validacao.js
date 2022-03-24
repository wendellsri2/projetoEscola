$(function(){
    
    $.validator.addMethod("noSpace", function(value, element){
        return value == '' || value.trim().length !=0
    }, "Não é permitido dar vários espaços!");    

    $.validator.addMethod('celular', function (value, element) {
        value = value.replace("(","");
        value = value.replace(")", "");
        value = value.replace("-", "");
        value = value.replace(" ", "").trim();
        if (value == '0000000000') {
            return (this.optional(element) || false);
        } else if (value == '00000000000') {
            return (this.optional(element) || false);
        } 
        if (["00", "01", "02", "03", , "04", , "05", , "06", , "07", , "08", "09", "10"].indexOf(value.substring(0, 2)) != -1) {
            return (this.optional(element) || false);
        }
        if (value.length < 10 || value.length > 11) {
            return (this.optional(element) || false);
        }
        if (["6", "7", "8", "9"].indexOf(value.substring(2, 3)) == -1) {
            return (this.optional(element) || false);
        }
        return (this.optional(element) || true);
    }, 'Informe um telefone válido!'); 

    $.validator.addMethod("cpf", function(value, element){
        value = $.trim(value);

        value = value.replace('.', '');
        value = value.replace('.','');
        cpf = value.replace('-','');

        while(cpf.length <11) cpf = "0"+ cpf;
        var expReg = /^0+$|^1+$|^2+$|^3+$|^4+$|^5+$|^6+$|^7+$|^8+$|^9+$/;
        var a = [];
        var b = new Number;
        var c = 11;

        for (i=0; i<11; i++){
            a[i] = cpf.charAt(i);
            if (i < 9) b += (a[i] * --c);
        }
        if ((x = b % 11) < 2) {a[9] = 11-x}
        b = 0;
        c = 11;
        for (y=0; y<10; y++) b += (a[y] * c--);
        if ((x = b % 11) < 2) { a[10] = 0; } else { a[10] = 11-x; }

        var retorno = true;
        if ((cpf.charAt(9) != a[9]) || (cpf.charAt(10) != a[10]) || cpf.match(expReg)) retorno = false;

        return this.optional(element) || retorno;
    }, 'Informe um CPF válido!');

    

    var $registrarForm = $("#form-aluno")
    if($registrarForm.length){
        $registrarForm.validate({
            rules:{
                cCpf:{
                    required: true,
                    noSpace: true,
                    cpf: true
                },
                cMat:{
                    required: true,
                    noSpace: true
                },
                cNome:{
                    required: true,
                    noSpace: true
                },
                cEndereco:{
                    required: true,
                    noSpace: true
                },
                cTelefone:{
                    required: true,
                    noSpace: true,
                    celular: true
                },
                cTurma:{
                    required: true,
                    noSpace: true
                }
                },
                
                messages:{
                        cCpf:{
                            required: 'Digite o CPF corretamente!',
                            cpf: 'CPF inválido!'
                        },
                        cMat:{
                            required: 'Digite a matricula!'
                        },
                        cNome:{
                            required: 'Digite o nome completo!'
                        },
                        cEndereco:{
                            required: 'Digite o endereço!'
                        },
                        cTelefone:{
                            required: 'Digite o telefone corretamente!'
                        },
                        cTurma:{
                            required: 'Digite a turma corretamente!'
                        },
                }       
                            
            })
        }
})


