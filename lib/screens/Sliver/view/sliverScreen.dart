import 'package:flutter/material.dart';

class sliverScreen extends StatefulWidget {
  const sliverScreen({Key? key}) : super(key: key);

  @override
  State<sliverScreen> createState() => _sliverScreenState();
}

class _sliverScreenState extends State<sliverScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("SliverApp Bar"),
              elevation: 2,
              collapsedHeight: 80,
              expandedHeight: 100,
              floating: true,
            ),
            SliverGrid(
                delegate:
                    SliverChildBuilderDelegate((context, index) => Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          color: Colors.teal,
                        ),
                      childCount: 15
                    ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
          ],
        ),
      ),
    );
  }
}
