import 'package:flutter/material.dart';

class ServicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 40, 142, 188),
            title: const Text("¿Como podemos ayudarte?")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Nombre",
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                     keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Correo",
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                     keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Telefono",
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.text,
                maxLines: 2,
                decoration: InputDecoration(
                    labelText: "Mensaje", enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                     prefixIcon: Icon(Icons.message)),
              ),
              const SizedBox(height: 30),
              FilledButton(onPressed: () {}, child: const Text("Enviar")),
              const SizedBox(height: 100),
              const Text(
                "¿Tienes alguna pregunta?\nEstamos aqui para ayudarte",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 30),
              const Text(
                "LLAMANOS Al: ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
              const Text(
                "0943828181 ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "O envianos un email a: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              const Text(
                "CineXionHN@gmail.com ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}