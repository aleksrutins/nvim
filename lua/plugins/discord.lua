return {
  {
    "andweeb/presence.nvim",
    init = function()
      require("presence").setup({
        auto_update = true,
        neovim_image_text = "One Of Three True Text Editors",
        main_image = "file",
        buttons = function(buffer, repo_url)
          if repo_url == nil then
            return {}
          end
          return {
            { label = "View Repository", url = repo_url },
          }
        end,
      })
    end,
  },
}
