import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getx/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username'
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'password'
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              loginController.login(
                usernameController.text,
                passwordController.text);
                }, 
                child: Text('Login'))
          ],
        ),
        ),
    );
  }
}