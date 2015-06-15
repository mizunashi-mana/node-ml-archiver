options = require('./switches')

options = options(process.argv)
console.log options if options.debug

if options.help_printed
  process.exit(1)
else
  gconfig = {
    path: options.gconfig_path || "../config/config.js"
    data: ""
  }
  gconfig.data = require(gconfig.path)
  console.log gconfig if options.debug
  lconfig = {
    path: options.config_path
    data: ""
  }
  lconfig.data = require(lconfig.path)
  console.log lconfig if options.debug
