import 'package:e_tracker_upi/presentation/home/bloc/app_home_bloc.dart';
import 'package:e_tracker_upi/presentation/home/event/app_home_event.dart';
import 'package:e_tracker_upi/presentation/home/state/app_home_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_colors.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleFactor = size.width / 400;
    return   Container(
      height: 120 *scaleFactor,
      width: double.infinity,
      color: Colors.transparent,
      child: Material(
        color: Colors.transparent,
        elevation: 30,
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        context.read<AppHomeBloc>().add(AppHomeEvent.changeBottomBarMenu(BottomBarMenu.home()));
                      },
                      child: Container(
                        height: 75*scaleFactor,
                        color: appLightColor,
                        child: Icon(Icons.home),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        context.read<AppHomeBloc>().add(AppHomeEvent.changeBottomBarMenu(BottomBarMenu.transactions()));
                      },
                      child: Container(
                        height: 75*scaleFactor,
                        color: appLightColor,
                        child: Icon(Icons.location_on),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        context.read<AppHomeBloc>().add(AppHomeEvent.toggleFabMenu());
                      },
                      child: SizedBox(
                        height: 120*scaleFactor,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 75*scaleFactor,
                                width: double.infinity,
                                color: appLightColor,
                              ),
                            ),
                            SizedBox(
                              height: 200*scaleFactor,
                              width: 200*scaleFactor,
                              child: CustomPaint(
                                size: Size(200*scaleFactor, 200*scaleFactor), // canvas size
                                painter: CirclePainter(),
                              ),
                            ),
                            Positioned(
                              top: 25 *scaleFactor,
                              left: 10 *scaleFactor,
                              right: 10*scaleFactor,
                              child: CircleAvatar(
                                radius: 35 *scaleFactor,
                                backgroundColor: appPrimaryColor,
                                child: Icon(Icons.directions_car_filled,
                                  color: appLightColor,),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        context.read<AppHomeBloc>().add(AppHomeEvent.changeBottomBarMenu(BottomBarMenu.notes()));
                      },
                      child: Container(
                        height: 75*scaleFactor,
                        color: appLightColor,
                        child: Icon(Icons.credit_card_sharp),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        context.read<AppHomeBloc>().add(AppHomeEvent.changeBottomBarMenu(BottomBarMenu.profile()));
                      },
                      child: Container(
                          height: 75* scaleFactor,
                          color: appLightColor,
                          child: Icon(CupertinoIcons.gear_solid)
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
