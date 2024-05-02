import 'package:flutter/material.dart';

class YourLeftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your left page content
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 190, 80),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Row(
          children: [
            // Image à gauche
            Image.network(
              'https://th.bing.com/th/id/OIP.tt66I2-ZBZgezr1CjXePeQHaD6?rs=1&pid=ImgDetMain',
              height: 40,
              
            ),
            const Spacer(), // Pousse le reste vers la droite

            // Barre de recherche au centre
            Expanded(
              child: Container(
                height: 40,
                
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 0.5),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Rechercher...',
                    prefixIcon: Icon(Icons.search),
                    
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),

            // Icônes à droite
            const Icon(Icons.notifications, color:Color.fromARGB(255, 0, 0, 0)),
            const SizedBox(width: 10),
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              backgroundImage: NetworkImage('https://th.bing.com/th/id/R.9d32bec8058bd3595a63a08a8cc12ade?rik=9cCTin36GLU%2f5w&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_87237.png&ehk=hVpH%2bC7rwlA1j2KqxGpMs1sp9l0RgM0jjRJsJsvDoPc%3d&risl=&pid=ImgRaw&r=0'),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
     body: Column(
      children: [
        
      ],
     ), 
    );
  }
}
