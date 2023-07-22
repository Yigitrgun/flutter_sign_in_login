import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Row(
            children: [
              ExitButton(),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SignInPadding(),
          const SizedBox(
            height: 40,
          ),
          SubTextPadding(),
          const EmailField(),
          const SizedBox(
            height: 40,
          ),
          DontAccountTextPadding(),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: const AppleButton(),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(child: const FacebookButton()),
          const SizedBox(
            height: 20,
          ),
          Container(child: const GoogleButton()),
        ],
      ),
    );
  }

//---------------------------Paddings Starting-----------------------------------
  Padding DontAccountTextPadding() {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: DontAccountText(),
    );
  }

  Padding SubTextPadding() {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SubText(),
    );
  }

  Padding SignInPadding() {
    return const Padding(
      padding: EdgeInsets.only(right: 250),
      child: SignIn(),
    );
  }
}

//---------------------------Paddings End-----------------------------------
//****************************************************************************** */
//---------------------------Buttons Starting-----------------------------------
class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Continue With Goggle',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ));
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Continue With Facebook',
          style: TextStyle(fontSize: 20),
        ));
  }
}

class AppleButton extends StatelessWidget {
  const AppleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        'Continue With Apple',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}

class ExitButton extends StatelessWidget {
  const ExitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10),
      child: OutlinedButton(
          onPressed: () {},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
    );
  }
}

//---------------------------Buttons End----------------------------------------
//****************************************************************************** */
//---------------------------Texts Starting----------------------------------------

class DontAccountText extends StatelessWidget {
  const DontAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Don't have a account ? ",
            style: TextStyle(
              color: Colors.black,
            )),
        Text(
          'Create one',
          style: TextStyle(
            color: Colors.blue,
            decorationColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class SubText extends StatelessWidget {
  const SubText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Book your entire trip in one place , with free access to Member Prices and Points.',
      style: TextStyle(color: Colors.black),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign in',
      style: TextStyle(color: Colors.black, fontSize: 30),
    );
  }
}

//---------------------------Texts End----------------------------------------
//****************************************************************************** */
//---------------------------Email Field----------------------------------------
class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: TextField(
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          labelText: 'Email Adress',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
