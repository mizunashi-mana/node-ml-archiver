HELP_BANNER = "Usage: ml-archiver [options]"
OPT_SWITCHES = [
  ['-d', '--debug', "Run with debug mode."]
  ['-h', '-H', '--help', "Shows this help."]
  ['-g', '--global-config PATH', "Apply own global config."]
]

optparse = require('optparse')
parser = new optparse.OptionParser(OPT_SWITCHES),

parser.banner = HELP_BANNER

options = {
  debug: false
  gconfig_path: ""
  help_printed: false
}

parser.on 'debug', (name, value) ->
  options.debug = true

parser.on 'help', (name, value) ->
  console.log parser.toString()
  options.help_printed = true

parser.on 'global-config', (name, value) ->
  options.gconfig_path = value

module.exports = (optstrs) ->
  parser.parse optstrs
  
