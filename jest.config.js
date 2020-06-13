// For a detailed explanation regarding each configuration property, visit:
// https://jestjs.io/docs/en/configuration.html

module.exports = {
  testPathIgnorePatterns: [
    "/node_modules/",
    "/__test__/e2e"
  ],
  // The directory where Jest should output its coverage files
  coverageDirectory: "coverage",
  // An array of regexp pattern strings used to skip coverage collection
  coveragePathIgnorePatterns: [
    "/node_modules/"
  ],
  // The test environment that will be used for testing
  testEnvironment: "node",
};
