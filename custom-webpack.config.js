const path = require('path');
const customPackage = require(path.join(__dirname, '.', 'package.json'));

module.exports = {
    output: {
      jsonpFunction: `webpackJsonp-${customPackage.name}`
    }
};
