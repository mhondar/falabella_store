const { Given, When, Then } = require('cucumber');
const detailFalabella = require('../../support/pages/falabella_pages/falabella_detail_page')

When('Agrego a la Bolsa el producto', async function() {
    await testController
        .click(detailFalabella.detailProduct.addBolsa())
});

When('Selecciono Ver Bolsa de compras', async function() {
    await testController
        .click(detailFalabella.detailProduct.seeBolsaButton())
});