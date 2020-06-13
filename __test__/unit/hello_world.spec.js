const util = require('../../src/util');

test('Hello World message', () => {
  expect(util.getHelloWorld()).toBe('Hello world!');
});
