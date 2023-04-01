class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> myRecommendations = <Recommendation>[
  Recommendation(
    name: "Przemysław Klejno",
    source: "LinkedIn",
    text: "Check out my linkedIn, to disover where I used to work",
  ),
  Recommendation(
    name: "pemix09",
    source: "github",
    text: "Check out my github, it's worth it!",
  )
];
