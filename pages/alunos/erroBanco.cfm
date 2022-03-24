<br><br><br><br><br>
<section class="container">
    <h2 id="titulo-form">Houve um erro!</h2>
    <ul id="mensagens-erro">
        <cfoutput>
            <li>#cfcatch.message#</li>
            <cfif isDefined("cfcatch.cause.message")>
                <li>#cfcatch.cause.message#</li>
            </cfif>
        </cfoutput>
    </ul>
    <input 
        type="button" 
        class="btn btn-danger" 
        value="Voltar e Corrigir" 
        onclick="javascript:window.history.back();">
    <br /><br />
</section>
