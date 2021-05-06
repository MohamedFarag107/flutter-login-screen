import 'package:flutter/material.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen',
          style: TextStyle(
            color: Colors.black,
           fontWeight: FontWeight.w900,
          ),
          ),
      ),
      body:Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
                  child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text('Login',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                ),
                ),
                SizedBox(
                  height: 50,
                ),
                //email
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   labelText: 'Email Address',
                   prefixIcon:Icon( Icons.email,
                   color: Colors.black,
                   ),
                   border: OutlineInputBorder(),
                   hintText: 'Enter Your Email Address',
                   //helperText: '',
                   prefixText: '',
                   suffixText: '@gmail.com',
                   ),
                 
                 ),
                SizedBox(
                   height: 15,
                 ),
                //password
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                 decoration: InputDecoration(
                   labelText: 'Password',
                   prefixIcon:Icon( Icons.remove_red_eye,
                   color: Colors.black,
                   ),
                   border: OutlineInputBorder(),
                   hintText: 'Enter Your Password',
                   //helperText: '',
                   //prefixText: '',
                   //suffixText: '',
                   ),
                 
                 ),
                SizedBox(
                  height: 15,
                ),
               //button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                        width: double.infinity,
                        child: MaterialButton(
                        onPressed: (){},
                        child: Text('Login'),
                        color: Colors.blue,
            
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account ?'),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                        ),
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