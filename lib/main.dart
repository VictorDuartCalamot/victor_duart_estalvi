import 'package:crud_framework/CRUD_base/CRUD_view_base.dart';
import 'package:crud_framework/models/library_model.dart';
import 'package:crud_framework/widgets_lib/app_base.dart';
import 'package:crud_framework/widgets_lib/widgets.dart';
import 'package:flutter/material.dart';

import 'CRUD_base/CRUD_controller.dart';
import 'CRUD_base/CRUD_list_base.dart';

void main() async {
  //CRUDControllerBase<Author>().getAllItems();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Para que no salga el banner ese feo arriba a la derecha
      debugShowCheckedModeBanner: false,
      title: 'Estalvie',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/author_list': (context) => CRUDListBase<Author>(
            itemBuilder: createCards,
            addItemRoute: '/author_add',
            viewItemRoute: '/author_view'),
        '/author_add': (context) => CRUDViewBase<Author>(
              detailedView: detailDialog,
              editFormView: CRUD_View_Author(),
            )
      },
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case '/author_view':
            {
              return MaterialPageRoute(
                  builder: (context) => CRUDViewBase<Author>(
                        item: routeSettings.arguments as Author,
                        detailedView: detailDialog,
                        editFormView: CRUD_View_Author(
                          oAuthor: routeSettings.arguments as Author,
                        ),
                      ));
            }
        }
        return null;
      },
      home: const MyHomePage(title: 'Estalviem'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseApp(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'lib/images/estalviem.jpg',
                ),
                fit: BoxFit.cover)),
        child: Center(
            child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Objectiu: 25.000 euros",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Progress: 0% ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: Text(
                    "Estalviem",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  )),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Positioned.fill(
                  child: Align(
                      alignment: Alignment.center,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                    children: [

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
                            title: const Text("Despesa: Electricidad -100€ ",
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
                            title: const Text("Despesa: RTX 4090 -2400€",
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
                            title: const Text("Ingres: Bizum 100€ ",
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
                              textAlign: TextAlign.center,
                            ),

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
                            title: const Text("Ingres: Nomina 2400€ ",
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
                              textAlign: TextAlign.center,
                            ),

                          ),
                        ),
                      ),

                    ],
                  ))

              ),
            ),
          ],
        )),
      ),
    );
  }
}
