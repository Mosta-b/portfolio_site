import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_site/core/utils/add_space.dart';
import 'package:portfolio_site/data/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: Column(
        children: [
          Expanded(
            flex: 40,
            child: Image(
              image: NetworkImage(
                project.projectImageLink,
              ),
              errorBuilder: (context, error, stackTrace) {
                return const Icon(CupertinoIcons.wifi_exclamationmark);
              },
            ),
          ),
          Expanded(
            flex: 40,
            child: Column(
              children: [
                Text(project.projectName),
                const AddWidth(width: 10),
                Text(project.description),
              ],
            ),
          ),
          Expanded(
            flex: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FilledButton(
                  onPressed: () {},
                  child: const Text("Github Link"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
