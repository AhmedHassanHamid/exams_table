import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContainerWidget extends StatelessWidget {
  double? height;
  double? width;
  Color? color;
  double? borderRadius;
  String? cText;
  double? Chorizontal;
  double? Cvertical;
  ContainerWidget({
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
    required this.cText,
    required this.Chorizontal,
    required this.Cvertical,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!.h,
      width: width!.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Chorizontal!, vertical:Cvertical!),
        child: Text(cText!,style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
      ),
    );
  }
}