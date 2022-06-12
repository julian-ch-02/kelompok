import 'package:flutter/material.dart';

class custom_dialog extends StatelessWidget {
  custom_dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      insetPadding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.2,
        vertical: MediaQuery.of(context).size.height * 0.4,
      ),
      elevation: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Verified'),
          Icon(Icons.verified),
        ],
      ),
    );
  }
}
