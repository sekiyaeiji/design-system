#!/bin/sh

VERSION_CSS_FOUNDATION=`cat conf/version.json | json version.css.foundation`
VERSION_CSS_GN_FORM=`cat conf/version.json | json version.css.gn_form`

stylelint --config conf/stylelintrc.js src/scss/**/*.scss &&
  node-sass src/scss/foundation/foundation.scss dist/css/foundation-${VERSION_CSS_FOUNDATION}.css --output-style compressed &&
  node-sass src/scss/gn_form/gn_form.scss dist/css/gn_form-${VERSION_CSS_GN_FORM}.css --output-style compressed

postcss dist/css/* --use autoprefixer css-mqpacker -d dist/css/ --no-map
