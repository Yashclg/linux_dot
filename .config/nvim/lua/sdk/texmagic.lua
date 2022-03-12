local status_ok, texmagic = pcall(require, "texmagic")
if not status_ok then
	return
end

texmagic.setup({
  cmd = { "texlab" },
  filetypes = { "tex", "bib" },
  settings = {
    texlab = {
	  rootDirectory = nil,
	      --      ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓
	  build = _G.TeXMagicBuildConfig,
			--      ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑
	  forwardSearch = {
	    executable = "evince",
		args = { "%p" },
	  },
	},
  },
})
