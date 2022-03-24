
    <footer class="bg-secondary p-3">
        <p class="text-light m-0 text-center">
            <cfoutput>
                <cfif application.isOpen eq true>
                    #application.msgTelefone#
                <cfelse>
                    #application.msgEmail#
                </cfif>
            </cfoutput>
        </p>
    </footer>  
   
    <cfset application.contador = application.contador + 1>   

</body>
</html>


