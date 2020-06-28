describe('Search page', () => {
  const port = Cypress.env('TEST_PORT') || '';
  const baseUrl = `http://localhost${port}`;
  console.log('env: ', Cypress.env());
  console.log('baseUrl: ', baseUrl);

  describe('before a search', () => {
    it('should get empty page with base components', () => {
      cy.visit(`${baseUrl}`);

      cy.contains('Book\'s Search Page');
      cy.contains('No results');
      cy.get('#search_field');
      cy.get('[type="submit"]');
    });
  });
});
