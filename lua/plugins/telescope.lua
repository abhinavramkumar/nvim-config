return {
  {
    "nvim-telescope/telescope.nvim",
    keys = function()
      -- add a keymap to browse plugin files
      return {
        {
          "<leader>fp",
          function()
            require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
          end,
          desc = "Telescope: Find Plugin File",
        },
        {
          "<leader>ff",
          function()
            require("telescope.builtin").find_files({ cwd = "." })
          end,
          desc = "Telescope: Find Files in Current Directory",
        },
        {
          "<leader>fH",
          function()
            require("telescope.builtin").find_files({ cwd = ".", hidden = true })
          end,
          desc = "Telescope: Find All Files in Current Directory [includes hidden files] ",
        },
        {
          "<leader>fg",
          function()
            require("telescope.builtin").live_grep({ cwd = "." })
          end,
          desc = "Telescope: Find Words in Current Directory",
        },
        {
          "<leader>fw",
          function()
            require("telescope.builtin").grep_string({ cwd = "." })
          end,
          desc = "Telescope: Find Current word / selection in Current Directory",
        },
        {
          "<leader>fk",
          function()
            require("telescope.builtin").keymaps()
          end,
          desc = "Telescope: Find in Keymaps",
        },
        {
          "<leader>fh",
          function()
            require("telescope.builtin").help_tags()
          end,
          desc = "Telescope: Find in Help Tags",
        },
        {
          "<leader>fq",
          function()
            require("telescope.builtin").quickfix()
          end,
          desc = "Telescope: Find in Quickfix list",
        },
        {
          "<leader>fQ",
          function()
            require("telescope.builtin").quickfixhistory()
          end,
          desc = "Telescope: Find in Quickfix History",
        },
        {
          "<leader>fr",
          function()
            require("telescope.builtin").resume()
          end,
          desc = "Telescope: Resume Finder with Previous Results",
        },
        {
          "<leader>fo",
          function()
            require("telescope.builtin").vim_options()
          end,
          desc = "Telescope: Find in Vim Options",
        },
        {
          "<leader>/",
          function()
            require("telescope.builtin").current_buffer_fuzzy_find()
          end,
          desc = "Telescope: Find in Current Buffer",
        },
        {
          "<leader>fa",
          function()
            require("telescope.builtin").autocommands()
          end,
          desc = "Telescope: Find in Auto Commands",
        },
        {
          "<leader><Space>",
          function()
            require("telescope.builtin").buffers({ ignore_current_buffer = true })
          end,
          desc = "Telescope: Find Open Buffers Except Current",
        },
        {
          "<leader>c",
          function()
            require("telescope.builtin").colorscheme()
          end,
          desc = "Telescope: Find Colorschemes",
        },
        {
          "<leader>gb",
          function()
            require("telescope.builtin").git_branches()
          end,
          desc = "Telescope: Find Git Branch and Switch",
        },
        {
          "<leader>gst",
          function()
            require("telescope.builtin").git_status()
          end,
          desc = "Telescope: Show Git Status",
        },
        {
          "<leader>ly",
          function()
            require("telescope.builtin").lsp_document_symbols()
          end,
          desc = "Telescope: Show Document LSP Symbols",
        },
      }
    end,
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
      pickers = {
        find_files = {
          theme = "ivy",
        },
        grep_string = {
          theme = "ivy",
        },
        live_grep = {
          theme = "ivy",
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case",
        },
      },
    },
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("harpoon")
      end,
    },
  },
}
