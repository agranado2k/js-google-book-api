import { getHelloWorld } from '../../src/util';

test('Hello World message', () => {
  expect(getHelloWorld()).toBe('Hello world!');
});
