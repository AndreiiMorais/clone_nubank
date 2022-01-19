import 'package:flutter/material.dart';

class CustomBottonSheet {
  showBottomSheet(
      {required BuildContext context,
      required List<Widget> children,
      double? height,
      double? width}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ],
        );
      },
    );
  }
}


