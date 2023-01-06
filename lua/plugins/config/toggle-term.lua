local Terminal  = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({ cmd = 'lazygit', hidden = true, direction = 'float' })
local genericTerm = Terminal:new({ hidden = true, direction = 'float' })

function _lazygitToggle()
    lazygit:toggle()
end

function _genericTermToggle()
    genericTerm:toggle()
end
