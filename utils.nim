import objs
import strutils
import strformat

var
    m:int
    clientes:seq[Cliente]

proc linha() =
    echo "==========================================="


proc menu*() = 
    linha()
echo """
ACADEMIA MASTERGYM
[1] - CADASTRAR CLIENTE
[2] - BUSCAR CLIENTES
[3] - MUDAR SERVIÇOS 
[4] - SAIR
    """
proc adicionaCliente*() = 
    var cliente:Cliente = Cliente()
    linha()
    echo "CADASTRO CLIENTE"
    echo "NOME: "
    cliente.nome = readLine(stdin)
    echo "ENDERECO: "
    cliente.endereco = readLine(stdin)
    echo "TELEFONE: "
    cliente.telefone = readLine(stdin)

    echo """MODALIDADE:
    [1]- KARATE
    [2]- MUSCULACAO
    [3]- FUNCIONAL
            """
    echo "qual sua modalidade?: "
    m = parseInt(readLine(stdin))
    if m == 1:
        echo "\n qual sua altura: "
        cliente.altura = parseInt(readLine(stdin))
        echo "\n qual a cor da sua faixa: "    
        cliente.cordafaixa = readLine(stdin)
        linha()
    elif m == 2:
        echo "qual seu peso: "
        cliente.peso = parseFloat(readLine(stdin))
        echo "\n Hipertrofia muscular, Resistência Muscular, Potência muscular, Força muscular ou HIT: "    
        cliente.tipo = readLine(stdin)
        linha()

    elif m == 3:
        echo "\n Dieta(Normal, vegetariana ou vegana): "
        cliente.dieta = readLine(stdin)
        echo "\n estilo musical:  "    
        cliente.musica = readLine(stdin)
        linha()
        cliente.modalidade = readLine(stdin)
        clientes.add(cliente)
        echo "Cliente cadastrado com sucesso!!"
        linha()
    else:
        echo "opcao invalida 01"
        linha()

proc consultacliente*() = 
    echo """
    [1]- consulta por nome
    [2]- consulta por categoria
    """