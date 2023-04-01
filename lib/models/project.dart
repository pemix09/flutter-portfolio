class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> myProject = <Project>[
  Project(
    title: "Responsive Admin Panel",
    description: "Some nice description about Admin Panel",
  ),
  Project(
    title: "Lollipop backend",
    description: "Backend written in .NET 6",
  )
];
