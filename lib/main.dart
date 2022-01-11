import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<MainApp> {
  final double _padding = 16.0;

  final MaterialColor _mprimarySwatchColor = Colors.orange;
  final Color _primarySwatchColor = Colors.orange;
  final Color _titleAppBarColor = Colors.white;
  final double _buttonFontSize = 24.0;
  final Color _buttonColorWhite = Colors.white;
  final Color? _buttonHighlightColor = Colors.grey[800];
  final Color? _buttonColorGrey = Colors.grey[500];

  int? valueA;
  int? valueB;

  var sbValue = StringBuffer();
  String? operator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: _mprimarySwatchColor),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(
              color: _titleAppBarColor,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              key: const Key("expanded_bagian_atas"),
              flex: 1,
              child: Container(
                key: const Key("expanded_container_bagian_atas"),
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(_padding),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    AutoSizeText(
                      sbValue.toString(),
                      style: Theme.of(context).textTheme.headline2,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              key: const Key("expanded_bagian_bawah"),
              flex: 1,
              child: Container(
                key: const Key("expanded_container_bagian_bawah"),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  key: const Key("expanded_column_bagian_bawah"),
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "C",
                                style: TextStyle(
                                  color: _primarySwatchColor,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                clearValue();
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Icon(
                                Icons.backspace,
                                color: _buttonColorGrey,
                              ),
                              onPressed: () {
                                deleteValue();
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "/",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("/");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "7",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("7");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("8");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "9",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("9");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "x",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("x");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("4");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "5",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("5");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "6",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("6");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("-");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("1");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("2");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("3");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "+",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("+");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _buttonColorWhite,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  color: _buttonColorGrey,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("0");
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: _primarySwatchColor,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                              child: Text(
                                "=",
                                style: TextStyle(
                                  color: _buttonColorWhite,
                                  fontSize: _buttonFontSize,
                                ),
                              ),
                              onPressed: () {
                                appendValue("=");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    sbValue.write("0");
    operator = "";
  }

  void appendValue(String str) => setState(() {
        bool isDoCalculate = false;
        String strValue = sbValue.toString();
        String lastCharacter = strValue.substring(strValue.length - 1);
        if (str == "0" &&
            (lastCharacter == "/" ||
                lastCharacter == "x" ||
                lastCharacter == "-" ||
                lastCharacter == "+")) {
          return;
        } else if (str == "0" && sbValue.toString() == "0") {
          return;
        } else if (str == "=") {
          isDoCalculate = true;
        } else if (str == "/" || str == "x" || str == "-" || str == "+") {
          if (operator!.isEmpty) {
            operator = str;
          } else {
            isDoCalculate = true;
          }
        }

        if (!isDoCalculate) {
          if (sbValue.toString() == "0" && str != "0") {
            sbValue.clear();
          }
          sbValue.write(str);
        } else {
          List<String> values = sbValue.toString().split(operator!);
          if (values.length == 2 &&
              values[0].isNotEmpty &&
              values[1].isNotEmpty) {
            valueA = int.parse(values[0]);
            valueB = int.parse(values[1]);
            sbValue.clear();
            int total = 0;
            switch (operator) {
              case "/":
                total = (valueA! ~/ valueB!);
                break;
              case "x":
                total = (valueA! * valueB!);
                break;
              case "-":
                total = (valueA! - valueB!);
                break;
              case "+":
                total = (valueA! + valueB!);
            }
            sbValue.write(total);
            if (str == "/" || str == "x" || str == "-" || str == "+") {
              operator = str;
              sbValue.write(str);
            } else {
              operator = "";
            }
          } else {
            String strValue = sbValue.toString();
            String lastCharacter = strValue.substring(strValue.length - 1);
            if (str == "/" || str == "x" || str == "-" || str == "+") {
              sbValue.clear();
              sbValue
                  .write(strValue.substring(0, strValue.length - 1) + "" + str);
              operator = str;
            } else if (str == "=" &&
                (lastCharacter == "/" ||
                    lastCharacter == "x" ||
                    lastCharacter == "-" ||
                    lastCharacter == "+")) {
              operator = str;
              sbValue.clear();
              sbValue.write(strValue.substring(0, strValue.length - 1));
            }
          }
        }
      });

  void deleteValue() => setState(() {
        String strValue = sbValue.toString();
        if (strValue.length > 0) {
          String lastCharacter = strValue.substring(strValue.length - 1);
          if (lastCharacter == "/" ||
              lastCharacter == "x" ||
              lastCharacter == "-" ||
              lastCharacter == "+") {
            operator = "";
          }
          strValue = strValue.substring(0, strValue.length - 1);
          sbValue.clear();
          sbValue.write(strValue.length == 0 ? "0" : strValue);
        }
      });

  void clearValue() => setState(() {
        operator = "";
        sbValue.clear();
        sbValue.write("0");
      });
}
