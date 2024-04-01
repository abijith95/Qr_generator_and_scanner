import 'package:flutter/material.dart';
import 'package:qr_generator_and_scanner/create_qr.dart';
import 'package:qr_generator_and_scanner/scan_qr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Home' ,
      routes: {
         "Home" :(context) =>  HomePage(),
         "Create" :(context) =>const CreateQr(),
         'Scan' :(context) => ScanQr(),
      },
      title: "Qr generator and Scanner",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 224, 159, 236),brightness: Brightness.dark)
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("The Quick Scanner and Generator"),),

      body: Center(

        child: Container(

          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                 setState(() {
                   Navigator.pushNamed(context, "Create");
                 });
              }, child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Create QR"),
              )),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                     Navigator.pushNamed(context, "Scan");
                  });
                }, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Scan QR"),
                )),
              ),
            ],
          ),
        ),
      ),
    );
    
    }
}