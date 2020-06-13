describe('My First Test', () => {
  it('Hello World!', () => {
    cy.visit('http://localhost:8080');

    cy.contains('Hello world!');
  });
});
