# Typst-FontAwesome

[FontAwesome](https://fontawesome.com/) binding for [Typst](https://typst.app/docs/).

## Usage

1. Download the `fontawesome.typ` file
2. Import it into your Typst file, and use it with `icon()` function like the following example

```typst
#import "fontawesome": *

icon("faAmazonPay")
```

You can also customize the icon like this

```typst
#import "fontawesome": *

icon(
  "faAmazonPay",
  baseline: 0.25em,
  height: 1.0em,
  width: 1.5em)
```

Checkup [manual](https://github.com/ivaquero/typst-fontawesome/blob/main/manual.pdf) for more details.

![demo](demo.png)

## Changelog

### v0.0.2 (2023-07-28)

- update structures
- enable customization

### v0.0.1 (2023-07-27)

- initial release
- add fontawesome v6.4.0
