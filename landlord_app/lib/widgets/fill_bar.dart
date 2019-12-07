import 'package:flutter/material.dart';
import 'package:landlord_app/widgets/circle_avatar_with_border.dart';

class FillBar extends StatelessWidget {
  final String text;
  final Color color;
  final double fill;

  FillBar(this.text, this.fill, [this.color]);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: LayoutBuilder(
        builder: (ctx, constraints) {
          return Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )),
                width: constraints.maxWidth * 0.9,
                height: 30,
                child: Stack(
                  children: <Widget>[
                    FractionallySizedBox(
                      widthFactor: fill,
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: color == null ? Colors.green : color,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
