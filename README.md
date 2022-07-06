[![pub.dev][pub-dev-shield]][pub-dev-url]
[![Effective Dart][effective-dart-shield]][effective-dart-url]
[![Stars][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<p align="center">
<img src="https://github.com/nextchapterstudio/blockies/raw/main/blockies_sample.png"
</p>

## Blockies
A tiny library for generating blocky identicons. Direct port of JavaScript library [https://www.npmjs.com/package/@download/blockies](@download/blockies).

## Introduction
Blockies library generates a variety of an Identicon which is a visual representation of a hash value (eg. blockchain address), that serves to identify a user of a computer system as a form of avatar while protecting the user's privacy.

By default the generated identicon is 10x10 blocks.

## Usage

```dart
// Create blocky
Blockies(
  seed: '0xe95C0ed548f63B181f6528B8e3c57a7c93C2E3Dc', // seed used to generate identicon
  color: Color(0xFFD95030),     // to manually specify the icon color, default: random
  bgColor: Color(0x000000),     // choose a different background color, default: random based on the seed
  spotColor: Color(0xFFE6D690), // choose a different spot color, default: random based on the seed
  size: 8,                      // width and height of the icon in blocks, default: 10
);
```

## Changelog

Please see [CHANGELOG](CHANGELOG.md) for more information on what has changed recently.

## Credits

- [Tom Friml](https://github.com/3ph)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[pub-dev-shield]: https://img.shields.io/pub/v/blockies?style=for-the-badge
[pub-dev-url]: https://pub.dev/packages/blockies
[effective-dart-shield]: https://img.shields.io/badge/style-effective_dart-40c4ff.svg?style=for-the-badge
[effective-dart-url]: https://github.com/tenhobi/effective_dart
[stars-shield]: https://img.shields.io/github/stars/nextchapterstudio/blockies.svg?style=for-the-badge&logo=github&colorB=deeppink&label=stars
[stars-url]: https://packagist.org/packages/nextchapterstudio/blockies
[issues-shield]: https://img.shields.io/github/issues/nextchapterstudio/blockies.svg?style=for-the-badge
[issues-url]: https://github.com/nextchapterstudio/blockies/issues
[license-shield]: https://img.shields.io/github/license/nextchapterstudio/blockies.svg?style=for-the-badge
[license-url]: https://github.com/nextchapterstudio/blockies/blob/master/LICENSE
