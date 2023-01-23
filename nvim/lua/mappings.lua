local wk = require("which-key")

wk.register({
  o = {
    name = "open",
    t = { ":NvimTreeOpen<CR>", "Open nvim tree" },
  },
  s = {
    name = "splits",
    h = { ":wincmd h<CR>", "Left tab (<C+w> h)" },
    l = { ":wincmd l<CR>", "Right tab (<C+w> l)" },
    j = { ":wincmd j<CR>", "Bottom tab (<C+w> )" },
    k = { ":wincmd k<CR>", "Top tab (<C+w> k)" },
  },
}, { prefix = "<leader>" })

