return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function ()
        -- local api = require("nvim-tree.api")
        --
        -- local function edit_or_open()
        --     local node = api.tree.get_node_under_cursor()
        --
        --     if node.nodes ~= nil then
        --         -- expand or collapse folder
        --         api.node.open.edit()
        --     else
        --         -- open file
        --         api.node.open.edit()
        --         -- Close the tree if file was opened
        --         api.tree.close()
        --     end
        -- end
        --
        -- vim.keymap.set("n", "<enter>", edit_or_open)

        local HEIGHT_RATIO = 0.8
        local WIDTH_RATIO = 0.5

        require("nvim-tree").setup({
            disable_netrw = true,
            hijack_netrw = true,
            hijack_cursor = true,
            hijack_unnamed_buffer_when_opening = false,
            -- open_on_setup = true,
            hijack_directories = { enable = true, auto_open = true },
            sync_root_with_cwd = true,
            filters = { dotfiles = false },
            -- view = {
            --     float = {
            --         enable = true,
            --         open_win_config = function ()
            --             local screen_w = vim.opt.columns:get()
            --             local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
            --             local window_w = screen_w * WIDTH_RATIO
            --             local window_h = screen_h * HEIGHT_RATIO
            --             local window_w_int = math.floor(window_w)
            --             local window_h_int = math.floor(window_h)
            --             local center_x = (screen_w - window_w) / 2
            --             local center_y = ((vim.opt.lines:get() - window_h) / 2)
            --                 - vim.opt.cmdheight:get()
            --             return {
            --                 border = 'rounded',
            --                 relative = 'editor',
            --                 row = center_y,
            --                 col = center_x,
            --                 width = window_w_int,
            --                 height = window_h_int,
            --             }
            --         end,
            --     },
            --     width = function ()
            --         return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
            --     end,
            -- },
        })
    end,
}
