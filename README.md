# Typst-FASVG

![code size](https://img.shields.io/github/languages/code-size/ivaquero/typst-fasvg.svg)
![repo size](https://img.shields.io/github/repo-size/ivaquero/typst-fasvg.svg)

Offline [FontAwesome](https://fontawesome.com/) Binding for [Typst](https://typst.app/docs/).

## Usage

1. Download the fasvg latest desktop version from [FontAwesome Official Site](https://github.com/FortAwesome/Font-Awesome/releases), unzip it into your workspace folder, and rename it as `fasvg`.
2. Download the `fasvg.typ` file, and place it into your workspace folder as well.
3. Import it into your Typst file, and use it with `fa()` function like the following example

```typst
#import "fasvg": *

#fa("brand-amazon-pay")
```

You can also customize the icon like this

```typst
#import "fasvg": *

#fa(
  "brand-amazon-pay",
  baseline: 0.25em,
  height: 1.0em,
  width: 1.5em)
```

Checkup [manual](https://github.com/ivaquero/typst-fasvg/blob/main/manual.pdf) for more details.

![demo](demo.png)

## Changelog

### v0.1.0 (2023-08-28)

- update fasvg to v6.5.1

### v0.0.4 (2023-08-28)

- change naming pattern

### v0.0.3 (2023-08-16)

- update fasvg to v6.4.2
- change naming pattern

### v0.0.2 (2023-07-28)

- update structures
- enable customization

### v0.0.1 (2023-07-27)

- initial release
- add fasvg v6.4.0
