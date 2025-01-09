require("nvim-tree").setup({
    filters = {
        git_ignored = false, -- CHANGED : false to display ignored files (to test if "I" is displayed)
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        custom = {
            "node_modules", -- filter out node_modules directory
            ".git",         -- filter out .git directory
        },
        exclude = {},
    },
    disable_netrw = true,
    hijack_netrw = true,
    --open_on_setup = false,
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500,
    },
    view = {
        width = 30,
        --height = 30,
        -- hide_root_folder = false,   -- CHANGED : commented as now "Unknown option"
        side = "left",
        --auto_resize = true,
        -- mappings = {                -- CHANGED : commented as now "Unknown option"
        --     custom_only = false,    -- CHANGED : commented as now "Unknown option"
        -- },                          -- CHANGED : commented as now "Unknown option"
        number = false,
        relativenumber = false,
    },
    actions = {
        --quit_on_open = true,
        --window_picker = { enable = true },
    },
    renderer = {
        highlight_git = true,
        root_folder_modifier = ":t",
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "U",
                    staged = "S",
                    unmerged = "UM",
                    renamed = "R",
                    deleted = "D",
                    untracked = "",
                    ignored = "I",
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                },
            },
        },
    },
})
