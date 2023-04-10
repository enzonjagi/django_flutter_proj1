import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<http.Response> buttonPressed() async {
    http.Response returnedResult = await http.get(
      Uri.parse('http://localhost:8000/app/hellodjango'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset-UTF-8'
      });
    print(returnedResult.body);
    return returnedResult;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Area ya Mzito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Area ya Mzito'),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text("Buda, umefika Area ya mzito"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: buttonPressed,
                  child: Text('Finya hii kitu'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}