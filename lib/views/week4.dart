part of 'pages.dart';
// Use this file buat coba2 layouting

class Week4 extends StatefulWidget {
  const Week4({super.key});

  @override
  State<Week4> createState() => _MyWidgettState();
}

class _MyWidgettState extends State<Week4> {
  bool click = true; // Heh???

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 129, 80),
        title: Text("Mission 1"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                  Color(0xff1f005c),
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ])),
          ),
          Container(
            child: Column(children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    child: Image(
                        image: AssetImage('assets/images/poison_bottle.jpg'),
                        fit: BoxFit.fill),
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/jellyfish.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10))),
                            Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/snakes.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10))),
                            Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/spider.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10))),
                            Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/pufferfish.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10))),
                          ]))),
              Flexible(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: ListView(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5.0),
                            child: Text("Poisonouos and Venomous Animals",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Courier',
                                    letterSpacing: -1))),
                        Container(
                            child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod enim in semper porttitor. Ut non lectus a diam efficitur condimentum. Nunc congue pretium nibh, sed mollis neque egestas quis. Nulla suscipit rutrum rutrum. Nulla porta dui vel ligula rhoncus, eu bibendum velit auctor. Vivamus semper eros mi, non ultricies eros mattis quis. Donec at neque odio. Cras fermentum metus convallis, convallis justo et, efficitur magna. Cras commodo gravida est vel vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod enim in semper porttitor. Ut non lectus a diam efficitur condimentum. Nunc congue pretium nibh, sed mollis neque egestas quis. Nulla suscipit rutrum rutrum. Nulla porta dui vel ligula rhoncus, eu bibendum velit auctor. Vivamus semper eros mi, non ultricies eros mattis quis. Donec at neque odio. Cras fermentum metus convallis, convallis justo et, efficitur magna. Cras commodo gravida est vel vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod enim in semper porttitor. Ut non lectus a diam efficitur condimentum. Nunc congue pretium nibh, sed mollis neque egestas quis. Nulla suscipit rutrum rutrum. Nulla porta dui vel ligula rhoncus, eu bibendum velit auctor. Vivamus semper eros mi, non ultricies eros mattis quis. Donec at neque odio. Cras fermentum metus convallis, convallis justo et, efficitur magna. Cras commodo gravida est vel vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam euismod enim in semper porttitor. Ut non lectus a diam efficitur condimentum. Nunc congue pretium nibh, sed mollis neque egestas quis. Nulla suscipit rutrum rutrum. Nulla porta dui vel ligula rhoncus, eu bibendum velit auctor. Vivamus semper eros mi, non ultricies eros mattis quis. Donec at neque odio. Cras fermentum metus convallis, convallis justo et, efficitur magna. Cras commodo gravida est vel vestibulum.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        )),
                      ],
                    ),
                  ))
            ]),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 0, 129, 80),
              onPressed: () {
                setState(() {
                  click = !click;
                });
                print('This is a layouting project trial');
              },
              child: const Icon(
                Icons.star,
                color: Colors.amber,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget ChangeColor() => Container(
  //       child: FloatingActionButton(
  //             backgroundColor: Color.fromARGB(255, 0, 129, 80),
  //             child: const Icon(
  //               Icons.star,
  //               color: Colors.red,
  //               size: 30,
  //             ),
  //             onPressed: (){}
  //     )
  // );
}
