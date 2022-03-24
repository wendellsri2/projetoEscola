<!--- caminho do css --->
<cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.layout.css#/tabelas.css">
    <script src="#application.layout.js#/buscarProfessores.js"></script>
</cfoutput> 
<main>
    <section class="container">
        <h2>Professores</h2>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div id="master" clas="col-md-4">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <select id="select" name="select" class="form-select">
                            <option value="">Selecione</option>
                            <option value="div1">Por nome</opition>
                            <option value="div2">Por ano de nascimento</opition>
                            <option value="div3">Por intervalo</option>
                        </select>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0"
                      id="form-adiciona"
                      method="post"
                      action="">                      
                      <div id="pai">
                            <div id="div1" class="col-md-12">
                                <input class="form-control mr-sm-2"
                                    type="text"
                                    arial-label="text"
                                    placeholder="Digite o Nome"
                                    id="cNome"
                                    nome="cNome">
                            </div>
                            <div id="div2" class="col-md-6">
                                <input class="form-control mr-sm-2"
                                    type="text"
                                    arial-label="date"
                                    placeholder="Digite a data"
                                    id="cAnoNascimento"
                                    name="cAnoNascimente">
                            </div>
                            <div id="div3" class="col-md-6">
                                <input class="form-control mr-sm-2"
                                    type="text"
                                    arial-label="text"
                                    placeholder="Digite a data"
                                    id="cIntervalo"
                                    name="cIntervalo">
                            </div>
                            <button type="button"
                                    id="buscar-professor"
                                    class="btn btn-primary col-md-6">Buscar
                            </button>                        
                      </div>
                </form>
            </div>
        </nav>
        <div id="tabela-professor"></div>
    </section>
</main>