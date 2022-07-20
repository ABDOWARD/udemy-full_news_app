
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/shop_app/register/shop_register_screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class ShopLoginScreen extends StatelessWidget {
  ShopLoginScreen({Key key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Login now to brouse our hot offers',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Colors.grey,
                      ),
                ),
                SizedBox(
                  height: 30,
                ),
                defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'Email must not be empty';
                    } else {
                      return null;
                    }
                  },
                  label: 'Email Adress',
                  prefix: Icons.email,
                ),
                SizedBox(
                  height: 15,
                ),
                defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'password must not be empty';
                    } else {
                      return null;
                    }
                  },
                  label: 'Password',
                  prefix: Icons.lock_outline,
                  suffix: Icons.visibility,
                  suffixPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                defaultButton(
                    function: (){},
                    text: 'Login',
                  isUpperCase: true,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an acount ?',
                    ),
                    defaultTextButton(
                      function: () {
                        navigateTo(
                          context,
                          ShopRegisterScreen(),
                        );
                      },
                      text: 'register',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
