Feature: Comprar productos en Falabella.cl

    Como usuario
    quiero poder comprar n productos
    con garatia extendida

    Scenario Outline: Comprar Productos con Garantía Extendida
        Given Abro la pagina "https://www.google.com/"
        And Ingreso la palabra "falabella"
        And Selecciono de los Resultados el texto que dice "Falabella.com - Mejor Compra Online"
        And Verifico que se muestre la pagina "https://www.falabella.com/falabella-cl/"
        When Busco el articulo con nombre <Producto>
        And Abro pagina de detalles del producto <Detalles>
        And Agrego a la Bolsa el producto
        And Selecciono Ver Bolsa de compras
        And Ingreso la cantidad de productos <Cantidad>
        And Agrego Garantia Extendida <Garantia>
        And Presiono el boton Ir a Comprar
        Then Verificar que se visualiza la Pagina de Despacho

        Examples:
            | Producto | Detalles                  | Cantidad | Garantia |
            | "ps4"    | "Consola PS4 1TB FIFA 19" | 2        | "2 Años" |
