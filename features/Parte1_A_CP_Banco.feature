# Feature: Aumento de Cupo de la Tarjeta de Crédito

#    Como usuario de Banco Santander
#    quiero poder solicitar el Aumento de Cupo
#    de mi Tarjeta de Crédito

#    Scenario Outline: Solicitud exitosa de Aumento de Cupo
#       Given Abro la pagina web "https://www.santander.cl/"
#       And Ingreso con Rut valido <Rut>
#       And Ingreso con la clave valida <Clave>
#       And Realizo Click en Ingresar
#       And Valido que se muestre la pagina principal del Banco
#       When Realizo Click en Tarjeta de Credito <TarjetaCredito>
#       And Realizo Click en Aumento de Cupo
#       And Selecciono la tarjeta de Credito
#       And Ingreso el Mail de contacto <Email>
#       And Ingreso el Telefono Fijo <CodigoFijo> <TelefFijo>
#       And Ingreso el Teléfono Celular <CodigoCelular> <TelefCelular>
#       And Realizo Click en Enviar
#       Then Se muestra el mensaje <Mensaje>

#       Examples:
#          | Rut          | Clave  | TarjetaCredito | Email               | CodigoFijo | TelefFijo   | CofigoCelular | TelefCelular | Mensaje                        |
#          | "23455627-8" | "3245" | "XXXX-5587"    | "mhondar@gmail.com" | ""         | ""          | "09"          | "123456789"  | "Su solicitud ha sido enviada" |
#          | "12345560-6" | "1234" | "XXXX-5467"    | "luisama@gmail.com" | "65"       | "233566778" | ""            | ""           | "Su solicitud ha sido enviada" |
#          | "10345678-4" | "5678" | "XXXX-2345"    | "lola@gmail.com"    | "45"       | "12346578"  | "05"          | "23455667"   | "Su solicitud ha sido enviada" |

#    Scenario Outline: Solicitud de Aumento de Cupo casos de borde
#       Given Abro la pagina web "https://www.santander.cl/"
#       And Ingreso con Rut valido <Rut>
#       And Ingreso con la clave valida <Clave>
#       And Realizo Click en Ingresar
#       And Valido que se muestre la pagina principal del Banco
#       When Realizo Click en Tarjeta de Credito
#       And Realizo Click en Aumento de Cupo
#       And Selecciono la tarjeta de Credito
#       And Ingreso el Mail de contacto <Email>
#       And Ingreso el Telefono Fijo <CodigoFijo> <TelefFijo>
#       And Ingreso el Teléfono Celular <CodigoCelular> <TelefCelular>
#       And Realizo Click en Enviar
#       But Se muestra popup de alerta <Alerta>

#       Examples:
#          | Rut          | Clave  | TarjetaCredito | Email               | CodigoFijo | TelefFijo | CofigoCelular | TelefCelular | Mensaje                                   |
#          | "23455627-8" | "3245" | "--"           | "mhondar@gmail.com" | ""         | ""        | "05"          | "123456789"  | "Debe seleccionar una Tarjeta de credito" |
#          | "89756454-6" | "2354" | "XXXX-5676"    | ""                  | ""         | ""        | "09"          | "123456789"  | "Debe ingresar el email"                  |
#          | "19674533-3" | "6532" | "XXXX-6534"    | "popapet@gmail."    | ""         | ""        | "07"          | "123456789"  | "el Email es incorrecto"                  |
#          | "98563432-K" | "1234" | "XXXX-9876"    | "louisd@gmail.com"  | ""         | ""        | ""            | ""           | "Debe ingresar el código del teléfono"    |
#          | "34567899-0" | "0986" | "XXXX-3245"    | "lola@gmail.com"    | "64"       | ""        | ""            | ""           | "Debe ingresar el teléfono"               |
#          | "54678907-8" | "0986" | "XXXX-8730"    | "dffgfg@gmail.com"  | "58"       | "123"     | ""            | ""           | "El teléfono ingresado es incorrecto."    |
#          | "09856785-4" | "0986" | "XXXX-1111"    | "weerrt@gmail.com"  | ""         | ""        | "06"          | ""           | "Debe ingresar el celular"                |
#          | "12365489-1" | "0986" | "XXXX-3456"    | "zxxz@gmail.com"    | ""         | ""        | "08"          | "345"        | "El celular ingresado es incorrecto."     |