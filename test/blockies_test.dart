import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:blockies/blockies.dart';

void main() {
  // All outputs are compared with outputs from JS blockies library
  test('test createRandSeed()', () {
    expect(
        BlockiesPainter.createRandSeed(
            seed: '0x999767E4B0e7D455E921a4bD27Be50341cdeA5fe'),
        [-6173707601, 4319541941, 4213947214, 3695525512]);
    expect(
        BlockiesPainter.createRandSeed(
            seed:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
        [-18079906789, -9075364727, -4604185989, -10563091169]);
    expect(
        BlockiesPainter.createRandSeed(
            seed: '婀׬с蒳oצ𦗟ԵʃϽIbЅ񟦫򼟪÷全;󤅄񐟙󱾒Ǫᔪݲŵҭrޯ􊾅>񿲯𭗞'),
        [-1161510373, -3070486659, -198066547, 4032791216]);
    expect(BlockiesPainter.createRandSeed(seed: ''), [0, 0, 0, 0]);
    expect(BlockiesPainter.createRandSeed(seed: '    '), [32, 32, 32, 32]);
  });

  test('test rand()', () {
    const seed = '0x999767E4B0e7D455E921a4bD27Be50341cdeA5fe';
    final blockies = BlockiesPainter(seed: seed);

    blockies.randSeed = BlockiesPainter.createRandSeed(seed: seed);

    expect(
        blockies.randSeed, [-6173707601, 4319541941, 4213947214, 3695525512]);

    blockies.rand();
    expect(blockies.randSeed, [4319541941, 4213947214, 3695525512, 1772002917]);

    blockies.rand();
    expect(blockies.randSeed, [4213947214, 3695525512, 1772002917, 546005681]);

    blockies.rand();
    blockies.rand();
    blockies.rand();
    blockies.rand();
    expect(blockies.randSeed, [2044484645, 1939381480, 292047176, 1787641662]);
  });

  test('test createColor()', () {
    String _hslColorToString(HSLColor color) =>
        'hsl(${color.hue.toInt()},${color.saturation * 100}%,${color.lightness * 100}%)';

    const seed = '0x999767E4B0e7D455E921a4bD27Be50341cdeA5fe';
    final blockies = BlockiesPainter(seed: seed);

    blockies.randSeed = BlockiesPainter.createRandSeed(seed: seed);

    final c1 = blockies.createColor();
    expect(_hslColorToString(c1),
        'hsl(297,55.25522249750793%,70.58907024329528%)');
    final c2 = blockies.createColor();
    expect(_hslColorToString(c2),
        'hsl(39,73.22970730252564%,27.137906395364553%)');
    final c3 = blockies.createColor();
    expect(_hslColorToString(c3),
        'hsl(289,82.28396754711866%,56.87404676573351%)');
    final c4 = blockies.createColor();
    expect(_hslColorToString(c4),
        'hsl(232,80.67708998918533%,49.760763766244054%)');
  });

  test('test createImageData()', () {
    const seed = '0x999767E4B0e7D455E921a4bD27Be50341cdeA5fe';
    final blockies = BlockiesPainter(seed: seed);

    blockies.randSeed = BlockiesPainter.createRandSeed(seed: seed);

    expect(blockies.createImageData(5), [
      1,
      0,
      2,
      0,
      1,
      2,
      0,
      1,
      0,
      2,
      0,
      1,
      0,
      1,
      0,
      0,
      1,
      0,
      1,
      0,
      1,
      1,
      0,
      1,
      1
    ]);

    expect(blockies.createImageData(2), [1, 1, 1, 1]);
    blockies.createColor();
    expect(blockies.createImageData(3), [2, 1, 2, 0, 2, 0, 1, 0, 1]);
  });
}
