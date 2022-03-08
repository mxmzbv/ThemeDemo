import 'package:flutter/material.dart';

import 'package:theme_demo/theme.dart';

void main() {
  runApp(const ThemesDemoAppEx()); //AuthScreen());
}

class ThemesDemoAppEx extends StatefulWidget {
  const ThemesDemoAppEx({Key? key}) : super(key: key);

  @override
  _ThemesDemoAppExState createState() => _ThemesDemoAppExState();
}

class _ThemesDemoAppExState extends State<ThemesDemoAppEx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: userDefinedTheme(),
        //themeMode: ThemeMode.dark,
        home: const ThemesDemoScreen());
        
  }
}

class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);

  
  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xFFbbbbbb), width: 1));
     

    return Scaffold(
      appBar: AppBar(
        title: const Text("ThemeDemo"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
               Container(
                height: 81,
                color: Theme.of(context).colorScheme.secondary,
                
              ),
              Container(
                width: 110,
                height: 84,
                child: Image(image: AssetImage('assets/dartLogo.png')),
              ),
              SizedBox(height: 20),
              Text(
                'Введите логин в виде 10 цифр номера телефона',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
                ),
              SizedBox(height: 20),
              const SizedBox(
                width: 244,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Телефон'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 244,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Пароль'),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                  width: 154,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Войти'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0079D0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36))),
                  )),
              SizedBox(height: 40),
              InkWell(
                child: Text(
                  'Регистрация',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text(
                  'Забыли пароль?',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
 
  



}
