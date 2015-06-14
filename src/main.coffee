DEBUG = 1

options = require('./switches')

options = options(process.argv)
console.log options

gconfig = {
  path: "../config/config.js"
  data: ""
}
gconfig.data = require(gconfig.path)

if options.help_printed
  console.log 'help'
else
  console.log 'success'
