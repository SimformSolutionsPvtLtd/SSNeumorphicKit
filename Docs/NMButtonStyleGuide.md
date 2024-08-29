# NMButtonStyle Guide

## Overview

`NMButtonStyle` is a custom `ButtonStyle` that applies a neumorphic design to any `Button` in SwiftUI. This style offers a modern, sleek look with distinctive shadows and smooth effects. This guide will help you integrate and customize `NMButtonStyle` in your SwiftUI applications.

## Customize the Style

The `NMButtonStyle` initializer allows you to customize various aspects of the button. Below is a detailed table of available parameters:

| **Parameter**                 | **Description**                                                                                      | **Default Value**                          |
|-------------------------------|------------------------------------------------------------------------------------------------------|--------------------------------------------|
| `shape`                       | The shape to be used for the button's background.                                                     | None                                       |
| `primaryColor`                | The primary color of the button.                                                                     | `Color.Neumorphic.main`                    |
| `padding`                     | The padding around the button's content.                                                              | `30`                                       |
| `darkColor`                   | The color of the dark shadow.                                                                         | `Color.Neumorphic.darkShadow`              |
| `lightColor`                  | The color of the light shadow.                                                                        | `Color.Neumorphic.lightShadow`             |
| `innerShadowOffset`           | The offset of the inner shadow from the button's content.                                             | `2`                                        |
| `innerShadowBlurRadius`       | The blur radius for the button's inner shadow.                                                        | `2`                                        |
| `outerLightShadowOffset`      | The offset of the light shadow from the button's background.                                         | `3`                                        |
| `outerDarkShadowOffset`       | The offset of the dark shadow from the button's background.                                          | `5`                                        |
| `outerShadowRadius`           | The blur radius for the button's outer shadows.                                                       | `4`                                        |
| `innerShadowWidth`            | The width of the inner shadows.                                                                       | `8`                                        |
