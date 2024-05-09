import '../../../data/project.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<Project> listOfProject = [
    Project(
      projectName: "Note",
      description:
          "Built a note-taking app to understand Firebase (cloud storage and authentication) and SQLite (local data management)."
          "Implemented functionalities like email verification, password rest and more.",
      projectImageLink: "projectImageLink",
      projectGithubLInk: "projectLInk",
    )
  ];
}
