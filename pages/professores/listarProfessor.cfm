<main>
    <section class="container">
        <h2>Professores</h2>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div id="master" clas="col-md-4">
                <ul>
                    <li class="nav-item dropdown">
                        <select id="select" name="select" class="form-select">
                            <option value="">Selecione</option>
                            <option value="div1">Por nome</opition>
                            <option value="div2">Por ano de nascimento</opition>
                            <option>Por intervalo</option>
                        </select>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0"
                      id="form-adiciona"
                      method="post"
                      action="">
                      <div id="pai">
                            <div id="div1" class="col-md-6">
                                <input class="form-control mr-sm-2"
                                    type="text"
                                    arial-label="text"
                                    planceholder="Digite o Nome"
                                    id="cNome"
                                    nome="cNome">
                            </div>
                            <div id="div2" class="col-md-6">
                                <input class="form-control mr-sm-2"
                                    type="text"
                                    arial-label="text"
                                    placeholder="Digite o Nome"
                                    id="cAnoNascimento"
                                    name="cAnoNascimente">
                            </div>
                            <div id="div3" class="col-md-6">
                                <input class="form-control mr-sm-2"
                                    type="text"
                                    arial-label="text"
                                    placeholder="Digite o Nome"
                                    id="cIntervalo"
                                    name="cIntervalo">
                            </div>
                            <button type="button"
                                    id="buscar-professor"
                                    class="btn btn-primary">
                            </button>                      
                      </div>
                </form>
        </nav>
        <div id="tabela-professor"></div>
    </section>
</main>