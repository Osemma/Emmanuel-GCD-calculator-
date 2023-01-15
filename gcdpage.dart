import 'package:flutter/material.dart';

class gcdPage extends StatefulWidget {
  const gcdPage({Key? key}) : super(key: key);

  @override
  State<gcdPage> createState() => _gcdPageState();
}

class _gcdPageState extends State<gcdPage> {
  final formKey = GlobalKey<FormState>();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  bool Circular = false;
  var var1 = 0;
  var var2 = 0;
  String res0 = "";

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emmanuel\'s GCD calculator'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Column(
        children: [Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          const Text('This is Emmanuel\'s calculator', style:  TextStyle(fontSize: 18, color: Colors.black),),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
            controller: controller1,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Input any Integer',
              labelStyle: TextStyle(color: Colors.blue, fontSize:1),
              hintText: 'input any integer',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
              enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 32, 99, 154), ),
      borderRadius: BorderRadius.all(Radius.circular(8))
      ) 
            ))),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
            controller: controller2,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Input any Integer greater than zero',
              labelStyle: TextStyle(color: Colors.blue, fontSize:16),
              hintText: 'Input any Integer greater than zero',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
             enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 32, 99, 154), ),
      borderRadius: BorderRadius.all(Radius.circular(8))
      ) 
        ),
            // onSaved: (value) => setState(() => firstname = value!),
            )
            ),
          const SizedBox(height: 20,),
          SizedBox(width: 100, child:
          ElevatedButton(
            onPressed: () async {
              setState(() {
                Circular = true;
              });
               gcdFunction();
               if(res0 != 0) {
              setState(() {
                  Circular = false;
                });}
               },
            child: Circular ? const CircularProgressIndicator() : const Text('Continue', style: 
                TextStyle(fontSize: 16, color: Colors.white)))
      ),
      const SizedBox(height: 20,),
      ]
      ),
      ),
      buildContainer()
     ]
    ));
  }
  Container buildContainer() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text("The GCD (${controller1.text} , ${controller2.text}) is $res0", style: const TextStyle(fontSize: 14, color: Colors.blueAccent),),
      );
void gcdFunction() {
  var1 = int.parse(controller1.text);
  var2 = int.parse(controller2.text);
  if(var1 <= var2) {for(var i = 1; i <= var1; i++){
    if((var1 % i == 0) && (var2 % i == 0)) {
       res0 = i.toString();
      print(res0);

       }
  }} else {
    for(var i = 1; i <= var2; i++){
    if((var1 % i == 0) && (var2 % i == 0)) {
      res0 = i.toString();
      print(res0);
      }}
}
}
}