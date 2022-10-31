void main() {
  List a = [
    ['a', 'b', 'c'],
    ['d', 'e', 'f'],
    ['g', 'h', 'i'],
    ['j', 'k', 'l'],
    ['m', 'n', 'o'],
    ['p', 'q', 'r', 's'],
    ['t', 'u', 'v'],
    ['w', 'x', 'y', 'z'],
  ];
  int n = 2345;
  if (n > 9) {
    List comb = [];
    int n1 = int.parse(n.toString()[0]);
    int group1 = n1 - 2;
    int row1 = 0;
    int row2 = 0;
    for (; row1 < a[group1].length; row1++) {
      for (int nd = 1; nd < n.toString().length; nd++) {
        int n2 = int.parse(n.toString()[nd]);
        int group2 = n2 - 2;
        for (; row2 < a[group2].length; row2++) {
          comb.add(a[group1][row1] + a[group2][row2]);
        }
        row2 = 0;
      }
    }
    print(comb);
  } else {
    print(a[n - 2]);
  }
}
