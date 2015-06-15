MLarcUtils = {
  testLocalConfig: (lconfig) ->

  testGlobalConfig: (gconfig) ->
    PROMISED_PROPS = [
      ['sendmail', (x) -> typeof(x) == 'string']
      ['gzip', (x) -> typeof(x) == 'string']
      ['nkf', (x) -> typeof(x) == 'string']
    ]
    for v of PROMISED_PROPS
      return false unless v[0] of gconfig && v[1](gconfig[v[0]])
    true
  resolveLocalConfig: (lconfig) ->

  resolveGlobalConfig: (gconfig) ->

  initArchiveStruct: (lconfig, gconfig) ->

}

module.exports = MLarcUtils
