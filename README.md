# Caso Prueba Vacante QA - Falabella Financiero Digital Factory

## Parte 1

Definir todos los casos de prueba de borde  de las siguientes funcionalidades/situaciones (esta sección no tiene relación con la parte 2), y entregarlos en un archivo de texto con enfoque BDD utilizando el lenguaje Gherkin:

Considerando el sistema bancario en Chile, la funcionalidad Aumento de Cupo de tu tarjeta de crédito. Para este caso, favor incluir la data de prueba que utilizará. Priorizar pruebas de casos críticos y borde.
Considerando una página web de algún Retail, que casos definirías para un proceso de compras a través del carrito desde la selección del producto hasta el proceso de pago. Priorizar pruebas de casos críticos y borde.
Para los dos ejercicios anteriores, todos los supuestos necesarios favor comentarlos en el ejercicio para tenerlos en cuenta, y la data necesaria también.

Respuesta: 
- Casos de Prueba Sistema Bancario: features\Parte1_A_CP_Banco.feature
- Casos de Prueba Sistema Retail: features\Parte1_B_CP_Retail.feature

## Parte 2

La página web a utilizar será Google y Falabella (www.google.cl - http://www.falabella.cl).

Se debe utilizar Cucumber, TestCafe y Javascript. No se debe solicitar ingresos de datos por parte de usuarios, todo debe ser automático. El proyecto debe ser entregado en Github.

Se deben automatizar la compra de un artículo con garantía extendida.

- En google buscar la palabra "falabella" y del listado que aparece, presionar en el texto que dice "Falabella.com - Mejor Compra Online"

- En Falabella.com, buscar algún producto, por ejemplo "ps4". Luego presionar en el producto para ver la nueva página con el detalle. Finalmente agregarlo a la "Bolsa" de productos

- Ir a la "Bolsa" de compras, aumentar a 2 productos para comprar, agregar "Garantía Extendida" de 2 años y luego presionar el botón "Ir a Comprar". 

Se deben implementar las configuraciones necesarias para que el proyecto soporte Chrome e Internet Explorer como navegadores. 

Favor subir tu trabajo en un repositorio de GitHub para que podamos revisarlo desde ahí. El día de entrega es el día Martes 07/05/2019 a las 23 horas. 

Respuesta:
- Features en Gherkis: features\Parte2_Buy_article_extend_garanty.feature
- Configuraciones para ejecutar en Varios Navegadores y generar Reporte: package.json
- Para ejecutar la prueba automatica escribir en consola dentro del directorio del proyecto la instruccion: 
```
npm run test_wip
```

Si se desea ejecutar en otro navegador o generando reportes json se ejecutan los siguientes scripts: 

```
npm run test_wip
npm run test-report
npm run test-chrome
npm run test-ie
npm run test-edge
npm run test-firefox
npm run test-opera
npm run test-safari
npm run test-chrome-report
npm run test-ie-report
npm run test-edge-report
npm run test-firefox-report
npm run test-opera-report
npm run test-safari-report
```