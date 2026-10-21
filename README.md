# Banco_de_dados

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minha Lojinha</title>

    <link rel="stylesheet" href="style.css">
</head>
<body>
    
    <header>
        <h1>Minha Loja</h1>
        <p>Escolha seus produtos!</p>
    </header>

    <main>
        <section class="produtos">
            <h2>Produtos Disponíveis</h2>
                <div class="produto">
                    <h3>Fone de Zoreia</h3>
                    <p>Preço: R$:89,90</p>

                    <button onclick="adicionarCarrinho('Fone de Zoreia', 89.90)">Adicionar ao Carrinho</button> 
            
                </div>

                <div class="produto">
                    <h3>Mouse sem fio</h3>
                    <p>Preço: R$:59,90</p>

                    <button onclick="adicionarCarrinho('Mouse sem fio', 59.90)">Adicionar ao Carrinho</button>
                </div>
        </section>

        <section class="carrinho">
            <h2>Meu carrinho</h2>

            <ul id="listaCarrinho"></ul>

            <p id="total">Total: R$:0,00</p>

            <button onclick="finalizarCompra()">Finalizar Compra</button>
            <button onclick="limparCarrinho()">Limpar Carrinho</button>
            
        </section>
    </main>

    <script src="script.js"></script>
</body>
</html>
