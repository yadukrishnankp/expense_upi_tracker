
import 'package:e_tracker_upi/core/style/style_extension.dart';
import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum Segment {left,right}

class TwoSegmentWidget extends StatefulWidget {
  final String leftTitle;
  final String rightTitle;
  final Segment segment;
  final void  Function(Segment segment) onChange;
  const TwoSegmentWidget({super.key, required this.leftTitle, required this.rightTitle, required this.segment, required this.onChange});

  @override
  State<TwoSegmentWidget> createState() => _TwoSegmentWidgetState();
}

class _TwoSegmentWidgetState extends State<TwoSegmentWidget> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Color?> _leftColorAnimation;
  late Animation<Color?> _rightColorAnimation;
  late Animation<Color?> _leftTineColorAnimation;
  late Animation<Color?> _rightTintColorAnimation;

  bool _isColorTransferred = false;
  Segment _selectedSegment = Segment.left;



  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    _leftColorAnimation = ColorTween(
      begin: appPrimaryColor,
      end: appPrimaryColorLight,
    ).animate(_controller);
    _leftTineColorAnimation = ColorTween(
        begin: appLightColor,
        end: appDarkColor
    ).animate(_controller);

    _rightColorAnimation = ColorTween(
      begin: appPrimaryColorLight,
      end: appPrimaryColor,
    ).animate(_controller);
    _rightTintColorAnimation = ColorTween(
        begin: appDarkColor,
        end: appLightColor
    ).animate(_controller);
  }

  void _toggleTransfer(Segment segment) {
    if(segment != _selectedSegment){
      setState(() {
        _selectedSegment = segment;
        _isColorTransferred = !_isColorTransferred;
        _isColorTransferred ? _controller.forward() : _controller.reverse();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleFactor = size.width / 400;
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: 57 * scaleFactor,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                flex:1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal:6),
                  child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context,child) {
                        return Material(
                          color: _leftColorAnimation.value,
                          borderRadius: BorderRadius.circular(25),
                          child: GestureDetector(
                            onTap: () {
                              _toggleTransfer(Segment.left);
                              widget.onChange(Segment.left);
                            },
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: _leftColorAnimation.value,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(widget.leftTitle,
                                    style: context.appInterTextStyle(
                                      color: _leftTineColorAnimation.value,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),
              Expanded(
                flex:1,
                child : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 6),
                  child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context,child) {
                        return Material(
                          color:  _rightColorAnimation.value,
                          borderRadius: BorderRadius.circular(25),
                          child: GestureDetector(
                            onTap: () {
                              _toggleTransfer(Segment.right);
                              widget.onChange(Segment.right);
                            },
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: _rightColorAnimation.value,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon(Icons.bookmark_border,color: _rightTintColorAnimation.value,),
                                  SizedBox(width: 2,),
                                  Text(widget.rightTitle,
                                    style: context.appInterTextStyle(
                                      color: _rightTintColorAnimation.value,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}