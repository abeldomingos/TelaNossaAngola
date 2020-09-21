import 'package:flutter/material.dart';

import 'NP/principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: must_be_immutable
class Home extends StatelessWidget {
  //Permite o control dos dados que entram no email e na senha
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

//Simular um login codigo padrão para acessar o sistema
  String email = "abeldomingos@gmail.com";
  String password = "123456";

//Execução do login e cond se é valido ou ão
  login(context) {
    if (emailController.text == email && passwordController.text == password) {
      //Para exluir a ceta de voltar
      //Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Principal()));
    } else {
      final snackbar = SnackBar(
        content: Text("Falha no login, introduza os dados corretamente!"),
        duration: Duration(seconds: 3),
      );
      scaffoldKey.currentState.showSnackBar(snackbar);
    }
  }

  //scaffoldKey valor que cond any sms errada, e return uma sms
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text('SISTEMA NOSSA ANGOLA '),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        //Seção body
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                //entra uma Imagem da rede
                Image.network(
                  "https://scontent.flad2-1.fna.fbcdn.net/v/t1.15752-9/120034253_372806020396535_3029007934964886434_n.png?_nc_cat=104&_nc_sid=b96e70&_nc_ohc=7ja-2mGAMD0AX8UQqtM&_nc_ht=scontent.flad2-1.fna&oh=81ba002f60b1c919d128da76ed54a006&oe=5F8E01D0",
                  height: 130.0,
                ),

                //Manipulação do text do Email
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: const OutlineInputBorder(), labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                ),

                //Manipulação da Text da password
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Password"),
                    obscureText: true,
                    controller: passwordController,
                  ),
                ),
                //Manipulação do botão "Login"
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    //onPressed nosso botão login
                    onPressed: () {
                      login(context);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
                //Manipulação do Register

                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      child: Text(
                        'REGISTRAR ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      //Metodo q permite o click do Register
                      onTap: () {},
                    )),
              ]),
        ));
  }
}
