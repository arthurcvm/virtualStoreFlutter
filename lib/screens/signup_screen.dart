import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            child: Text(
              "ENTRAR",
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          )
        ],
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Nome Completo"),
                validator: (text) {
                  if (text.isEmpty) return "Nome inválido";
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "E-mail"),
                keyboardType: TextInputType.emailAddress,
                validator: (text) {
                  if (text.isEmpty || !text.contains("@"))
                    return "E-mail inválido";
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Senha"),
                obscureText: true,
                validator: (text) {
                  if (text.isEmpty || text.length < 6) return "Senha inválida";
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Endereço"),
                validator: (text) {
                  if (text.isEmpty) return "Endereço inválida";
                },
              ),
              SizedBox(height: 16.0),
              SizedBox(
                height: 44.0,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {}
                    },
                    child:
                        Text('Criar Conta', style: TextStyle(fontSize: 18.0)),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
