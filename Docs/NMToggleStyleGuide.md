# NMToggleStyle Guide

## Overview

`NMToggleStyle` is a custom `ToggleStyle` that applies a Neumorphic design to the `Toggle` view in SwiftUI. It offers a sleek, modern appearance with shadows and smooth animations. This guide will help you integrate and customize `NMToggleStyle` in your SwiftUI applications.

## Customize the Style

The `NMToggleStyle` initializer allows you to customize various aspects of the toggle. Below is a detailed table of available parameters:

| <center>**Parameter**</center>             | <center>**Description**</center>                                                                                 | <center>**Default Value**</center>                       |
|------------------------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------|
| `tintColor`                  | The color of the toggle when it is in the "on" state.                                               | None                                       |
| `offTintColor`               | The color of the toggle when it is in the "off" state.                                              | `Color.Neumorphic.main`                    |
| `offDarkShadow`              | The dark shadow color when the toggle is off.                                                        | `Color.Neumorphic.darkShadow`              |
| `offLightShadow`             | The light shadow color when the toggle is off.                                                       | `Color.Neumorphic.lightShadow`             |
| `tintDarkShadowColor`        | The dark shadow color when the toggle is on.                                                         | `.black.opacity(0.5) [For iOS < 14]`                      |
| `tintLightShadowColor`       | The light shadow color when the toggle is on.                                                        | `.white.opacity(0.3) [For iOS < 14]`                      |
| `hideLabel`                  | A flag indicating whether the label should be hidden or displayed.                                  | None                                       |
| `animation`                  | The animation applied during the transition between on and off states (optional).                   | Default is `.bouncy(duration: 0.4)`       |
| `innerShadowRadius`          | The blur radius for inner shadows.                                                                    | `3`                                        |
| `thumbHeight`                | The height of the toggle's thumb (optional).                                                          | `nil` and It will take Max Height possible.                 |
| `thumbWidth`                 | The width of the toggle's thumb (optional).                                                           |  `nil` and It will take Max Width possible.                     |
| `thumbDarkShadowOffset`      | The offset for the dark shadow of the thumb.                                                           | `2`                                        |
| `thumbLightShadowOffset`     | The offset for the light shadow of the thumb.                                                          | `2`                                        |
| `thumbShadowRadius`          | The blur radius for the thumb's outer shadows.                                                         | `1`                                        |
| `height`                     | The height of the toggle.                                                                            | `45`                                       |
| `width`                      | The width of the toggle.                                                                             | `75`                                       |
| `thickness`                  | The thickness of the toggle's border.                                                                  | `5`                                        |