import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[300],
        foregroundColor: Colors.white,
      ),
      drawer: buildGroubDrawer(context),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        children:
          List.generate(10,(index){
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 5.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue[200]
                ),
                  child: Text('materi$index',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 20),)
              ),
          );
          })
      ),
    );
  }

  Widget buildGroubDrawer(BuildContext context) {
    return(
      Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[300]),
              child: const Text('Luqman Alfi Kuniawan Darwito',
                style:
                  TextStyle(
                    color: Colors.white,
                    fontSize: 20
                    )),
            ),
            ExpansionTile
              (title: const Text('Materi'),
                children: [
                  ListTile(
                    title: const Text('materi 1'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('materi 2'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('materi 3'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('materi 4'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('materi 5'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],),
            ExpansionTile
              (title: const Text('Tugas'),
                children: [
                  ListTile(
                    title: const Text('tugas 1'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('tugas 2'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('tugas 3'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('tugas 4'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('tugas 5'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],),
              ],
        ),
    )
    );
  }
}
