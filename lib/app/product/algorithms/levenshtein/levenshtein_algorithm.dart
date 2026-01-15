final class LevenshteinAlgorithm {
  LevenshteinAlgorithm({required this.string1, required this.string2});

  final String string1;
  final String string2;

  int get levenshteinDistance {
    final len1 = string1.length;
    final len2 = string2.length;

    final dp = List<List<int>>.generate(
      len1 + 1,
      (_) => List.filled(len2 + 1, 0),
    );

    for (var i = 0; i <= len1; i++) {
      dp[i][0] = i;
    }
    for (var j = 0; j <= len2; j++) {
      dp[0][j] = j;
    }

    for (var i = 1; i <= len1; i++) {
      for (var j = 1; j <= len2; j++) {
        final cost = string1[i - 1] == string2[j - 1] ? 0 : 1;

        dp[i][j] = [dp[i - 1][j] + 1, dp[i][j - 1] + 1, dp[i - 1][j - 1] + cost]
            .reduce((a, b) => a < b ? a : b);
      }
    }

    return dp[len1][len2];
  }
}
