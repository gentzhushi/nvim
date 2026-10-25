return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.routes = opts.routes or {}
    table.insert(opts.routes, 1, {
      filter = {
        event = "msg_show",
        kind = { "shell_out", "shell_err", "shell_ret" },
      },
      view = "split",
      opts = { enter = true },
    })
  end,
}
