part of 'pages.dart';

class Week3 extends StatefulWidget {
  const Week3({super.key});

  @override
  State<Week3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Week3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        // color: Colors.orange,

                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/4K.png'))),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.heart_broken),
                          label: Text(''),
                        )
                        //child: ,
                        )),
                Flexible(
                    flex: 1,
                    child: Container(
                      // color: Color.fromARGB(255, 25, 30, 58),
                      child: Stack(
                        children: [
                          Image.asset('assets/images/4K.png', fit: BoxFit.cover)
                        ],
                      ),
                    ),

                        ),
                Flexible(
                    flex: 3,
                    child: ListView(
                      children: [
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus elementum scelerisque. Vivamus rutrum dolor non mi luctus tincidunt. In vel nunc eu libero commodo mattis eget tempus mauris. Fusce quam ipsum, tristique vel accumsan nec, gravida ac lacus. Maecenas at pellentesque lectus. Cras a tincidunt magna. Cras imperdiet massa nec ante molestie condimentum. Phasellus ut ultrices ex. Maecenas dolor lectus, lobortis et porttitor non, congue in leo. Nullam a facilisis nisl, eget vestibulum lacus. Nullam vehicula semper metus, sed suscipit erat vestibulum nec. Praesent nec dui turpis. Curabitur est mauris, laoreet et vulputate a, tristique vel elit. Ut id turpis ac urna mattis tincidunt.")
                      ],
                    )
                    ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
