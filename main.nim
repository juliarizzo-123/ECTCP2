
import utils
import strutils
import strformat

var x:int

while x != 4:

    menu()
    var x = readline(stdin)

    case x
    of "1": adicionaCliente()
    of "2": consultacliente()
    #   of "3": mudaservico()
    of "4": echo "ate a proxima!!!!!"
    else:
        echo "Opção inválida"
    # break    


