import 'package:flutter/material.dart';
import 'package:flutter_tesis_app/pages/registro_page.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  String email, password;
  String emailSignIn, passwordSignIn;

  bool recuerdame = false;
  bool ocultarPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(height: 440,),
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color(0xffb71c1c),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/sos_boton_panico.png", height: 200,),
                  //Login Container
                  Form(
                    key: _formKey,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(10,10),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Iniciar Sesión",
                              style: TextStyle(
                                color: Color(0xffd32f2f),
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: _controllerEmail,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black45,
                                ),
                              ),
                              prefixIcon: Icon(Icons.person,
                                color: Colors.grey,
                              ),
                              labelText: "E-mail",
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            validator: (String value){
                              if(value == null || value.isEmpty){
                                return "Por favor, ingrese su usuario";
                              }
                              if(value.isNotEmpty && !value.contains(RegExp(r"(@.)"))){
                                return "Ingrese un e-mail válido";
                              }
                              email = value;
                              return null;
                            },
                            onChanged: (value){
                              emailSignIn = value;
                            },
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _controllerPassword,
                            cursorColor: Colors.grey,
                            obscureText: ocultarPassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black45,
                                ),
                              ),
                              prefixIcon: Icon(Icons.lock,
                                color: Colors.grey,
                              ),
                              labelText: "Contraseña",
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              suffixIcon: GestureDetector(
                                child: ocultarPassword == true ? Icon(Icons.remove_red_eye_outlined, color: Colors.grey,)
                                    : Icon(Icons.remove_red_eye, color: Colors.grey,),
                                onTap: (){

                                },
                              ),
                            ),
                            validator: (String value){
                              if(value == null || value.isEmpty){
                                return "Por favor, ingrese su contraseña";
                              }
                              password = value;
                              return null;
                            },
                            onChanged: (value){
                              passwordSignIn = value;
                            },
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: recuerdame == false ? Icon(Icons.check_circle_outline, color: Colors.black54,)
                                    : Icon(Icons.check_circle, color: Colors.black54,),
                                onPressed: (){

                                },
                              ),
                              Text(
                                "Recuerdame",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>RecuperarPassword()));
                            },
                            child: Text(
                              "Olvidaste tu contraseña?",
                              style: TextStyle(
                                color: Color(0xffd32f2f),
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black54,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: (){

                            },
                            child: Text("Ingresar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        width: 100,
                        child: Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                      ),
                      Text("O INGRESA CON",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        width: 100,
                        child: Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  //Social Login
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(5,5),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/google_icon.png",),
                          Text("Regístrate con Google",
                            style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                     // signInWithGoogle();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistroPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("No tienes cuenta? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          ),
                          Text("Regístrate",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
