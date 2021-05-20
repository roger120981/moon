https://moon-surface.coingaming.io/tutorials/process-description-and-team-interactions
https://moon-surface.coingaming.io/tutorials/installation


# Preferences to consider when writing code

In writing code try to remember following rules:

1. Code should be as short and simple as possible (less lines is better)
2. Code should be as explicit as possible (and compiler should catch as many errors as possible)

So as an example, when considering following code approaches, which one you should pick?

```
alias Moon.Components.TextInput

<TextInput
  left_icon="icon_zoom"
  right_icon="icon_close_rounded"
  right_icon_click="clear_search"
  placeholder="Search for dashboard, segments and more"
/>
```

or 

```
alias Moon.Components.TextInput
alias Moon.Assets.Icons.IconCloseRounded
alias Moon.Assets.Icons.IconZoom

<TextInput placeholder="Search for dashboard, segments and more">
  <template for="left_icon">
    <IconZoom>
  </template>
  <template for="right_icon">
    <IconCloseRounded on_click="clear_search">
  </template>
</TextInput>
```

