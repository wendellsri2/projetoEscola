<!--- contagem de atualização da pag. --->
<cfapplication name="projEscola" sessionmanagement="Yes" sessionTimeout="#CreateTimeSpan(0, 0, 5, 0)#">

<cfif isDefined("url.appreload")>
    <cfset structClear(session)>
    <cfset structClear(application)>
    aplicação reiniciada com sucesso!
    <cfabort>
</cfif>

<!--- variaveis de aplicacao --->
<cfif not isDefined("application.dataApp")>
    <cfset application.dataApp = now()>
    <cfset application.dsn = "bdEscola">
    
    <cfset application.nomeProjeto = "/projetoEscola">
    <cfset application.pastaLayout ="#application.nomeProjeto#/layout">
    <cfset application.layout.css = "#application.pastaLayout#/css">
    <cfset application.layout.img = "#application.pastaLayout#/img">
    <cfset application.layout.js =  "#application.pastaLayout#/js">

    <cfset application.msgTelefone = "Estamos Aberto: 61-993181364">
    <cfset application.msgEmail = "Entre em contato: wendellsri2@hotmail.com">
</cfif>
<!--- // fim variaveis aplicacao --->


<cfif not isDefined("session.dataInicio")>
    <cfset session.dataInicio = now()>
    <cfset application.contador = 0>
</cfif>

<cfif not isDefined("application.forceStatus")>
    <cfset application.forceStatus = false>
</cfif>

<cfset variables.hrAgora = hour(now())>

<cfif !application.forceStatus>
    <cfif 
        (variables.hrAgora gte 8 and variables.hrAgora lte 12) or 
        (variables.hrAgora gte 14 and variables.hrAgora lte 18)
    >
        <cfset application.isOpen = true>
    <cfelse>
        <cfset application.isOpen = false>
    </cfif>
</cfif>

<cfif isDefined("url.statusEscola")>
    <cfset application.forceStatus = true>

    <cfif url.statusEscola eq "fechar">
        <cfset application.isOpen = false>
    <cfelseif url.statusEscola eq "abrir">
        <cfset application.isOpen = true>
    <cfelse>
        <cfset application.forceStatus = false>
    </cfif>

</cfif>

<cfinclude template="cabecalho.cfm">
