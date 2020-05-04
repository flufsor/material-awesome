local awful = require("awful")
local gears = require("gears")
local client_keys = require("configuration.client.keys")
local client_buttons = require("configuration.client.buttons")

-- Rules
awful.rules.rules = {
  -- All clients will match this rule.
  {
    rule = {},
    properties = {
      focus = awful.client.focus.filter,
      raise = true,
      keys = client_keys,
      buttons = client_buttons,
      screen = awful.screen.preferred,
      placement = awful.placement.no_offscreen,
      floating = false,
      maximized = false,
      above = false,
      below = false,
      ontop = false,
      sticky = false,
      maximized_horizontal = false,
      maximized_vertical = false
    }
  },
  {
    rule = {instance = "Navigator"},
    properties = {tag = "1", switchtotag = true}
  },
  {
    rule = {instance = "code-oss"},
    properties = {tag = "2", switchtotag = true}
  },
  {
    rule = {instance = "Alacritty"},
    properties = {tag = "3", switchtotag = true}
  },
  {
    rule = {instance = "lutris"},
    properties = {tag = "5", switchtotag = true}
  },
}
