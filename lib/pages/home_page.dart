import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:topup/main.dart';
import 'package:topup/pages/about.dart';
import 'package:topup/pages/codm.dart';
import 'package:topup/pages/genshin.dart';
import 'package:topup/pages/lapor.dart';
import 'package:topup/pages/pubg.dart';
//import 'package:topup/botomnavi.dart';
//import 'package:topup/pages/edit_product_page.dart';


import '../providers/auth.dart';
import 'bantuan.dart';

import 'ml.dart';

//import '../pages/add_product_page.dart';
//import '../widgets/product_item.dart';

 final List<String> imageList = [
 'https://imgur.com/eUThYgj.jpg',
  'https://imgur.com/Akp3TYo.jpg',
  'https://imgur.com/TgbNe7W.jpg',
  'https://imgur.com/1ZnnrvR.jpg',
  'https://imgur.com/qSopdyN.jpg',
  'https://imgur.com/U0tand6.jpg'
];

class HomePage extends StatefulWidget {
  static const route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  bool isInit = true;
  bool isLoading = false;
  get children => null;
final CarouselSlider autoPlayImage = CarouselSlider(
options: CarouselOptions(
   autoPlay: true,
      aspectRatio: 2.0,
      enlargeCenterPage: true,
),
items: imageList.map((e) =>ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(e,
                fit: BoxFit.cover,)
                
                
              ],),
          )).toList()
);

 



  @override
  Widget build(BuildContext context) {

    var child;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () => Provider.of<Auth>(context, listen: false).logout(),
        ),
        title: Text("GENPACT ID"),
        
        
  
      ),
      backgroundColor: Colors.blue[100],
     body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('JASA TOP UP TERPERCAYA ANTI MINUS ',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
               ),)),

              autoPlayImage,
              
              menuusatu(),
              menuutama(),
              menudua(),
              menutiga()
              
              
              
            ],
          ),
        ),
          

              
      
      )
  
     
      
    );
    
  }

}


class menuutama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 4 / 2,
        shrinkWrap: true,
        children: [
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: ()async{
                Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => ml()));
              },
              //padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(height: 70, width: 120, image: NetworkImage("https://imgur.com/L0rdcM8.png"),),],
                  //Icon(Icons.gamepad, size: 50.0,),
                  //Text('GENSHIN IMPACT')],
                ),),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: ()async{
                Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => pubg()));
              },
              //padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(height: 70, width: 120, image: NetworkImage("https://imgur.com/sY687DK.png"),),],
                  //Text('MOBILE LEGEND')],
                ),),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: ()async{
                Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => codm()));
              },
             // padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(height: 70, width: 120, image: NetworkImage("https://imgur.com/XxCJQ0L.png"),),],
                 // Text('CODM')],
                ),),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: ()async{
                Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => genshin()));
              },
              //padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(height: 70, width: 130, image: NetworkImage("https://imgur.com/1vQawLr.png"),),],
                  //Text('PUBG')],
                ),),
          )
        ],),
    );
  }
}
class menuusatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
        children:  const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Dapatkan Diskon TOP UP up to 20% Langsung Klik Di bawah karena Stok Terbatas, Di Jamin  LEGAL 100% ',
                textAlign: TextAlign.center,
               style: TextStyle(
                 color: Colors.blueAccent,
                 fontWeight: FontWeight.bold,
               ),)),

              
              
              
              
              
              
            ],),
        
    );
         
       
  }
}
class menudua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
        children:  const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Butuh Bantuan?, Lapor Masalah? ',
                textAlign: TextAlign.center,
               style: TextStyle(
                 color: Colors.blueAccent,
                 fontWeight: FontWeight.bold,
               ),)),

              
              
              
              
              
              
            ],),
        
    );
         
       
  }
}
class menutiga extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Container(
       child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 4 / 2,
        shrinkWrap: true,
        children: [
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: ()async{
                Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => lapor()));
              },
              //padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  
                  Icon(Icons.email_outlined, size: 50.0,color: Colors.white,),
                  ],
                ),),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: ()async{
                Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => bantuan()));
              },
              //padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.help, size: 50.0,color: Colors.white,),
                  ],
                  //Text('MOBILE LEGEND')],
                ),),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: ()async{
                Navigator.push(context,
                 new MaterialPageRoute(builder: (context) => about()));
              },
             // padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.account_box, size: 50.0, color: Colors.white,),
                  
                  ],
                 // Text('CODM')],
                ),),
          ),
        ],)
    );
  }
}