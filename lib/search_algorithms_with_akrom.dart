library search_algorithms;

import 'dart:core';
import 'dart:math';

class SearchAlgorithms {
  static int linearSearch<T>(List<T> list, T target) {
    final stopwatch = Stopwatch()..start();

    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        stopwatch.stop();
        return i;
      }
    }

    stopwatch.stop();
    return -1;
  }

  static int binarySearch<T extends Comparable>(List<T> list, T target) {
    final stopwatch = Stopwatch()..start();
    int left = 0;
    int right = list.length - 1;

    while (left <= right) {
      int middle = left + (right - left) ~/ 2;
      if (list[middle] == target) {
        stopwatch.stop();
        return middle;
      } else if (list[middle].compareTo(target) < 0) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
    }

    stopwatch.stop();
    return -1;
  }

  static int jumpSearch<T extends Comparable>(List<T> list, T target) {
    final stopwatch = Stopwatch()..start();
    int n = list.length;
    int step = sqrt(n).toInt();
    int prev = 0;

    while (list[min(step, n) - 1].compareTo(target) < 0) {
      prev = step;
      step += sqrt(n).toInt();
      if (prev >= n) {
        stopwatch.stop();
        return -1;
      }
    }

    while (list[prev].compareTo(target) < 0) {
      prev++;
      if (prev == min(step, n)) {
        stopwatch.stop();
        return -1;
      }
    }

    if (list[prev] == target) {
      stopwatch.stop();
      return prev;
    }

    stopwatch.stop();
    return -1;
  }
}
