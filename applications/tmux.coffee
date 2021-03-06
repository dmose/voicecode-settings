prefixCharacter = 'a'

Package.command 'tmux-prefix',
  spoken: 'mux'
  enabled: true
  scope: 'iterm-active'
  action: ->
    @key prefixCharacter, ["control"]

Package.command 'tmux-switch',
  spoken: 'muxwitch'
  enabled: true
  scope: 'iterm-active'
  action: ->
    @key prefixCharacter, ["control"]
    @key "s"

Package.command 'tmux-pane',
  spoken: 'mux pane'
  enabled: true
  scope: 'iterm-active'
  action: ->
    @key prefixCharacter, ["control"]
    @key "q"
