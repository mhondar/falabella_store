# Feature: Compra de Productos con Carro de Compras en Falabella.cl

#     Como usuario
#     quiero poder realizar varias compras en Falabella.cl

#     Scenario Outline: Compra exitosa de Productos en Falabella.cl con despacho a Domicilio y Pago con CMR Falabella
#         Given Abro la pagina web "https://www.falabella.com/falabella-cl/"
#         When Busco el articulo con nombre <Producto>
#         And Abro pagina de detalles del producto <Detalles>
#         And Agrego a la Bolsa el producto
#         And Selecciono Ver Bolsa de compras
#         And Ingreso la cantidad de productos <Cantidad>
#         And Agrego Garantia Extendida <Garantia>
#         And Presiono el boton Ir a Comprar
#         And Verifico que se visualiza la Pagina de Despacho
#         And Ingreso direccion de email <Email>
#         And Ingreso Region de Despacho <Region>
#         And Ingreso Comuna de Despacho <Comuna>
#         And Selecciono opcion de despacho "Despacho a Domicilio"
#         And Ingreso la Calle <Calle>
#         And Ingreso e Número <Numero>
#         And Ingreso el Dpto <Dpto>
#         And Realizo Click en Ingresar Direccion
#         And Selecciono Fecha y Horario de despacho <MesAnno> <Dia> <Horario>
#         And Indico quien recibira este depacho <Recibe>
#         And Realizo Click en Continuar para ir a Pagar
#         And Agrego Cupon de Descuento <Agregar> <Cupon>
#         And Selecciono Medio de Pago "CMR Falabella"
#         And Ingreso los datos de Tarjeta Seleccionada <NumeroTarjeta> <Rut>
#         And Realizo Click en Ingresar tarjeta
#         And Selecciono la cantidad de cuotas <Cuotas>
#         And Ingreso la clave de tarjeta <Clave>
#         And Ingreso tercera clave de transferencia <TerceraClave>
#         And Realizo Click en Pagar
#         Then Se muestra mensaje de confirmacion de la compra
#         And Recibo mensaje de correo con los detalles del producto y despacho

#         Examples:
#             | Producto   | Detalles                   | Cantidad | Garantia | Email               | Region                 | Comuna     | Calle   | Numero | Dpto  | MesAnno      | Mes     | Horario         | Recibe                 | Agregar | Cupon       | NumeroTarjeta      | Rut          | Cuotas       | Clave  | TerceraClave |
#             | "ps4"      | "Consola PS4 1TB FIFA 19"  | 2        | "2 Años" | "mhondar@gmail.com" | "REGION METROPOLITANA" | "COLINA"   | "Perez" | "123"  | "234" | "Mayo 2019"  | "Mar 7" | "09:00 a 21:00" | "Yo lo recibiré"       | "Si"    | "CUPONFREE" | "1234567898765432" | "10345678-K" | "Sin cuotas" | "2345" | "234567"     |
#             | "nintendo" | "Consola Switch Azul-Roja" | 1        | "1 Año"  | "luis@gmail.com"    | "REGION METROPOLITANA" | "SANTIAGO" | "Lola"  | "432"  | "123" | "Abril 2019" | "Lun 7" | "09:00 a 21:00" | "Dejar en conserjeria" | "No"    | ""          | "1234567898765432" | "65345678-K" | "3"          | "3456" | "876453"     |

#     Scenario Outline: Compra exitosa de Productos en Falabella.cl con Retiro en Tienda y Pago con Otras Tarjetas de Credito
#         Given Abro la pagina web "https://www.falabella.com/falabella-cl/"
#         When Busco el articulo con nombre <Producto>
#         And Abro pagina de detalles del producto <Detalles>
#         And Agrego a la Bolsa el producto
#         And Selecciono Ver Bolsa de compras
#         And Ingreso la cantidad de productos <Cantidad>
#         And Agrego Garantia Extendida <Garantia>
#         And Presiono el boton Ir a Comprar
#         And Verifico que se visualiza la Pagina de Despacho
#         And Ingreso direccion de email <Email>
#         And Ingreso Region de Despacho <Region>
#         And Ingreso Comuna de Despacho <Comuna>
#         And Selecciono opcion de despacho "Retira tu compra"
#         And Selecciono Fecha de Retiro y Tienda <Tienda> <Fecha>
#         And Realizo click en Seleccionar
#         And Indico quien recibira este depacho <Recibe>
#         And Realizo Click en Continuar para ir a Pagar
#         And Agrego Cupon de Descuento <Agregar> <Cupon>
#         And Selecciono Medio de Pago "Otras Tarjetas de credito"
#         And Realizo click en el mensaje de atencion en "Continuar con el medio de pago seleccionado"
#         And Ingreso los datos de Tarjeta Seleccionada <NumeroTarjeta> <CCV>
#         And Ingreso Fecha de Expiracion <MesExp> <AnnioExp>
#         And Realizo Click en Ingresar tarjeta
#         And Selecciono la cantidad de cuotas <Cuotas>
#         And Ingreso la clave de tarjeta <Clave>
#         And Ingreso tercera clave de transferencia <TerceraClave>
#         And Realizo Click en Pagar
#         Then Se muestra mensaje de confirmacion de la compra
#         And Recibo mensaje de correo con los detalles del producto y despacho

