<cfcomponent>
    <!--- Listar Alunos --->
    <cffunction name="listarAlunos" 
        returnreturnType="query" 
        access="remote" 
        returnFormat="json">
         
        <cfargument name="idAluno" required="false" type="numeric">
        <cfargument name="nomeCompleto" required="false" type="string">
        <cfargument  name="anoNascimento" required="false" type="string">
        <cfargument  name="intervalo" required="false" type="string">
        <cfquery name="variables.qGetAlunos" datasource="#application.dsn#">
            SELECT 
                alu.ID_ALUNO AS idAluno
                , alu.CPF_ALUNO AS cpf
                , alu.ENDERECO	
                , alu.MAT	AS matricula
                , alu.NOME_ALUNO AS nomeCompleto	
                , alu.TELEFONE 
                , alu.TURMA
                , alu.dt_nascimento as dtNascimento
            FROM 
                tb_alunos AS alu
            WHERE 0=0

            <cfif isDefined("arguments.idAluno")>
                AND ID_ALUNO = <cfqueryparam cfsqltype="cf_sql_numeric" value="#arguments.idAluno#"> 
            </cfif>
            <cfif isDefined("arguments.nomeCompleto") AND LEN(trim(arguments.nomeCompleto))>
                 AND alu.NOME_ALUNO LIKE <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.nomeCompleto#%">
            </cfif>
            <cfif 
                isDefined("arguments.anoNascimento") AND 
                len(trim(arguments.anoNascimento)) EQ 4
            >                
                AND year(dt_nascimento) = #arguments.anoNascimento#
            </cfif>   
            ORDER BY 
                turma ASC,
                nomeCompleto ASC
        </cfquery>
        
        <cfreturn variables.qGetAlunos>         
    </cffunction> 

    <!--- Inserir Aluno --->
    <cffunction name="inserirAlunos" returnreturnType="void">    

        <cfargument  name="cpf" required="true" type="numeric">
        <cfargument  name="mat" required="true" type="numeric">
        <cfargument  name="nomeCompleto" required="true" type="string">
        <cfargument  name="endereco" required="true" type="string">
        <cfargument  name="telefone" required="true" type="numeric">
        <cfargument  name="turma" required="true" type="string">
        <cfargument  name="dtNascimento" required="false" type="string">
        

        <cfquery datasource="#application.dsn#">
            INSERT INTO tb_alunos (        
                  cpf_aluno 
                , mat 
                , nome_aluno   
                , endereco
                , telefone
                , turma 
                , dt_nascimento 
            )VALUES(
                  <cfqueryparam cfsqltype="cf_sql_numeric" value="#arguments.cpf#" maxlength="11">
                , <cfqueryparam cfsqltype="cf_sql_numeric" value="#arguments.mat#" maxlength="10">
                , <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.nomeCompleto#" maxlength="60">
                , <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.endereco#" maxlength="100">
                , <cfqueryparam cfsqltype="cf_sql_numeric" value="#arguments.telefone#" maxlength="15">
                , <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.turma#" maxlength="2">
                , <cfqueryparam cfsqltype="cf_sql_date" value="#arguments.dtNascimento#">
                )       
        </cfquery>
        <cfreturn>
    </cffunction>

    <!--- Editar Alunos --->
    <cffunction name="editarAlunos" returnreturnType="void">

        <cfargument name="idAluno" required="true" type="numeric">
        <cfargument name="nomeCompleto" required="true" type="string">
        <cfargument name="endereco" required="true" type="string">
        <cfargument name="telefone" required="true" type="numeric">
        <cfargument name="turma" required="true" type="string">
        <cfargument name="dtNascimento" required="true" type="string">
               

        <cftry>
            <cfquery datasource="#application.dsn#">
                UPDATE
                    tb_alunos
                SET
                    nome_aluno = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.nomeCompleto#" maxlength="100">,
                    endereco = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.endereco#" maxlength="100">,
                    telefone = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.telefone#" maxlength="15">,
                    turma = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.turma#" maxlength="2">,
                    dt_nascimento = <cfqueryparam cfsqltype="cf_sql_date" value="#arguments.dtNascimento#">
                
                <cfif isDefined("arguments.idAluno")>
                    WHERE 0=0
                    AND ID_ALUNO = <cfqueryparam cfsqltype="cf_sql_numeric" value="#arguments.idAluno#">
                </cfif>
            </cfquery>

            <cfcatch type="any">
                <cfinclude  template="#application.nomeProjeto#/pages/alunos/erroBanco.cfm"> 
                <cfabort>
            </cfcatch>
        </cftry>
        
    </cffunction>

    <cffunction  name="deletarAluno" returnreturnType="void">

        <cfargument name="idAluno" required="true" type="numeric">
        
                <!--- excluir relacionamentos turma x aluno --->
            <cfquery datasource="#application.dsn#">
                DELETE FROM tb_turma_x_aluno
                WHERE                     
                    ID_ALUNO = <cfqueryparam cfsqltype="cf_sql_numeric" value="#arguments.idAluno#">                                        
            </cfquery>

            <!--- excluir aluno --->
            <cfquery datasource="#application.dsn#">
                DELETE FROM tb_alunos
                WHERE
                    ID_ALUNO = <cfqueryparam cfsqltype="cf_sql_numeric" value="#arguments.idAluno#">                    
            </cfquery>            
    </cffunction>
</cfcomponent>


