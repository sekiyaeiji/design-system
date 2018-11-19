const webpack = require('webpack')
const PrettierPlugin = require('prettier-webpack-plugin')
const version = require('../conf/version.json')

module.exports = {
  entry: {
    ['foundation-' + version.js.foundation] : './src/js/foundation/index.js',
    ['gn_form-' + version.js.gn_form] : './src/js/gn_form/index.js'
  },
  output: {
    path: __dirname + '/../dist/js',
    filename: '[name].js'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query:{
          presets: ['es2015']
        }
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'eslint-loader',
        options: {
          configFile: './conf/eslintrc.js'
        }
      }
    ]
  },
  plugins: [
    new PrettierPlugin({
      printWidth: 120,
      tabWidth: 2,
      singleQuote: true,
      trailingComma: 'all',
      semi: false,
      bracketSpacing: true
    }),
    new webpack.ProvidePlugin({
      jQuery: 'jquery',
      $: 'jquery'
    })
  ]
}
