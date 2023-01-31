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
      body:
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          'lib/images/estalviem.jpg',),
              fit: BoxFit.cover
            )),
        child: Center(
          child: Container(child: Align(
              alignment: Alignment.center,
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
    );
  }
}
