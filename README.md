# NFT-de-Caveiras

Utilizar o Solidity para desenvolver um token NFT no padrão ERC-721, simulando um jogo de batalhas entre "Caveiras Fumantes".

## Ferramentas

- Solidity
- Ganache
- RemixIDE
- Metamask
- IPFS

## Atividades

- Implementar o token ERC-721
- Publicar na blockchain
- Realizar "batalhas" com as Caveiras
- Transferir NFT entre contas

## IPFS

Carregar o IPFS desktop e subir duas imagens:

- [CaveiraFumante1.png](CaveiraFumante1.png)
- [CaveiraFumante2.png](CaveiraFumante2.png)

## Ganache

Criar no Ganache um novo workspace (ex. NFT-DIO).

## Conectar o RemixIDE ao Blockchain local

Conectar o RemixIDE ao Blockchain local via carteira Metamask

- Network Name: NFT-DIO
- RPC URL: http://127.0.0.1:7531
- ChainID: 1337
- Current Symbol: ETH

Importar 3 contas do Ganache para a carteira do Metamask.

Em permissões, dar permissão para as 3 contas na rede acima.

## Criar e compilar o contrato

Com base no contrato [CaveiraDIO.sol](CaveiraDIO.sol), criar um arquivo no Remix com mesmo nome e inserir o contrato nele.

Passo seguinte é compilar o contrato.

## Deploy do contrato

Utilizar o Account 01 para o deploy do contrato.

## Criando NFT de Caveiras

Use a função `createNewCaveira` e informe:

- _name: `Caveira Fumante 1`
- _to: Endereço do Account 01 (owner)
- _img: Endereço IPFS da CaveiraFumante1.png

Clicar então em `transact`

Repetir a criação para a `Caveira Fumante 2`.

## Testar o game

Fazer a transferência da `Caveira Fumante 2` que é do Account 01 para o Account 02.

Executar as transações de batalha entre as duas caveiras.
