# Typst-FontAwesome

![code size](https://img.shields.io/github/languages/code-size/ivaquero/typst-fontawesome.svg)
![repo size](https://img.shields.io/github/repo-size/ivaquero/typst-fontawesome.svg)

Offline [FontAwesome](https://fontawesome.com/) Binding for [Typst](https://typst.app/docs/).

## Usage

1. Download the FontAwesome latest desktop version from [FontAwesome Official Site](https://github.com/FortAwesome/Font-Awesome/releases/download/6.4.2/fontawesome-free-6.4.2-desktop.zip), unzip it into your workspace folder, and rename it as `fontawesome`.
2. Download the `fontawesome.typ` file, and place it into your workspace folder as well.
3. Import it into your Typst file, and use it with `fa()` function like the following example

```typst
#import "fontawesome": *

fa("amazon-pay")
```

You can also customize the icon like this

```typst
#import "fontawesome": *

fa(
  "amazon-pay",
  baseline: 0.25em,
  height: 1.0em,
  width: 1.5em)
```

Checkup [manual](https://github.com/ivaquero/typst-fontawesome/blob/main/manual.pdf) for more details.

![demo](demo.png)

## Changelog

### v0.0.3 (2023-08-16)

- update fontawesome to v6.4.2
- change naming pattern

### v0.0.2 (2023-07-28)

- update structures
- enable customization

### v0.0.1 (2023-07-27)

- initial release
- add fontawesome v6.4.0
