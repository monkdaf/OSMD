// @flow

import createUser from '../src/api/createUser';

describe('create user', () => {
  test('username is ok', () => {
    expect(createUser('daf')).toBe(1);
  });

  test('username is empty', () => {
    expect(createUser()).toBe(0);
  });
});
