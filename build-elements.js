const fs = require('fs-extra');
const concat = require('concat');

(async function build() {
  const jsFiles = [
    './dist/orange-ui-collapsible/runtime.js',
    './dist/orange-ui-collapsible/polyfills.js',
    './dist/orange-ui-collapsible/scripts.js',
    './dist/orange-ui-collapsible/main.js'
  ];

  await fs.ensureDir('elements');
  await concat(jsFiles, 'elements/bundle.js');
})();
