local wezterm = require 'wezterm'

----------------------
-- light mode style --
----------------------

return {
   style = {
      tab_bar = {
         -- The color of the strip that goes along the top of the window
         -- (does not apply when fancy tab bar is in use)
         background = '#f0f0f0',
         -- The active tab is the one that has focus in the window
         active_tab = {
            -- The color of the background area for the tab
            bg_color = '#f0f0f0',
            -- The color of the text for the tab
            fg_color = '#202020',
         },
         -- Inactive tabs are the tabs that do not have focus
         inactive_tab = {
            bg_color = '#c0c0c0',
            fg_color = '#808080',
         },
         -- You can configure some alternate styling when the mouse pointer
         -- moves over inactive tabs
         inactive_tab_hover = {
            bg_color = '#d7d7d7',
            fg_color = '#505050',
         },
         -- The new tab button that let you create new tabs
         new_tab = {
            bg_color = '#c0c0c0',
            fg_color = '#505050',
         },
         -- You can configure some alternate styling when the mouse pointer
         -- moves over the new tab button
         new_tab_hover = {
            bg_color = '#d7d7d7',
            fg_color = '#505050',
         },
         -- The color of the inactive tab bar edge/divider
         inactive_tab_edge = '#f0f0f0',
      },
   },
}
