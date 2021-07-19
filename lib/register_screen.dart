import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
        title: Text(
          "My First App",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    //print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: passwordConfirmationController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password Confirmation',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                margin: const EdgeInsets.only(top: 40.0),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    print(nameController.text);
                    print(emailController.text);
                    print(passwordController.text);
                    print(passwordConfirmationController.text);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You have an account?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login Now',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
