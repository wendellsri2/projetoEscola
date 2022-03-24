<br><br>
<br><br>
<br><br>
<br><br>

MINHA VARIAVEL

<cfset session.nome = "luiz">

<cfoutput>
    #session.NOME#
</cfoutput>
<!---

    APPLICATION = SAO VARIAVEIS QUE PRECISAM DURAR DURANTE TODA A APLICACAO.
    SESSION = IGUAL PARA BANCOS, SAO VARIAVEIS QUE PRECISAM DURAR DETERMINADO MINUTO;HORA;...
    FORM = SAO AS VARIAVEIS QUE VEM DE FORMULARIOS.
    URL = SAO VARIAVEIS QUE SAO PASSADAS PELA URL = WWW.COM.BR/ ? PRIMEIRAVARIAVEL & SEGUNDAVARIAVEL
    VARIABLES = SAO VARIAVEIS QUE SO EXISTEM ENQUANTO A PAGINA ESTA SENDO PROCESSADA.

--->
CREATE TABLE TB_ALUNOS (
				ID_ALUNO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
				CPF_ALUNO VARCHAR(11) NOT NULL,
                MAT VARCHAR(100) NOT NULL,
                NOME_ALUNO VARCHAR(100) NOT NULL,
                ENDERECO VARCHAR(250) NOT NULL,
                TELEFONE CHAR(14) NOT NULL,
                TURMA VARCHAR(20) NOT NULL
                                             
); 
<cfquery 
name = "query name" 
dataSource = "data source name" 
...other attributes... 
SQL STATEMENT column_name = 
<cfqueryparam value = "parameter value" 
CFSQLType = "parameter type" 
list = "yes|no" 
maxLength = "maximum parameter length" 
null = "yes|no" 
scale = "number of decimal places" 
separator = "separator character"> 
AND/OR ...additional criteria of the WHERE clause...> 
</cfquery>

INSERT INTO TB_ALUNOS (
ID_ALUNO,
CPF_ALUNO,
MAT,
NOME_ALUNO,
ENDERECO,
TELEFONE,
TURMA
) VALUES
(1,
'03323456511',
'1078680',
'João Carlos', 
'Rua Alberto 16',
'6132345670',
'A'
);

(#Form.Emp_ID#, '#Form.FirstName#', 
'#Form.LastName#', #Form.Dept_ID#, 
'#Form.StartDate#', #Form.Salary#, '#Form.Contract#') 
</cfquery> 

<html> 
    <head> 
    <title>Insert Data Form</title> 
    </head> 
    <body> 
    <h2>Insert Data Form</h2> 
    <table> 
    <!--- begin html form; 
    put action page in the "action" attribute of the form tag. ---> 
    <form action="insert_action.cfm" method="post"> 
    <tr> 
    <td>Employee ID:</td> 
    <td><input type="text" name="Emp_ID" size="4" maxlength="4"></td> 
    </tr> 
    <tr> 
    <td>First Name:</td> 
    <td><input type="Text" name="FirstName" size="35" maxlength="50"></td> 
    </tr> 
    <tr> 
    <td>Last Name:</td> 
    <td><input type="Text" name="LastName" size="35" maxlength="50"></td> 
    </tr> 
    <tr> 
    <td>Department Number:</td> 
    <td><input type="Text" name="Dept_ID" size="4" maxlength="4"></td> 
    </tr> 
    <tr> 
    <td>Start Date:</td> 
    <td><input type="Text" name="StartDate" size="16" maxlength="16"></td> 
    </tr> 
    <tr> 
    <td>Salary:</td> 
    <td><input type="Text" name="Salary" size="10" maxlength="10"></td> 
    </tr> 
    <tr> 
    <td>Contractor:</td> 
    <td><input type="checkbox" name="Contract" value="Yes" checked>Yes</td> 
    </tr> 
    <tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" 
    value="Clear Form"></td> 
    </tr> 
    </form> 
    <!--- end html form ---> 
    </table> 
    </body> 
    </html>