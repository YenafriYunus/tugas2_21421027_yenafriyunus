import 'package:flutter/material.dart';

void main(List<String> args){
  runApp(Kalkulator());
}

class Kalkulator extends StatelessWidget{
  const Kalkulator({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LamanUtama(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class LamanUtama extends StatefulWidget {
  const LamanUtama({super.key});

  @override
  State<LamanUtama> createState() => _LamanUtamaState();
}

class _LamanUtamaState extends State<LamanUtama> {
  @override
  Widget build(BuildContext context) {
TextEditingController conBil1 = TextEditingController();
TextEditingController conBil2 = TextEditingController();
TextEditingController conHasil = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title:  const Text("Kalkulator", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.cyan,
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          runSpacing: 20,
          children: [
            TextField(
              controller: conBil1,
              decoration: InputDecoration(
                label: Text("Bilangan 1"),
                border: OutlineInputBorder()
              )
              ),
            TextField(
              controller: conBil2,
              decoration: InputDecoration(
                label: Text("Bilangan 2"),
                border: OutlineInputBorder()
              )
              ),
            TextField(
              controller: conHasil,
              decoration: InputDecoration(
                label: Text("Hasil"),
                border: OutlineInputBorder()
              )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                      onPressed: (){
                        double bilangan1 = double.parse(conBil1.text);
                        double bilangan2 = double.parse(conBil2.text);
                        double Hasil = bilangan1 + bilangan2;

                        conHasil.text = Hasil.toString();
                      }, 
                      child: Text("+")
                      
                      ),
                  ),
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                      onPressed: (){
                        double bilangan1 = double.parse(conBil1.text);
                        double bilangan2 = double.parse(conBil2.text);
                        double Hasil = bilangan1 - bilangan2;

                        conHasil.text = Hasil.toString();
                      }, 
                      child: Text("-")
                      
                      ),
                  ),
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                      onPressed: (){
                        double bilangan1 = double.parse(conBil1.text);
                        double bilangan2 = double.parse(conBil2.text);
                        double Hasil = bilangan1 * bilangan2;

                        conHasil.text = Hasil.toString();
                      }, 
                      child: Text("x")
                      
                      ),
                  ),
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                      onPressed: (){
                        double bilangan1 = double.parse(conBil1.text);
                        double bilangan2 = double.parse(conBil2.text);
                        double Hasil = bilangan1 / bilangan2;

                        conHasil.text = Hasil.toString();
                      }, 
                      child: Text(":")
                      
                      ),
                  ),
                ],
              )
          ],
        ),
      )
    );
  }
}