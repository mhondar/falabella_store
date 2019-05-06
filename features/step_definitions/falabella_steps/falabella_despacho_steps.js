const { Given, When, Then } = require('cucumber');
const despachoFalabella = require('../../support/pages/falabella_pages/falabella_despacho_page.js')

Then('Verificar que se visualiza la Pagina de Despacho', async function() {
    await testController
        .click(despachoFalabella.despachoProduct.despachoTitle())
});