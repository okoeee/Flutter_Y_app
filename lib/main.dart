import 'package:flutter/material.dart';
import 'package:youtube_app/video_default_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
       home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: Icon(Icons.videocam),
            title: Text(
                'Youtube_App',
            ),
            actions: [
              SizedBox(
                width: 40,
                child: FlatButton(
                  child: Icon(Icons.search),
                  onPressed: (){
                    //todo
                  },
                ),
              ),
              SizedBox(
                width: 50,
                child: FlatButton(
                  child: Icon(Icons.more_vert),
                  onPressed: (){
                    //todo
                  },
                ),
              ),
            ],
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: const Image(
                          image: NetworkImage(
                              'https://yt3.ggpht.com/ytc/AAUvwng4tQ0GjNvQN6XMMV8G4ISM5HXt-y2xhvFSMPiD=s176-c-k-c0x00ffffff-no-rj'
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                              'Youtube_App'
                          ),
                          FlatButton(
                            child: Row(
                              children: [
                                Icon(
                                    Icons.video_call,
                                    color: Colors.red,
                                ),
                                const Text(
                                    '登録する'
                                ),
                              ],
                            ),
                            onPressed: (){
                              //todo
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                 Expanded(
                   child: ListView.builder(
                     itemCount: items.length,
                     itemBuilder: (context, index) {
                       return ListTile(
                         onTap: () async {
                           await Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => VideoDetailPage()),
                           );
                         },
                         contentPadding: EdgeInsets.all(8),
                         leading: const Image(
                           image: NetworkImage(
                               'https://yt3.ggpht.com/ytc/AAUvwng4tQ0GjNvQN6XMMV8G4ISM5HXt-y2xhvFSMPiD=s176-c-k-c0x00ffffff-no-rj'
                           ),
                         ),
                         title: Text('${items[index]}'),
                         trailing: Icon(Icons.more_vert),
                       );
                     },
                   ),
                 ),
            ],
            ),
          ),
       ),
    );
  }
}