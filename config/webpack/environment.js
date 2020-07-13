const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/serc/jquery',
    jQuery: 'jquery/serc/jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment
