import 'package:flutter_test/flutter_test.dart';
import 'package:search_algorithms/search_algorithms_with_akrom.dart';

void main() {
  group('Search Algorithms', () {
    final List<int> intList = List<int>.generate(10000, (index) => index);
    final List<String> stringList =
        List<String>.generate(10000, (index) => 'Item $index');

    test('Linear Search', () {
      expect(SearchAlgorithms.linearSearch(intList, 9999), 9999);
      expect(SearchAlgorithms.linearSearch(stringList, 'Item 9999'), 9999);
      expect(SearchAlgorithms.linearSearch(intList, 10000), -1);
    });

    test('Binary Search', () {
      expect(SearchAlgorithms.binarySearch(intList, 9999), 9999);
      expect(SearchAlgorithms.binarySearch(stringList, 'Item 9999'), 9999);
      expect(SearchAlgorithms.binarySearch(intList, 10000), -1);
    });

    test('Jump Search', () {
      expect(SearchAlgorithms.jumpSearch(intList, 9999), 9999);
      expect(SearchAlgorithms.jumpSearch(stringList, 'Item 9999'), 9999);
      expect(SearchAlgorithms.jumpSearch(intList, 10000), -1);
    });
  });
}
