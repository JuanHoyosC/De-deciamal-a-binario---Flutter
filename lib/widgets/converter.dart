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
      _decimal = _decimal + dato;
      _convertir();
    });
  }

  void _convertir() {
    setState(() {
      _binary = int.parse(_decimal, radix: 10).toRadixString(2);
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
                child: Text("Decimal -> Binary"),
                padding: const EdgeInsets.all(8.0)),
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
                height: 100,
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
                        child: Text("2",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          _onPressed("2");
                        },
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text("3",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          _onPressed("3");
                        },
                      ),
                    )),
                  ],
                )),
            Container(
                height: 100,
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
                              child: Text("4",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                _onPressed("4");
                              },
                            ))),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text("5",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          _onPressed("5");
                        },
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text("6",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          _onPressed("6");
                        },
                      ),
                    )),
                  ],
                )),
            Container(
                height: 100,
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
                              child: Text("7",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                _onPressed("7");
                              },
                            ))),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text("8",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          _onPressed("8");
                        },
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.blue,
                        child: Text("9",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          _onPressed("9");
                        },
                      ),
                    )),
                  ],
                )),
            Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(
                              color: Colors.white,
                              child: Text("",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                              onPressed: () {},
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
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        color: Colors.white,
                        child: Text("",
                            style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.transparent,
                            )),
                        onPressed: () {},
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
