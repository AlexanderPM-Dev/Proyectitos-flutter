import 'package:flutter/material.dart';
import 'package:nuevas_promesas/Login/Bloc/login_bloc.dart';
import 'package:nuevas_promesas/Login/Services/login_service.dart';

class LoginView extends StatefulWidget {
  static const String name = "LoginView";
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcotroller = TextEditingController();

  //External vars
  LoginBloc bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imputLogings(controller: usercontroller),
            imputLogings(controller: passcotroller),
            buttonLoging()
          ],
        ),
      ),
    );
  }

  imputLogings({required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelStyle: TextStyle(
          color: Color(0xFF6200EE),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6200EE)),
        ),
      ),
    );
  }

  buttonLoging() {
    return ElevatedButton(
      onPressed: () {
        // Respond to button press
        bloc.requestLogin(user: usercontroller.text, password: passcotroller.text);
      },
      child: Text('Iniciar Sesion'),
    );
  }
}
