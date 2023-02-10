import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  String txt = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
              ),
              child: Text(
                txt,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt = (double.parse(txt) * double.parse(txt)).toString();
                    });
                  },
                  child: Text(
                    'x2',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt = (double.parse(txt) / 100).toString();
                    });
                  },
                  child: Text(
                    '%',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt = '';
                    });
                  },
                  child: Text('C'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt = txt.substring(0, txt.length - 1);
                    });
                  },
                  child: Text('clear'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '1';
                    });
                  },
                  child: Text('1'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '2';
                    });
                  },
                  child: Text('2'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '3';
                    });
                  },
                  child: Text('3'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '+';
                    });
                  },
                  child: Text('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '4';
                    });
                  },
                  child: Text('4'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '5';
                    });
                  },
                  child: Text('5'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '6';
                    });
                  },
                  child: Text('6'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '-';
                    });
                  },
                  child: Text('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '7';
                    });
                  },
                  child: Text('7'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '8';
                    });
                  },
                  child: Text('8'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '9';
                    });
                  },
                  child: Text('9'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '*';
                    });
                  },
                  child: Text('*'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '.';
                    });
                  },
                  child: Text('.'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '0';
                    });
                  },
                  child: Text('0'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (txt.contains('+')) {
                        txt = (num.parse(txt.substring(0, txt.indexOf('+'))) +
                                num.parse(txt.substring(txt.indexOf('+') + 1)))
                            .toString();
                      }
                      if (txt.contains('-')) {
                        txt = (num.parse(txt.substring(0, txt.indexOf('-'))) -
                                num.parse(txt.substring(txt.indexOf('-') + 1)))
                            .toString();
                      }
                      if (txt.contains('*')) {
                        txt = (num.parse(txt.substring(0, txt.indexOf('*'))) *
                                num.parse(txt.substring(txt.indexOf('*') + 1)))
                            .toString();
                      }
                      if (txt.contains('/')) {
                        txt = (num.parse(txt.substring(0, txt.indexOf('/'))) /
                                num.parse(txt.substring(txt.indexOf('/') + 1)))
                            .toString();
                      }
                    });
                  },
                  child: Text('='),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      txt += '/';
                    });
                  },
                  child: Text('/'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
