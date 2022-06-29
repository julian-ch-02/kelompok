import 'package:flutter/material.dart';
import 'package:kelompok/widget/digit_holder.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/pin_provider.dart';
import 'package:kelompok/screen/new_screen.dart';

class pin_screen extends StatefulWidget {
  pin_screen({Key? key, required this.type}) : super(key: key);

  final String type;

  @override
  State<pin_screen> createState() => _PinScreenState();
}

class _PinScreenState extends State<pin_screen> {
  int selectedindex = 0;
  String code = '';

  @override
  Widget build(BuildContext context) {
    final pinProvider = context.read<pin_provider>();
    addDigit(int digit) {
      if (code.length > 3) {
        return;
      }
      setState(() {
        code = code + digit.toString();
        selectedindex = code.length;
      });
    }

    backspace() {
      if (code.length == 0) {
        return;
      }
      setState(() {
        code = code.substring(0, code.length - 1);
        selectedindex = code.length;
      });
    }

    TextStyle textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.black.withBlue(40),
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black.withBlue(40),
      body: Column(
        children: [
          Container(
            height: height * 0.15,
            width: width,
            color: Colors.black.withBlue(40),
            alignment: Alignment.center,
            child: SafeArea(
              child: Container(
                height: height * 0.06,
                width: height * 0.06,
              ),
            ),
          ),
          Container(
            height: height * 0.85,
            width: width,
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Unlock with your pin",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withBlue(40),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) {
                          return DigitHolder(
                            width: 50,
                            index: index,
                            selectedIndex: selectedindex,
                            code: code,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(1);
                                        },
                                        child: Text('1', style: textStyle)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(2);
                                        },
                                        child: Text('2', style: textStyle)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                      height: double.maxFinite,
                                      onPressed: () {
                                        addDigit(3);
                                      },
                                      child: Text('3', style: textStyle),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(4);
                                        },
                                        child: Text('4', style: textStyle)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(5);
                                        },
                                        child: Text('5', style: textStyle)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(6);
                                        },
                                        child: Text('6', style: textStyle)),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(7);
                                        },
                                        child: Text('7', style: textStyle)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(8);
                                        },
                                        child: Text('8', style: textStyle)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: FlatButton(
                                        height: double.maxFinite,
                                        onPressed: () {
                                          addDigit(9);
                                        },
                                        child: Text('9', style: textStyle)),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      height: double.maxFinite,
                                      onPressed: () {
                                        backspace();
                                      },
                                      child:
                                          Icon(Icons.backspace_outlined, color: Colors.black.withBlue(40), size: 30)),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                      height: double.maxFinite,
                                      onPressed: () {
                                        addDigit(0);
                                      },
                                      child: Text('0', style: textStyle)),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      if (widget.type == "check") {
                                        if (pinProvider.checkPin(code)) {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(builder: (context) => new_screen()),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text('Pin incorrect'),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        }
                                      } else {
                                        if (code.length != 4) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text("Pin haven't saved"),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text('Pin saved'),
                                              backgroundColor: Colors.green,
                                            ),
                                          );
                                          pinProvider.setPin(code);
                                        }
                                        Navigator.pop(context);
                                      }
                                    },
                                    child: Icon(
                                      (code.length != 4) ? Icons.close : Icons.check,
                                      color: Colors.black.withBlue(40),
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
