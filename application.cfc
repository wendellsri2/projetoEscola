component {
    this.name = "projEscola";
    this.sessionmanagement = true;
    this.sessionTimeout = CreateTimeSpan(0, 0, 5, 0);
    this.datasource = "bdEscola";
    this.serialization.preservecaseforstructkey = true;
    this.serialization.serializeQueryAs = "struct";

    function onApplicationStart(){
        application.dataApp = now();
        application.dsn = "bdEscola";
        
        application.nomeProjeto = "/projetoEscola";
        application.pastaLayout ="#application.nomeProjeto#/layout";
        application.layout.css = "#application.pastaLayout#/css";
        application.layout.img = "#application.pastaLayout#/img";
        application.layout.js =  "#application.pastaLayout#/js";

        application.msgTelefone = "Estamos Aberto: 61-993181364";
        application.msgEmail = "Entre em contato: wendellsri2@hotmail.com";

        application.forceStatus = false;
    }
    
    function OnCFCRequest(string cfc, string method, struct args){
        var o = createObject("component", cfc);
        var metadata = getMetadata(o[ARGUMENTS.method]);

        if (structKeyExists(metadata, "access") && metadata.access == "remote"){
            return invoke(o, ARGUMENTS.method, ARGUMENTS.args);
        }else{
            throw(type="InvalidMethodException", message="Invalid method called", detail="The method #method# does not exists or is inaccessible remotely");
        }
    }

    function onSessionStart() {
        session.dataInicio = now();
        application.contador = 0;
    }

    function onRequestStart(targetPage) {

        if ( isDefined("url.appreload") ) {
            this.onApplicationStart();
            this.onSessionStart();
            writeOutput("apicacao reiniciada com sucesso");
            abort;
        }

        variables.hrAgora = hour(now());

        if (!application.forceStatus) {
            if (
                (variables.hrAgora gte 8 and variables.hrAgora lte 12) or 
                (variables.hrAgora gte 14 and variables.hrAgora lte 18)
            ) {
                application.isOpen = true;
            } else {
                application.isOpen = false;
            }                
        }

        if (isDefined("url.statusEscola")){
            application.forceStatus = true;        
            if (url.statusEscola eq "fechar"){
                application.isOpen = false;
            } else if (url.statusEscola eq "abrir"){
                application.isOpen = true;
            } else {
                application.forceStatus = false;
            }        
        }
        
    }

    function onRequest(targetPage) {
        include "cabecalho.cfm";
        include targetPage;
        //include "rodape.cfm";
    }

}