import 'package:flutter/material.dart';
import 'package:percentage_app/main.dart';
import 'package:flutter/services.dart';

class PercentOfNumber extends StatefulWidget {
  const PercentOfNumber({Key? key}) : super(key: key);

  @override
  _PercentOfNumberState createState() => _PercentOfNumberState();
}

class _PercentOfNumberState extends State<PercentOfNumber> {
  String? result;

  @override
  void dispose() {
    initialController.clear();
    percentController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Percent of a Number"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Initial value",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: initialController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Percent",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: percentController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(19, 2, 0, 0),
                    child: Text(
                      "%",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Calculate",
                textScaleFactor: 1.2,
              ),
              onPressed: () {
                double percentage = int.parse(initialController.text) *
                    int.parse(percentController.text) /
                    100;
                setState(() {
                  result = percentage.toString();
                });
              },
            ),
            SizedBox(height: 5),
            result == null ? Container() : Text("The result is: $result"),
            SizedBox(
              height: 30,
            ),
            Text(
                "Info: This will show you the value of a percent in a number. "),
            Text("e.g 50% of 300 is = 150"),
          ],
        ),
      ),
    );
  }
}

class DifferenceInPercent extends StatefulWidget {
  const DifferenceInPercent({Key? key}) : super(key: key);

  @override
  _DifferenceInPercentState createState() => _DifferenceInPercentState();
}

class _DifferenceInPercentState extends State<DifferenceInPercent> {
  String? result;

  @override
  void dispose() {
    initialController.clear();
    percentController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Difference in %"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Before",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: initialController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "After",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: percentController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Calculate",
                textScaleFactor: 1.2,
              ),
              onPressed: () {
                double increase = double.parse(percentController.text) -
                    double.parse(initialController.text);
                double percentage =
                    increase / double.parse(initialController.text) * 100;
                setState(() {
                  result = percentage.toString();
                });
              },
            ),
            SizedBox(height: 5),
            result == null ? Container() : Text("The result is: $result%"),
            SizedBox(
              height: 30,
            ),
            Text(
                "Info: This will show you the Difference between two numbers in Percentage"),
            Text("e.g 50 and 100 = 100% "),
          ],
        ),
      ),
    );
  }
}

class Increase extends StatefulWidget {
  const Increase({Key? key}) : super(key: key);

  @override
  _IncreaseState createState() => _IncreaseState();
}

class _IncreaseState extends State<Increase> {
  String? result;

  @override
  void dispose() {
    initialController.clear();
    percentController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increase"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Initial value",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: initialController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Increased by",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: percentController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(19, 2, 0, 0),
                    child: Text(
                      "%",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Calculate",
                textScaleFactor: 1.2,
              ),
              onPressed: () {
                double increase = double.parse(percentController.text) + 100;
                double percentage =
                    increase / 100 * double.parse(initialController.text);
                setState(() {
                  result = percentage.toStringAsFixed(2);
                });
              },
            ),
            SizedBox(height: 5),
            result == null ? Container() : Text("The result is: $result"),
            SizedBox(
              height: 30,
            ),
            Text(
                "Find the value after a number has been increased or decreased by a percentage."),
            Text("Example: What do I get if I increase 156 by 10%?"),
          ],
        ),
      ),
    );
  }
}

class Decrease extends StatefulWidget {
  const Decrease({Key? key}) : super(key: key);

  @override
  _DecreaseState createState() => _DecreaseState();
}

class _DecreaseState extends State<Decrease> {
  String? result;

  @override
  void dispose() {
    initialController.clear();
    percentController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decrease"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Initial value",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: initialController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(5, 50, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Decreased by",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: percentController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(19, 2, 0, 0),
                    child: Text(
                      "%",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Calculate",
                textScaleFactor: 1.2,
              ),
              onPressed: () {
                double increase = double.parse(percentController.text) - 100;
                double percentage =
                    increase / 100 * double.parse(initialController.text);
                setState(() {
                  result = percentage.toStringAsFixed(2);
                });
              },
            ),
            SizedBox(height: 5),
            result == null ? Container() : Text("The result is: $result"),
            SizedBox(
              height: 30,
            ),
            Text(
                "Find the value after a number has been decreased by a percentage."),
            Text("Example: What do I get if I decrease 156 by 10%?"),
          ],
        ),
      ),
    );
  }
}

class ValBeforeDecrease extends StatefulWidget {
  const ValBeforeDecrease({Key? key}) : super(key: key);

  @override
  _ValBeforeDecreaseState createState() => _ValBeforeDecreaseState();
}

class _ValBeforeDecreaseState extends State<ValBeforeDecrease> {
  String? result;

  @override
  void dispose() {
    initialController.clear();
    percentController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value before decrease"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Initial value",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: initialController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(5, 50, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Decreased by",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: percentController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(19, 2, 0, 0),
                    child: Text(
                      "%",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Calculate",
                textScaleFactor: 1.2,
              ),
              onPressed: () {
                double increase = 100 - double.parse(percentController.text);
                double divide = increase / 100;
                double percentage =
                    double.parse(initialController.text) / divide;
                setState(() {
                  result = percentage.toStringAsFixed(2);
                });
              },
            ),
            SizedBox(height: 5),
            result == null ? Container() : Text("The result is: $result"),
            SizedBox(
              height: 30,
            ),
            Text(
                "find the original number, when you have been given a number and the percentage decrease."),
            Text(
                "Example: if a toy in a sale marked 20% off costs \$210, what is the original price. (Answer: \$262.50)"),
          ],
        ),
      ),
    );
  }
}

class ValBeforeIncrease extends StatefulWidget {
  const ValBeforeIncrease({Key? key}) : super(key: key);

  @override
  _ValBeforeIncreaseState createState() => _ValBeforeIncreaseState();
}

class _ValBeforeIncreaseState extends State<ValBeforeIncrease> {
  String? result;

  @override
  void dispose() {
    initialController.clear();
    percentController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value before increase"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Initial value",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: initialController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(5, 50, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Increased by",
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              child: TextField(
                controller: percentController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(19, 2, 0, 0),
                    child: Text(
                      "%",
                      textScaleFactor: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "Calculate",
                textScaleFactor: 1.2,
              ),
              onPressed: () {
                double increase = 100 + double.parse(percentController.text);
                double divide = increase / 100;
                double percentage =
                    double.parse(initialController.text) / divide;
                setState(() {
                  result = percentage.toStringAsFixed(2);
                });
              },
            ),
            SizedBox(height: 5),
            result == null ? Container() : Text("The result is: $result"),
            SizedBox(
              height: 30,
            ),
            Text(
                "find the original number, when you have been given a number and the percentage increase."),
            Text(
                "Example: if a toy costs \$210, What will be the price with 20% sale (Answer: \$175.00)"),
          ],
        ),
      ),
    );
  }
}
