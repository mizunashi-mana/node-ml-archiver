HELP_BANNER = "Usage: ml-archiver.js [options]"
OPT_SWITCHES = [
  ['-d', '--debug', "Run with debug mode."]
  ['-h', '--help', "Shows this help."]
  ['-g', '--global-config FILE', "Apply own global config."]
]

assert = require('assert')
optparse = require('optparse')
parser = new optparse.OptionParser(OPT_SWITCHES)

parser.banner = HELP_BANNER

options = {
  debug: false
  gconfig_path: undefined
  help_printed: false
}

parser.on 'debug', () ->
  options.debug = true

parser.on 'help', () ->
  console.log parser.toString()
  options.help_printed = true

parser.on 'global-config', (name, value) ->
  options.gconfig_path = value

module.exports = (optstrs) ->
  assert Array.isArray(optstrs), "options is not array!"

  try
    parser.parse optstrs
  catch e
    console.log e
    console.log parser.toString()
  options
