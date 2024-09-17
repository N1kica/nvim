return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', 'æa', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon [A]dd file' })
    vim.keymap.set('n', 'æq', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[H]arpoon [Q]uick menu' })

    vim.keymap.set('n', 'æ1', function()
      harpoon:list():select(1)
    end, { desc = '[H]arpoon file [1]' })
    vim.keymap.set('n', 'æ2', function()
      harpoon:list():select(2)
    end, { desc = '[H]arpoon file [2]' })
    vim.keymap.set('n', 'æ3', function()
      harpoon:list():select(3)
    end, { desc = '[H]arpoon file [3]' })
    vim.keymap.set('n', 'æ4', function()
      harpoon:list():select(4)
    end, { desc = '[H]arpoon file [4]' })
    vim.keymap.set('n', 'æ5', function()
      harpoon:list():select(5)
    end, { desc = '[H]arpoon file [5]' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', 'æp', function()
      harpoon:list():prev()
    end, { desc = '[H]arpoon [P]revious file' })
    vim.keymap.set('n', 'æn', function()
      harpoon:list():next()
    end, { desc = '[H]arpoon [N]ext file' })
  end,
}
