part of 'pages.dart';

class AddAnimal extends StatefulWidget {
  const AddAnimal({Key? key}) : super(key: key);
  static const String routeName = '/PageAdd';

  @override
  _AddAnimalState createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPassword = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlAnimal = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlPassword.dispose();
    ctrlPhone.dispose();
    ctrlAnimal.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 129, 80),
        title: Text("Add Animal Page"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: ListView(children: [
          Form(
            key: _loginKey,
            child: Column(
              children: [
                TextFormField(
                  // The validator receives the text that the user has entered.
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: Color.fromARGB(255, 0, 129, 80),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 3.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                        width: 3.0,
                      ),
                    ),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return !EmailValidator.validate(value.toString())
                          ? 'Email not valid'
                          : null;
                    }
                  },
                ),
                const Gap(30),
                TextFormField(
                  obscureText: isHide,
                  decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.key_rounded,
                        color: Color.fromARGB(255, 0, 129, 80),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 3.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                          width: 3.0,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                        child: Icon(
                            color: Color.fromARGB(255, 0, 129, 80),
                            isHide ? Icons.visibility : Icons.visibility_off),
                      )),
                  controller: ctrlPassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 8
                        ? 'Password must be at least 8 characters!'
                        : null;
                  },
                ),
                const Gap(30),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(
                      Icons.phone_android_rounded,
                      color: Color.fromARGB(255, 0, 129, 80),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 3.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                        width: 3.0,
                      ),
                    ),
                  ),
                  controller: ctrlPhone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 6
                        ? 'Phone number must be at least 6 numbers!'
                        : null;
                  },
                ),
                const Gap(30),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Animal Name",
                    prefixIcon: Icon(
                      Icons.pest_control_rounded,
                      color: Color.fromARGB(255, 0, 129, 80),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 3.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                        width: 3.0,
                      ),
                    ),
                  ),
                  controller: ctrlAnimal,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 3
                        ? 'Animal name must be at least 3 characters!'
                        : null;
                  },
                ),
                const Gap(50),
                ElevatedButton(
                  onPressed: () {
                    if (_loginKey.currentState!.validate()) {
                      final EmailConfirm = ctrlEmail.text.toString();
                      final PassConfirm = ctrlPassword.text.toString();
                      final PhoneConfirm = ctrlPhone.text.toString();
                      final AnimalConfirm = ctrlAnimal.text.toString();

                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Confirmation'),
                                  content: const Text('Email: ' //+ EmailConfirm
                                      'Password: ' //+ PasswordConfirm
                                      'Phone Number: ' //+ PhoneNumberConfirm
                                      'Animal Name: ' //+ AnimalNameConfirm
                                      ),
                                  actions: <Widget>[
                                    TextButton(
                                        child: const Text('Confirm'),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, Week4.routeName);
                                        })
                                  ]));
                      // Fluttertoast.showToast(
                      //     msg: 'email:' +
                      //         ctrlEmail.text.toString() +
                      //         ', password: ' +
                      //         ctrlPassword.text.toString(),
                      //     toastLength: Toast.LENGTH_SHORT,
                      //     fontSize: 14,
                      //     backgroundColor: Colors.greenAccent,
                      //     textColor: Colors.white);
                      // showAlertDialog(BuildContext context) {
                      //   // set up the button
                      //   Widget okButton = TextButton(
                      //     child: Text("OK"),
                      //     onPressed: () {},
                      //   );

                      //   // set up the AlertDialog
                      //   AlertDialog alert = AlertDialog(
                      //     title: Text("My title"),
                      //     content: Text("This is my message."),
                      //     actions: [
                      //       okButton,
                      //     ],
                      //   );

                      //   // show the dialog
                      //   showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return alert;
                      //     },
                      //   );
                    } else {
                      Fluttertoast.showToast(
                          msg: "Please fill all fields!",
                          toastLength: Toast.LENGTH_SHORT,
                          fontSize: 16,
                          backgroundColor: Colors.redAccent,
                          textColor: Colors.white);
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