#         Examples:
#             | Producto | Detalles                  | Cantidad | Garantia | Email               | Region                 | Comuna     | Tienda   | Fecha                   | Recibe           | Agregar | Cupon       | NumeroTarjeta      | CCV   | MesExp | AnnioExp | Cuotas       | Clave  | TerceraClave |
#             | "ps4"    | "Consola PS4 1TB FIFA 19" | 1        | "1 Año"  | "mhondar@gmail.com" | "REGION METROPOLITANA" | "SANTIAGO" | "Tottus" | "Mie 08/05/2019 Gratis" | "Yo lo recibiré" | "Si"    | "CUPONFREE" | "1234567898765432" | "123" | "01"   | "2023"   | "Sin cuotas" | "2345" | "234567"     |

#     Scenario Outline: Buscar Productos de Compra con Citerios de Búsqueda erroneos. Casos de Borde
#         Given Abro la pagina web "https://www.falabella.com/falabella-cl/"
#         When Busco el articulo con nombre <Producto>
#         But Se visualiza mensaje de error <Mensaje>

#         Examples:
#             | Producto  | Mensaje                                                                              |
#             | "xxxx"    | "Lo sentimos, no encontramos resultados para xxxx"                                   |
#             | ""        | "Busqueda Vacia"                                                                     |
#             | "q"       | "Busqueda Incorrecta"                                                                |
#             | "qm"      | "Lo sentimos, no encontramos resultados para 'qm'. Mostrando resultados para 'qmv'." |
#             | "*?"      | "Busqueda Vacia"                                                                     |
#             | "1234567" | "Lo sentimos, no encontramos resultados para 1234567"                                |

# -- se pueden crear casos de prueba en todos los componentes de la pagina agrupados por sessiones: 
# -- digase en el Listado puede ser Los Filtros de precio, Categoria, comentarios, Destacados,
# -- los Criterios de Ordenamiento, el paginador, Los banners, Las ubicaciones, las vistas,
# -- casos para agregar a la bolsa directamente, o ir a la pagina de detalles
# -- En la pagina de detalles pueden añadirse la garantia extendida y las cantidades
# -- En el mensaje de Bolsa, se puede ir por el flujo de seguir comprando o ir a la bolsa
# -- En bolsa de compras se puede jugar con los datos de cantidad asi como eliminar o guardar para despues, ademas de indicar que es un regalo para NOVIOS
# -- En el Formulario de Despacho, hay un sin fin de casuisticas a abordar, por ejemplo, dejar en blanco elementos del formulario y verificar cada uno de los mensajes de validacion, asi como ingresar simbolos extraños etc.
# -- Se puede alternar entre los rangos de fecha mostrado y ademas en quien recibira este despacho
# -- En los Medios de Pago se puede ir poro tres flujos distintos CMR Falabella, Otras Tarjetas de Credito, Mas opciones de Pago
# -- Se pueden ingresar datos erroneos en cada medio de pago para verificar las validaciones de las tarjetas ingresadas asi como los datos de prueba
# -- En mas opciones de pago hay otros flujos a verificar como Debito Banco Falabella, Pago con tarjeta de Debito RedCompra, Pago en efectivo con Servipag, etc  

# -- De alguna manera identifique sin tener conocimientos previos de las reglas del negocio, solo lo que se muestra a traves de lo construido en  la pagina y realizando pruebas exploratorias las diferentes casuisticas que son abundantes y variadas.
# -- Muchas gracias por la oportunidad ...

# Marisleydi Hondar Martinez