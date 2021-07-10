import 'package:flutter/material.dart';
import 'package:flutter_tesis_app/pages/home_page.dart';
import 'package:flutter_tesis_app/util_page.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final _formKeyRegistro = GlobalKey<FormState>();

  bool ocultarPassword = true;

  bool ocultarPasswordConfirm = true;

  String _email, _password;

  TextEditingController name = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 100,),
                    Text("REGISTRO",
                      style: TextStyle(
                        color: Color(0xffd32f2f),
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    Divider(
                      thickness: 5,
                      color: Color(0xffd32f2f),
                    ),
                    Form(
                      key: _formKeyRegistro,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: Column(
                          children: [
                            FieldRegistro("Nombres y Apellidos", Icons.person, name, false),
                            FieldRegistro("Teléfono", Icons.phone, phone, false,textInputType: TextInputType.phone,),
                            TextFormField(
                              controller: email,
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.email, color: Colors.grey,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black45,
                                  ),
                                ),
                                labelText: "E-mail",
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              validator: (String value){
                                if(value == null || value.isEmpty){
                                  return "Este campo es obligatorio, ingrese sus datos";
                                }
                                if(value.isNotEmpty && !value.contains(RegExp(r"(@.)"))){
                                  return "Ingrese un e-mail válido";
                                }
                                email.text = value;
                                return null;
                              },
                              onChanged: (value){
                                _email = value;
                              },
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: password,
                              obscureText: ocultarPassword,
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock_rounded, color: Colors.grey,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black45,
                                  ),
                                ),
                                labelText: "Contraseña",
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                suffixIcon: GestureDetector(
                                  child: ocultarPassword == true ? Icon(Icons.remove_red_eye_outlined, color: Colors.grey,)
                                      : Icon(Icons.remove_red_eye, color: Colors.grey,),
                                  onTap: (){
                                    ocultarPassword = !ocultarPassword;
                                    setState(() {});
                                  },
                                ),
                              ),
                              validator: (String value){
                                if(value == null || value.isEmpty){
                                  return "Este campo es obligatorio, ingrese sus datos";
                                }
                                if(value.isNotEmpty && value != confirmPassword.text){
                                  return "Las contraseñas no coinciden.";
                                }
                                password.text = value;
                                return null;
                              },
                              onChanged: (value){
                                _password = value;
                              },
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: confirmPassword,
                              obscureText: ocultarPasswordConfirm,
                              cursorColor: Colors.grey,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock_rounded, color: Colors.grey,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black45,
                                  ),
                                ),
                                labelText: "Confirmar Contraseña",
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                suffixIcon: GestureDetector(
                                  child: ocultarPasswordConfirm == true ? Icon(Icons.remove_red_eye_outlined, color: Colors.grey,)
                                      : Icon(Icons.remove_red_eye, color: Colors.grey,),
                                  onTap: (){
                                    ocultarPasswordConfirm = !ocultarPasswordConfirm;
                                    setState(() {});
                                  },
                                ),
                              ),
                              validator: (String value){
                                if(value == null || value.isEmpty){
                                  return "Este campo es obligatorio, ingrese sus datos";
                                }
                                if(value.isNotEmpty && value != password.text){
                                  return "Las contraseñas no coinciden.";
                                }
                                confirmPassword.text = value;
                                return null;
                              },
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                          primary: Color(0xffb71c1c),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: (){
                         // if(_formKeyRegistro.currentState.validate()){
                           // createUser().whenComplete((){
                             //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                       //     });
                         // }
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Text("REGISTRARME",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -15,
                right: 0,
                child: Image.asset("assets/images/sos_boton_panico.png", height: 200,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
