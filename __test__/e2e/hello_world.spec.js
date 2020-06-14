describe('My First Test', () => {
  it('Hello World!', () => {
    cy.visit('http://localhost');

    cy.contains('Hello world!');
  });
});
