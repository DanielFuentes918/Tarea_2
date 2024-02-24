import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuenta de Google',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: GoogleAccountMenuClone(),
      ),
    );
  }
}

class GoogleAccountMenuClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            // Acción al presionar el ícono de cerrar
          },
        ),
        title: RichText(
          text: TextSpan(
            text: 'Cuenta de ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20), // Aumenta el tamaño de la fuente aquí
            children: [
              TextSpan(
                text: 'Google',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20), // Aumenta el tamaño de la fuente aquí
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.blue,
          tabs: [
            Tab(text: 'Página principal'),
            Tab(text: 'Información personal'),
            Tab(text: 'Datos y privacidad'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person,
                color: Colors.black), // Ícono de persona sin foto de perfil
            onPressed: () {
              // Acción al presionar el ícono de persona
            },
          ),
        ],
      ),
      body: TabBarView(
        children: [
          buildMainPage(),
          Center(child: Text('Información Personal')),
          Center(child: Text('Datos y Privacidad')),
        ],
      ),
    );
  }

  Widget buildMainPage() {
    return ListView(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('Tu cuenta está protegida'),
            subtitle: Text(
                'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.'),
            trailing: Icon(Icons.security,
                color: Colors.green, size: 30), // Ícono más grande al final
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('Verificación de privacidad'),
            subtitle: Text(
                'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.'),
            trailing: Icon(Icons.privacy_tip,
                color: Colors.blue, size: 30), // Ícono más grande al final
          ),
        ),
        Divider(),
        ListTile(
          title: const Text(
            '¿Buscas otra información?',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Buscar en la Cuenta de Google'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.help_outline),
          title: Text('Ver las opciones de ayuda'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Enviar comentarios'),
          onTap: () {},
        ),
        ListTile(
          title: Text(
              'Solo tu puedes ver la configuracion. También puedes revisar la configuracion de Maps, la Busqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos. Mas informacion'),
          onTap: () {},
        ),
      ],
    );
  }
}
