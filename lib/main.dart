import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percentage_app/Calculations.dart';
import 'package:percentage_app/theme_settings.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeSettings(),
      child: Consumer<ThemeSettings>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Percentage',
            theme: value.darkMode ? darkTheme : lightTheme,
            debugShowCheckedModeBanner: false,
            home: Percentage(),
          );
        },
      ),
    );
  }
}

final initialController = TextEditingController();
final percentController = TextEditingController();

class Percentage extends StatefulWidget {
  const Percentage({Key? key}) : super(key: key);

  @override
  _PercentageState createState() => _PercentageState();
}

class _PercentageState extends State<Percentage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Percentage"),
      ),
      body: _appItems(),
    );
  }

  Widget _appItems() {
    return Stack(children: [
      Consumer<ThemeSettings>(
        builder: (context, value, child) {
          return SwitchListTile(
            contentPadding: EdgeInsets.fromLTRB(200, 20, 0, 0),
            title: Text(
              "Dark Mode",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            value: value.darkMode,
            onChanged: (newValue) {
              value.toggleDarkMode();
            },
          );
        },
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: 40,
              width: 300,
              child: TextButton(
                onPressed: _increase,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.arrow_drop_up,
                      color: Colors.white,
                    ),
                    SizedBox(width: 70),
                    Text(
                      "Increase",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: 40,
              width: 300,
              child: TextButton(
                onPressed: _decrease,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    SizedBox(width: 70),
                    Text(
                      "decrease",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: 40,
              width: 300,
              child: TextButton(
                onPressed: _percentOfNumber,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    SizedBox(width: 5),
                    Text(
                      "%        Percent of a number",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: 40,
              width: 300,
              child: TextButton(
                onPressed: _valBeforeDecrease,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Value before the decrease",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: 40,
              width: 300,
              child: TextButton(
                onPressed: _valBeforeIncrease,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Value before the increase",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: 40,
              width: 300,
              child: TextButton(
                onPressed: _differenceInPercent,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    SizedBox(width: 5),
                    Text(
                      "%       Difference in Percent",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  void _percentOfNumber() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return PercentOfNumber();
        },
      ),
    );
  }

  void _increase() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Increase();
        },
      ),
    );
  }

  void _decrease() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Decrease();
        },
      ),
    );
  }

  void _valBeforeDecrease() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ValBeforeDecrease();
        },
      ),
    );
  }

  void _valBeforeIncrease() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ValBeforeIncrease();
        },
      ),
    );
  }

  void _differenceInPercent() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return DifferenceInPercent();
        },
      ),
    );
  }
}
