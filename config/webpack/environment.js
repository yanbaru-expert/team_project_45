const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
    $: 'jQuery',
    jQuery: 'jquery'
}))

module.exports = environment
