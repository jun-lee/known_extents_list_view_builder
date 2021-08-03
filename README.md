# known_extents_list_view_builder

## See the difference
Watch [this video](https://vimeo.com/582598514) taken in release mode.

## About
This package is intended to address [a performance issue in Flutter](https://github.com/flutter/flutter/issues/52207). Whereas the internal flutter list only allows you to pass in a fixed `itemExtent` to optimize for uniform lists, this allows you to pass in a list of `itemExtents`. Includes a basic list and a reorderable list.

## Examples
Find examples of the basic list and of the reorderable lists side by side as shown in the video in `examples/lib`.

## Disclaimer
This is not official Flutter package, nor is it put out by the Flutter team. Maintainance and edges cases are not guaranteed.

If you don't need your list to be reorderable, and would prefer to scroll to indexes rather than exact pixel values, consider using [scrollable_positioned_list](https://pub.dev/packages/scrollable_positioned_list).

## Hire me
https://www.linkedin.com/in/benjamin-lee-84068818/
