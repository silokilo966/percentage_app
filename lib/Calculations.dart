import 'package:flutter/material.dart';
import 'package:percentage_app/main.dart';
import 'package:flutter/services.dart';

class PercentWidget extends StatelessWidget {
  const PercentWidget({
    Key? key,
    required this.result,
    required this.onPressed,
    required this.initialText,
    required this.secondText,
    required this.suffixText,
  }) : super(key: key);

  final String? result;
  final onPressed;
  final String initialText;
  final String secondText;
  final String suffixText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "$initialText",
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
            "$secondText",
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
                    suffixText,
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
            onPressed: onPressed,
          ),
          SizedBox(height: 5),
          if (result != null && initialText.contains("Before"))
            Text("The result is: $result%")
          else if (result != null)
            Text("The result is: $result"),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PercentWidget(
            suffixText: "%",
            initialText: "Initial Value",
            secondText: "Percent",
            onPressed: () {
              double percentage = int.parse(initialController.text) *
                  int.parse(percentController.text) /
                  100;
              setState(() {
                result = percentage.toString();
              });
            },
            result: result,
          ),
          Text("Info: This will show you the value of a percent in a number. "),
          Text("e.g 50% of 300 is = 150"),
        ],
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PercentWidget(
            suffixText: "",
            initialText: "Before",
            secondText: "After",
            onPressed: () {
              double increase = double.parse(percentController.text) -
                  double.parse(initialController.text);
              double percentage =
                  increase / double.parse(initialController.text) * 100;
              setState(() {
                result = percentage.toString();
              });
            },
            result: result,
          ),
          Text(
              "Info: This will show you the Difference between two numbers in Percentage"),
          Text("e.g 50 and 100 = 100% "),
        ],
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PercentWidget(
            suffixText: "%",
            initialText: "Initial Value",
            secondText: "Increased By",
            onPressed: () {
              double increase = double.parse(percentController.text) + 100;
              double percentage =
                  increase / 100 * double.parse(initialController.text);
              setState(() {
                result = percentage.toStringAsFixed(2);
              });
            },
            result: result,
          ),
          Text(
              "Find the value after a number has been increased by a percentage."),
          Text("Example: What do I get if I increase 156 by 10%?"),
        ],
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PercentWidget(
            suffixText: "%",
            initialText: "Initial Value",
            secondText: "Decrease By",
            onPressed: () {
              double increase = double.parse(percentController.text) - 100;
              double percentage =
                  increase / 100 * double.parse(initialController.text);
              percentage = percentage - (percentage * 2);
              setState(() {
                result = percentage.toStringAsFixed(2);
              });
            },
            result: result,
          ),
          Text(
              "Find the value after a number has been decreased by a percentage."),
          Text("Example: What do I get if I decrease 156 by 10%?"),
        ],
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PercentWidget(
            suffixText: "%",
            initialText: "Initial Value",
            secondText: "Decrease By",
            onPressed: () {
              double increase = 100 - double.parse(percentController.text);
              double divide = increase / 100;
              double percentage = double.parse(initialController.text) / divide;
              setState(() {
                result = percentage.toStringAsFixed(2);
              });
            },
            result: result,
          ),
          Text(
              "find the original number, when you have been given a number and the percentage decrease."),
          Text(
              "Example: if a toy in a sale marked 20% off costs \$210, what is the original price. (Answer: \$262.50)"),
        ],
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PercentWidget(
            suffixText: "%",
            initialText: "Initial Value",
            secondText: "Increased By",
            onPressed: () {
              double increase = 100 + double.parse(percentController.text);
              double divide = increase / 100;
              double percentage = double.parse(initialController.text) / divide;
              setState(() {
                result = percentage.toStringAsFixed(2);
              });
            },
            result: result,
          ),
          Text(
              "find the original number, when you have been given a number and the percentage increase."),
          Text(
              "Example: if a toy costs \$210, What will be the price with 20% sale (Answer: \$175.00)"),
        ],
      ),
    );
  }
}
