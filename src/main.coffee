DEBUG = 1

options = require('./switches')

gconfig = {
  path: "../config/config.js"
  data: ""
}
gconfig.data = require(gconfig.path)
