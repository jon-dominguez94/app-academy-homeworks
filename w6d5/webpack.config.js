var path = require('path');

module.exports = {
  entry: "./frontend/index.js",
  output: {
    path: path.resolve(__dirname, 'app', 'assest', 'javascripts'),
    filename: "bundle.js"
  },
  devtool: 'source-map'
};