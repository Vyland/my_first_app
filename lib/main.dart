import 'package:flutter/material.dart';
import 'package:my_first_app/column.dart';
import 'package:my_first_app/column_mix_row.dart';
import 'package:my_first_app/gridview.dart';
import 'package:my_first_app/image_asset.dart';
import 'package:my_first_app/image_network.dart';
import 'package:my_first_app/list_horizontal.dart';
import 'package:my_first_app/listview.dart';
import 'package:my_first_app/row.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_first_app/store_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // controller
  TextEditingController controllerForm = TextEditingController();
  // key form for validation
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        centerTitle: true,
        title: const Text("My First App"),
      ),
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        height: double.infinity,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Fauzi"),
              accountEmail: Text("tes@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                radius: 50,
                child: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const RowPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Row "),
              subtitle: const Text("how to use row widget"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ColumnPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Column"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ColumnMixRow()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Column mix row"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const GridViewPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Gridview"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ListViewPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("listView"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ListHorizontal()));
              },
              leading: const Icon(Icons.list),
              title: const Text("listView horizontal"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ImageAssetPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Image Asset"),
              trailing: const Icon(Icons.widgets),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ImageNetworkPage()));
              },
              leading: const Icon(Icons.list),
              title: const Text("Image network"),
              trailing: const Icon(Icons.widgets),
            )
          ],
        ),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to my App",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  validator: (value) {
                    return value!.isEmpty ? "Field must be fill" : null;
                  },
                  controller: controllerForm,
                  decoration: InputDecoration(
                      fillColor: Colors.green[100],
                      filled: true,
                      hintText: "Fill a text",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Fluttertoast.showToast(
                            msg: "Halo ${controllerForm.text}",
                            backgroundColor: Colors.orange,
                            gravity: ToastGravity.BOTTOM,
                            toastLength: Toast.LENGTH_SHORT);
                      }
                    },
                    height: 30,
                    color: Colors.orange,
                    child: const Text(
                      "Toast",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(seconds: 2),
                          content:
                              Text("halo ${controllerForm.text} ini snackbar"),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    height: 30,
                    color: Colors.red,
                    child: const Text(
                      "snackbar",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => StoreData(
                                      data: controllerForm.text,
                                    )));
                      }
                    },
                    height: 30,
                    color: Colors.purple,
                    child: const Text(
                      "pass data",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
