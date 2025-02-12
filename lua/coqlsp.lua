--   _                             __  _
-- /   _   _.    _. ._   _|   |  (_  |_)
-- \_ (_) (_|   (_| | | (_|   |_ __) |
--          |

local lsp = require "lspconfig"
local coq = require "coq"

-- python
lsp.pyright.setup{}
lsp.pyright.setup(coq.lsp_ensure_capabilities{})
-- json
lsp.jsonls.setup{}
lsp.jsonls.setup(coq.lsp_ensure_capabilities{})
-- C 
lsp.ccls.setup{}
lsp.ccls.setup(coq.lsp_ensure_capabilities{})
-- yaml
lsp.yamlls.setup{}
lsp.yamlls.setup(coq.lsp_ensure_capabilities{})
-- lua
lsp.lua_ls.setup{}
lsp.lua_ls.setup(coq.lsp_ensure_capabilities{})

-- settings
vim.g.coq_settings = { auto_start = true; }
vim.cmd('COQnow -s')
