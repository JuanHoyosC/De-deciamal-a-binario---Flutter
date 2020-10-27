import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binary = "11";
  String _decimal = "3"; //

  void _onPressed(dato) {
    setState(() {
      _binary = _binary + dato;
      _convertir();
    });
  }

  void _convertir() {
    setState(() {
      _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    });
  }

  void _restart() {
    setState(() {
      _binary = "";
      _decimal = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                child: Text("Binary -> Decimal"),
                padding: const EdgeInsets.all(8.0)),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          Color(int.parse("#ff8e2a".replaceAll('#', '0xff'))),
                      fontSize: 35),
                )),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_decimal',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#ff8e2a".replaceAll('#', '0xff'))),
                    fontSize: 35),
              ),
            ),
            Container(
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(
                              color: Colors.blue,
                              child: Text("1",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                _onPressed("1");
                              },
                            ))),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text("0",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          _onPressed("0");
                        },
                      ),
                    )),
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 100,
              child: MaterialButton(
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                    _restart();
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
            ),
          ]),
    );
  }
}
