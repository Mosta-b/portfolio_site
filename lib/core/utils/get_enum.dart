import '../enum/enum.dart';

AppBarHeaders getEnumFromAppBarHeaders(String name) {
  switch (name) {
    case 'Home':
      return AppBarHeaders.home;
    case 'About me':
      return AppBarHeaders.aboutMe;
    case 'Projects':
      return AppBarHeaders.projects;
    case 'Contact':
      return AppBarHeaders.contact;
    default:
      return AppBarHeaders.home;
  }
}
