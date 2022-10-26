import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Ingenieria de tecnologias')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _imageProfile(),
            _buildAbout(),
            const SizedBox(height: 16),
            ElevatedButton(
                child: const Text('Pagina ListView'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                }),
          ],
        ));
  }

  Widget _imageProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 15),
      child: CircleAvatar(
          backgroundImage: const AssetImage('assets/img/rasec.png'),
          radius: 60,
          backgroundColor: Colors.grey[200]), //borrar si tu imagen tiene fondo
    );
  }

  Widget _buildAbout() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const Text(
            'Luis Miguel Vazquez Juarez',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Informacion',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text(
                'Titulo: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'TSU desarrollo de software multiplataforma',
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Soy Luis Miguel Vazquez Juarez Un estuduiante universitario que tiene un titulo en ingenireo y tecnico superior en el area de TI',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de ListView'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            'Mi equipo consiste de:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: const <Widget>[
              Text("Wendy", style: TextStyle(fontSize: 32)),
              Text('Eliasat', style: TextStyle(fontSize: 32)),
              Text('Neli', style: TextStyle(fontSize: 32)),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
