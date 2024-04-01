import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateQr extends StatefulWidget {
  const CreateQr({super.key});

  @override
  State<CreateQr> createState() => _CreateQrState();
}

class _CreateQrState extends State<CreateQr> {
  TextEditingController textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Generate QR Code"),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
               if(textcontroller.text.isNotEmpty)
                  QrImageView(data: textcontroller.text,size: 200,
                  backgroundColor: Colors.white,),

               if(textcontroller.text.isEmpty)
                        Text("No input Given in the form",
                        style: TextStyle(fontSize: 20),),


                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0) ,
                    child: TextField(
                        controller: textcontroller,
                        decoration: InputDecoration(
                          hintText: "Enter your data",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                          labelText: "Enter your data"
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: (){
                       setState(() {
                         if(textcontroller.text.isNotEmpty)
                  QrImageView(data: textcontroller.text,size: 200,
                  backgroundColor: Colors.white,);
                       });
                  }, child: Text("Generate Qr code"))
            ],
          ),
        ),
      ),
    );
  }
}