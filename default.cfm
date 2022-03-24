<cfoutput>
    <link rel="stylesheet" type="text/css" href="#application.layout.css#/carrossel.css"> 
</cfoutput>   
<main>
    <section>
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-interval="5000" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="#application.layout.img#/images.jpg" class="d-block w-100 imagem-carrossel-um" alt="...">
                    <div class="carousel-caption d-none d-md-block h-50">
                        <h1 class="fonte-titulo display-4">Tradição em Ensino!</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="#application.layout.img#/content_loader.jpg" class="d-block w-100 imagem-carrossel-dois" alt="...">
                    <div class="carousel-caption d-none d-md-block h-50">
                        <h1 class="fonte-titulo display-4">A melhor estrutura!</h1>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>    
    <section id="titulo">
        <h1 class="text-center fonte-titulo cor-especial pt-5">Novo conceito de Ensino</h1>
        <p class="text-center fonte-titulo text-secondary pb-5">O futuro do seus filhos em nossas mãos!</p>
    </section>
    <cfoutput>
        <section class="container-fluid bg-light" id="cadastros">  
            <div class="row justify-content-center">             
                <article class="card borda-cor-especial card-largura p-0 m-4 col-12 col-md-4">
                    <img src="#application.layout.img#/download2.jpg" class="card-img-top card-posicao-imagem">
                    <div class="card-body">
                        <h5 class="card-title">Professores</h5>
                        <p class="card-text">Os melhores profissionais do mercado!</p>
                        <a href="#application.nomeProjeto#/pages/professores/professores.cfm" class="btn botao-cor-especial">Listar</a>
                    </div>
                </article>
                <article class="card borda-cor-especial card-largura p-0 m-4 col-12 col-md-4">
                    <img src="#application.layout.img#/download1.jpg" class="card-img-top card-posicao-imagem">
                    <div class="card-body">
                        <h5 class="card-title">Alunos</h5>
                        <p class="card-text">Faça parte do nosso incrivel historia para o futuro!</p>
                        <a href="#application.nomeProjeto#/pages/alunos/alunos.cfm" class="btn botao-cor-especial">Listar</a>
                    </div>
                </article>
            </div>            
        </section>
    </cfoutput>
  </main> 