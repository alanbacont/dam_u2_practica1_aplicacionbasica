import 'package:flutter/material.dart';

class MiApp extends StatefulWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  bool _isChecked = false;
  bool _acceptTerms = false;
  final _nombreController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Mi aplicación",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Ya estás en el inicio"),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              "Ingrese su nombre:",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(
                hintText: "Nombre",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _acceptTerms
                  ? () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Enviado"),
                    duration: Duration(seconds: 1),
                  ),
                );
              }
                  : null,
              child: Text(
                "Enviar",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                padding: EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 15.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            CheckboxListTile(
              title: Text(
                "Acepto los términos y condiciones",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                  _acceptTerms = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],
        ),
      ),
    );
  }
}
