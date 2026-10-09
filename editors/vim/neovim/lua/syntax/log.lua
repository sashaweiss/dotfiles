vim.cmd('syntax clear')

vim.cmd([[
  syntax match logError /^.*\v(_E).*$/
  syntax match logWarn  /^.*\v(_W).*$/
  syntax match logInfo  /^.*\v(_I).*$/
  syntax match logDebug /^.*\v(_D).*$/
  syntax match logVerb /^.*\v(_V).*$/

  highlight link logError Statement
  highlight link logWarn  Label
  highlight link logInfo  Special
  highlight link logDebug Keyword
  highlight link logVerb  NonText
]])
