import 'package:crud_framework/models/library_model.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class BaseApp extends StatelessWidget {
  const BaseApp(
      {Key? key, this.title = "Menu", required this.body, this.actionButton})
      : super(key: key);

  final String title;
  final Widget body;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      floatingActionButton: actionButton,
      drawer: Drawer(
        backgroundColor: Colors.lightGreen,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                style: TextStyle(
                  fontSize: 30,
                ),
                "Menu d'interacció",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 10),
                      spreadRadius: 0.5,
                    ),
                  ],
                  borderRadius:BorderRadius.circular(70.0),
                ),
                child: ListTile(
                  title: const Text("Afegir/Modificar despeses",
                    style: TextStyle(
                        fontSize: 20,
                      shadows: [
                      Shadow(
                      blurRadius: 7.0,
                      color: Colors.green,
                      offset: Offset(1.0, 1.0),
                    )
                      ],
                    ),

                    textAlign: TextAlign.center,),
                  onTap: () => Navigator.of(context).pushNamed('/author_list'),
                ),
              ),
              ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 10),
                      spreadRadius: 0.5,
                    ),
                  ],
                  borderRadius:BorderRadius.circular(70.0),
                ),
                child: ListTile(
                  title: const Text("Eliminar despeses",
                    style: TextStyle(
                      fontSize: 20,
                      shadows: [
                        Shadow(
                          blurRadius: 7.0,
                          color: Colors.green,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),

                    textAlign: TextAlign.center,),
                  onTap: () => Navigator.of(context).pushNamed('/author_list'),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 10),
                      spreadRadius: 0.5,
                    ),
                  ],
                  borderRadius:BorderRadius.circular(70.0),
                ),
                child: ListTile(
                  title: const Text("Llista de despeses",
                    style: TextStyle(
                      fontSize: 20,
                      shadows: [
                        Shadow(
                          blurRadius: 7.0,
                          color: Colors.green,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),


                    textAlign: TextAlign.center,),
                  onTap: () => Navigator.of(context).pushNamed('/author_list'),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, 10),
                      spreadRadius: 0.5,
                    ),
                  ],
                  borderRadius:BorderRadius.circular(70.0),
                ),
                child: ListTile(
                  title: Text(
                    "Llista d'ingresos",
                    style: TextStyle(
                      fontSize: 20,
                      shadows: [
                        Shadow(
                          blurRadius: 7.0,
                          color: Colors.green,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                    ),

                    textAlign: TextAlign.center,),
                  onTap: () => Navigator.of(context).pushNamed('/author_list'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
