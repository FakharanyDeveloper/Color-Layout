import 'package:flutter/material.dart';
final _PADDING_CONST = 15.0;

class _FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Container 1")),
      height: 80,
      width: double.infinity,
      color: Colors.red,
    );
  }
}

class _SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: _PADDING_CONST),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1/1,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text("Container 2"),
                ),
              ),
            ),
          ),
          Container(
            width: _PADDING_CONST,
          ),
          Expanded(
            child: AspectRatio(
                aspectRatio: 1/1,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        child: Center(
                          child: Text("Container 3"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.purple,
                        child: Center(
                          child: Text("Container 4"),
                        ),
                      ),
                    )
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _PADDING_CONST),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 100,
              child: Center(
                child: Text("Container 5"),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightGreen,
              height: 100,
              child: Center(
                child: Text("Container 6"),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              height: 100,
              child: Center(
                child: Text("Container 7"),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pinkAccent,
              height: 100,
              child: Center(
                child: Text("Container 9"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AdjustableBlock extends StatelessWidget {
  final double widthFactor;
  _AdjustableBlock(this.widthFactor);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _PADDING_CONST),
      child: Row(
        children: [
          Expanded(
            child: FractionallySizedBox(
              widthFactor: widthFactor,
              alignment: Alignment.centerLeft,
              child: Container(
                height: 30,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Container(
          color: Colors.grey[200],
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
          child: Column(
            children: [
              _FirstRow(),
              _SecondRow(),
              _ThirdRow(),
              _AdjustableBlock(1.0),
              _AdjustableBlock(0.75),
              _AdjustableBlock(0.5)
            ],
          ),
        ),
      ),
    );
  }
}
