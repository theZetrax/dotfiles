local config = nil
local loaded, autopairs = pcall(require, 'nvim-autopairs')

if not loaded then
  print("autopairs module had an error")
else
  config = function() autopairs.setup {
	  -- config can be placed below
  } end
end

return config
