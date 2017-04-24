Package.command 'launch-slack',
  spoken: 'slacker'
  enabled: true
  action: ->
    @key 's', ['command', 'option', 'shift']

Package.command 'launch-xcode',
  spoken: 'cody'
  enabled: true
  action: ->
    @key 'x', ['command', 'option', 'shift']

apps =
  foxy: "Firefox"
  evernote: "Evernote.app"
  nightly: "Nightly"
  turmit: "iTerm"
  skippy: "Skype"
  safari: "Safari"

_.each apps, (value, key) ->
  Package.command "launch #{value.toLowerCase()}",
    spoken: key
    description: "Launch #{value}"
    enabled: true
    action: ->
      @openApplication value
