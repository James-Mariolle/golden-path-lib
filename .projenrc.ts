import { awscdk, javascript } from 'projen';
const project = new awscdk.AwsCdkConstructLibrary({
  author: 'JamesOfTechToks',
  authorAddress: 'jamesmariolle216@gmail.com',
  cdkVersion: '2.189.1',
  defaultReleaseBranch: 'main',
  jsiiVersion: '~5.9.0',
  name: '@jamesoftechtoks/golden-path-lib',
  npmAccess: javascript.NpmAccess.PUBLIC,
  projenrcTs: true,
  repositoryUrl: 'https://github.com/James-Mariolle/golden-path-lib.git',
  packageManager: javascript.NodePackageManager.NPM,

  // deps: [],                /* Runtime dependencies of this module. */
  // description: undefined,  /* The description is just a string that helps people understand the purpose of the package. */
  // devDeps: [],             /* Build dependencies for this module. */
  // packageName: undefined,  /* The "name" in package.json. */
});
project.synth();