import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Offer App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _offerPercent = 0;
  double _productPrice = 50;

  void _incrementPercent() {
    setState(() {
      if (_offerPercent < 100.0) {
        _offerPercent++;
        _calcPriceAfterSale();
      }
    });
  }

  void _decrementPercent() {
    setState(() {
      if (_offerPercent > 0.0) {
        _offerPercent--;
        _calcPriceAfterSale();
      }
    });
  }

  double _calcPriceAfterSale() => _productPrice * (1- _offerPercent / 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              child: RichText(
                text : TextSpan(
                  text: "Current Product Price: ",
                  style: TextStyle(color: Colors.green),
                  children: <TextSpan>[
                    TextSpan(
                        text: '$_productPrice EG',
                        style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("set offer to the product",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                      child: Text("+"),
                      color: Colors.blue,
                      onPressed: _incrementPercent,
                      textColor: Colors.white),
                ),
                Text("$_offerPercent%"),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                      child: Text("-"),
                      color: Colors.blue,
                      onPressed: _decrementPercent,
                      textColor: Colors.white),
                )
              ],
            ),
            RichText(
              text: TextSpan(
                text: "price after apply offer ",
                style: TextStyle(color: Colors.black87),
                children: <TextSpan>[
                  TextSpan(
                      text: '${_calcPriceAfterSale()} EG',
                      style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
