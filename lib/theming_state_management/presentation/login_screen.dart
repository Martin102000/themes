// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:delevery_diego/theming_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    CicularContainer(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 50,
                        foregroundImage: AssetImage('assets/logo.png'),
                        backgroundColor: Theme.of(context).canvasColor,
                      ),
                    )
                  ],
                ),
              ),
              Espaciador(),
              Text('Iniciar Sesión',
                  style: Theme.of(context).textTheme.headline5),
              const SizedBox(
                height: 50,
              ),
              Expanded(flex: 4, child: FormMain()),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(colors: [
                            DeliveryColors.purple,
                            DeliveryColors.green
                          ]),
                        ),
                        child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Ingresar',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: DeliveryColors.white,
                                    letterSpacing: 1,
                                  ),
                            ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormMain extends StatelessWidget {
  const FormMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            TextGenerator(
                title: 'Nombre de Usuario:',
                hint: 'Usuario',
                icon: Icon(
                  Icons.person,
                  color: DeliveryColors.purple,
                )),
            TextGenerator(
                title: 'Contraseña de Usuario:',
                hint: '***********',
                icon: Icon(
                  Icons.lock,
                  color: DeliveryColors.purple,
                )),
          ],
        ),
      ),
    );
  }
}

class TextGenerator extends StatelessWidget {
  const TextGenerator({
    Key? key,
    required this.title,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String hint;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(15),
          //   color: DeliveryColors.white,
          // ),
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            decoration: InputDecoration(
              //border: InputBorder.none,
              hintText: hint,

              prefixIcon: icon,
            ),
          ),
        ),
      ],
    );
  }
}

class Espaciador extends StatelessWidget {
  const Espaciador({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class CicularContainer extends StatelessWidget {
  const CicularContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [DeliveryColors.green, DeliveryColors.purple]),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(300))),
    );
  }
}
