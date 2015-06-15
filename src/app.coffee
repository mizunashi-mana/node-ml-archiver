mlutils = require('./utils')

module.exports = (options) ->
  # load global config
  gconfig = {
    path: options.gconfig_path || "../config/config.js"
    data: ""
  }
  try
    gconfig.data = require(gconfig.path)
  catch e
    gconfig.data = e
  console.log gconfig if options.debug

  # load local config (necessally)
  lconfig = {
    path: options.config_path
    data: ""
  }
  try
    lconfig.data = require(lconfig.path)
  catch e
    lconfig.data = e
  console.log lconfig if options.debug
