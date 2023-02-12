import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'NATTHANIL WANNASOPA'; 
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 250, 0, 0),
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
          )
        ])),
        
       const Text.rich(
        
  TextSpan(
    children: <TextSpan>[
      TextSpan(text: 'Login', 
      
      style: 
      
      TextStyle(
        
        fontSize:(22),
        fontWeight: FontWeight.bold)),
    ],
  ),
),

        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Username',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 81, 151, 0),
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
                child: const Text(
                  'เข้าสู่ระบบ',
                  // style: ,
                  
                )
                )
                ),
        
        Center(
            child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(199, 0, 3, 151),
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
                child: const Text(
                  'ลงทะเบียน',
                  style: TextStyle(fontSize: 16),
                ))),
      ],
    );
  }
}
// ข้อมูลหน้าสอง
class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
                  '',),
         
          const Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style:
                  
      
      TextStyle (
        
        fontSize:(22),
        fontWeight: FontWeight.bold)),
      

        
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Username',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'ที่อยู่',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'อีเมล',
            ),
          ),
        ),

        
        // ปุ่มตกลง
        Center(
            child: ElevatedButton(
                  
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 3, 0, 209),
                    foregroundColor: Colors.white),
                    
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyApp()),
                        
                        
                  );
                  
                },
                child: const Text(
                  'สมัคร',
                  style: TextStyle(fontSize: 16),
                  
                )
                )
                
                ),
               
                
        Padding(
          padding: EdgeInsets.all(5),
        ),
      ],
    );
  }
}


// หน้าที่2
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: const Text('Index'),
      ),
        body: Image.network('https://scontent.fnak1-1.fna.fbcdn.net/v/t39.30808-6/327056412_1386779182091464_8590989852701500879_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFwsBOUi97I18bKaMPoN35Qb-IpCTT6Nlhv4ikJNPo2WAEpM4m_qHuYOEQkyvP9TIA-5A5FEspsRgRiZZif8F_T&_nc_ohc=kwecexb2jOMAX8AWLuL&tn=DH8dg1EXqX-FKzFA&_nc_ht=scontent.fnak1-1.fna&oh=00_AfC8MkWRwaBg8Pn9OGpMOuMisGDbh88nrMzLkFjStQA6Ng&oe=63ECDAAE'),
     
    );
    
  }
  
}

        
      
     
  

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: const Text('Register'),
      ),
      
     body: const MyForm(),
     
    );
  }
}

class teee extends StatelessWidget {
  const teee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: const Text('สมัคร'),
      ),
      
     body: const MyCustomForm(),
     
    );
  }
}
