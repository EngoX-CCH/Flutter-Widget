part of 'pages.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int angka = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                angka.toString(),
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          angka++;
                        });
                      },
                      child: Text("+", style: TextStyle(fontSize: 24))),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          angka;
                        });
                      },
                      child: Text("-", style: TextStyle(fontSize: 24)))
                ],
              ),
            ],
          )),
    );
  }
}
