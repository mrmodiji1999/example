import 'package:flutter/material.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class JacksmanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ShapeOfView(
              elevation: 2,
              height: 350,
              shape: DiagonalShape(
                angle: DiagonalAngle.deg(angle: 15),
              ),
              child: Stack(
                children: [
                  KenBurns(
                    maxScale: 5,
                    child: Image.asset(
                      "assets/background.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 18, top: 160),
                        child: Text(
                          "JOHN Dev",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 247, 63, 7),
                              fontSize: 24,
                              shadows: [
                                Shadow(
                                    color: Colors.white,
                                    blurRadius: 1,
                                    offset: Offset(2, 2)),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, top: 6.0),
                        child: Text(
                          "Android Developer",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                    color: Colors.white,
                                    blurRadius: 1,
                                    offset: Offset(2, 2)),
                              ]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 270),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  HelperWidget(
                    shape: CircleShape(borderColor: Colors.black, borderWidth: 3),
                  ),
                ],
              ),
            ),
            
          ],
        ),
          SizedBox(height: 200,),
Text(" this is example of shap of view",style: TextStyle(fontWeight: FontWeight.w900,fontSize:20),)
      ],
    );
  }
}

class HelperWidget extends StatelessWidget {
  const HelperWidget({super.key, this.shape});
  final Shape? shape;
  @override
  Widget build(BuildContext context) {
    return ShapeOfView(
      height: 100,
      width: 100,
      elevation: 2,
      shape: shape,
      child: Image.asset(
        "assets/profile.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
