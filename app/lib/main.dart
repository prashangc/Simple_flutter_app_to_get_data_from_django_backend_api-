import 'package:app/student.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connecting Flutter with django',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Connecting Flutter with Django'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Student studentService = Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: FutureBuilder<List>(
              future: studentService.getAllStudent(),
              builder: (context, snapshot) {
                print(snapshot.data);
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              snapshot.data![index]['studentName'].toString(),
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              snapshot.data![index]['email'],
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        );
                      });
                } else {
                  return const Center(
                    child: Text(
                      'No data found',
                    ),
                  );
                }
              }),
        ));
  }
}
