const { Given, When, Then } = require('cucumber');
const bolsa = require('../../support/pages/falabella_pages/falabella_bolsa_page.js')

When('Ingreso la cantidad de productos {int}', function(cantidad) {
    await testController
        .click(bolsa.bolsaProduct.addProduct())
});

When('Agrego Garantia Extendida {string}', function(garantia) {
    await testController
        .click(bolsa.bolsaProduct.garantiaForm())
        .click(bolsa.bolsaProduct.garantiaForm().child('li').child('a').withText(garantia))
});

When('Presiono el boton Ir a Comprar', function() {
    await testController
        .click(bolsa.bolsaProduct.comprarButton())
});