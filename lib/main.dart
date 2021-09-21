import 'package:flutter/material.dart';
// import 'package:flutter_application_2/cardo.dart';
// import 'package:flutter_application_2/grid.dart';
import 'package:flutter_application_2/horizontal_list.dart';
// import 'package:flutter_application_2/dialog.dart';
// import 'package:flutter_application_2/kasali.dart';
// import 'package:flutter_application_2/pop.dart';
// import 'package:flutter_application_2/stock.dart';
// import 'package:flutter_application_2/boss.dart';
import 'high.dart';

void main() {
  var app = myBoy();

  runApp(app);
}

class myBoy extends StatelessWidget {
  const myBoy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appTitle = 'Flutter Form Demo';
    return MaterialApp(
      // title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Alaye(),
          ],
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/logo_login.png',
            width: 100,
            height: 50,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
        drawer: myDrawer(),
        // body: myApp(),
        // body: Aminu(),
        // body: MyCardWidget(),
        // body: Grid(),
        body: Horizontal(),
        // body: MyAlert(),
        // body: TextFieldAlertDialog(),
      ),
    );
  }
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          alignment: Alignment.topLeft,
          fit: BoxFit.fill,
        ),
      ),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 70, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              new Container(
                  // height: 30,
                  // width: 30,
                  width: double.infinity,
                  // height: double.infinity,
                  padding: const EdgeInsets.only(left: 30.0, top: 40.0),
                  // ignore: deprecated_member_use
                  child: new RaisedButton(
                    color: Colors.redAccent,
                    // style: ButtonStyle(
                    //     // elevation: MaterialStateProperty(4.0),

                    //     backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: const Text('Submit'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Hello world");
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myDrawer() {
  return Drawer(
    child: ListView(
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Text(
            'Welcome to Tech-U Mobile App',
            style: TextStyle(
              color: Colors.green,
              fontSize: 30,
            ),
          ),
        ),
        ListTile(
          title: Text('Dashboard'),
          leading: Icon(Icons.book),
        ),
        ListTile(
          title: Text("Student profile"),
          leading: Icon(Icons.account_circle),
        ),
        Divider(
          height: 0.2,
        ),
        ListTile(
          title: Text("Course Registration"),
          leading: Icon(Icons.person_add),
        ),
        ListTile(
          title: Text("Lecturer Assessment"),
          leading: Icon(Icons.lock_clock_rounded),
        ),
        ListTile(
          title: Text("Result"),
          leading: Icon(Icons.archive),
        ),
        ListTile(
          title: Text("Bed Space"),
          leading: Icon(Icons.table_chart),
        ),
        ListTile(
          title: Text("Log Out"),
          leading: Icon(Icons.logout),
        ),
      ],
    ),
  );
}
