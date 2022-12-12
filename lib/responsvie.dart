import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Responsivee extends StatelessWidget {
  const Responsivee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.r),
          width: .8.sw,
          height: .8.sh,
          color: Color.fromARGB(255, 151, 35, 126),
          child: Text(
            'FAVAAAAAAAAAAAS',
            // style: GoogleFonts.alegreyaSc(
            //   fontSize: 30.sp,
            //   color: Colors.white,
            // ),
          ),
        ),
      ),
    );
  }
}
