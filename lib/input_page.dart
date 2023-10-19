import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = 0xFF1D1E33;
double height = 150;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(activeCardColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 60.0),
                        SizedBox(height: 10.0),
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(activeCardColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.venus, size: 60.0),
                        SizedBox(height: 10.0),
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
           Expanded(
            child: Expanded(
              child: ReusableCard(
                color: Color(activeCardColor),
                child: Column(
                  children: [
                    Text(height.toString()),
    Slider(
    value: height.toDouble(),
    min: 120,
    max: 220,
    onChanged: (double newValue) {
      setState(() {
        height = newValue;
      });
    }),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(activeCardColor),
                    child: Center(
                      child: Icon(FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(activeCardColor),
                    child: Center(
                      child: Icon(FontAwesomeIcons.mars),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  const ReusableCard({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child);
  }
}


