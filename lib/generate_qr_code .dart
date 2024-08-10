import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController urlcode = TextEditingController();
  String code = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Qr Code'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlcode.text.isNotEmpty) QrImageView(data: code, size: 200),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      urlcode.text = value;
                      value = code;
                    });
                  },
                  controller: urlcode,
                  decoration: InputDecoration(
                      hintText: "Enter your data",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Enter Your data'),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Generate QR Code "))
            ],
          ),
        ),
      ),
    );
  }
}
