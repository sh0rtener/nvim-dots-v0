local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local api = require("nvim-tree.api")

nvim_tree.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
        side = "left",
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
    on_attach = function(bufnr)
        local opts = function(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts("Close Folder"))
        vim.keymap.set('n', 'l', api.node.open.edit, opts("Open"))
        vim.keymap.set('n', 'v', api.node.open.vertical, opts("Open: Vertical Split"))
        vim.keymap.set('n', 'a', api.fs.create, opts('create file'))
        vim.keymap.set('n', 'd', api.fs.remove, opts('remove file'))
        vim.keymap.set("n", "r", function() require("nvim-tree.api").fs.rename() end, { buffer = bufnr })
        vim.keymap.set("n", "c", function() require("nvim-tree.api").fs.copy.node() end, { buffer = bufnr })
        vim.keymap.set("n", "x", function() require("nvim-tree.api").fs.cut() end, { buffer = bufnr })
        vim.keymap.set("n", "p", function() require("nvim-tree.api").fs.paste() end, { buffer = bufnr })
    end,
})
