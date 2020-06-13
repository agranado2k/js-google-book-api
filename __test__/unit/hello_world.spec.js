const getHellowWorld = require('../../src/index');

test('Hello World message', () => {
  expect(getHellowWorld()).toBe('Hello world!');
});