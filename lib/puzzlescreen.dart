import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class PuzzleScreen extends StatefulWidget {
  PuzzleScreen({Key? key}) : super(key: key);

  @override
  State<PuzzleScreen> createState() => _PuzzleScreenState();
}

class _PuzzleScreenState extends State<PuzzleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Maze(
                player: MazeItem("run.png", ImageType.asset),
                columns: 3,
                rows: 6,
                wallThickness: 4.0,
                wallColor: Theme.of(context).primaryColor,
                finish: MazeItem("girl.png", ImageType.asset),
                onFinish: () => print('Hi from finish line!'))));
    ;
  }
}
