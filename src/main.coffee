options = require('./switches')
app = require('./app')

options = options(process.argv)
console.log options if options.debug

if options.help_printed
  process.exit(1)
else
  app(options)
