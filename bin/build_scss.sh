#!/bin/sh

stylelint --config conf/stylelintrc.js src/scss/**/*.scss &&
  node-sass --output-style compressed src/scss/foundation/foundation.scss -o dist/css/ &&
  node-sass --output-style compressed src/scss/gn-form/gn-form.scss -o dist/css/

postcss dist/css/* --use autoprefixer css-mqpacker -d dist/css/ --no-map
