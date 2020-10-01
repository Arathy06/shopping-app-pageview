
import 'package:flutter/material.dart';
import 'package:flutter_pageview/Models/Dress.dart';


class PageViewDemo extends StatelessWidget {

  List<Dress>Dlist=[
    Dress(name: "Ethnic 4 you",price: 399,img: "https://images-na.ssl-images-amazon.com/images/I/71dWmgymiYL._UY741_.jpg"),
    Dress(name: "Priha Creation",price: 799,img: "https://images-na.ssl-images-amazon.com/images/I/71%2BPVap%2Bh3L._UY741_.jpg"),
    Dress(name: "The Indian Culture",price: 295, img: "https://images-na.ssl-images-amazon.com/images/I/71ScaIG2VaL._UL1500_.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

          Expanded(
            child: PageView(

                  children: [
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.cyan,
                         image: DecorationImage(
                             fit: BoxFit.fill,
                             image:NetworkImage("https://i.ytimg.com/vi/qlZBty_BAeU/maxresdefault.jpg") )
                       ),
                       
                     ),

                    Container(
                      decoration: BoxDecoration(
                        color:Colors.greenAccent,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://new-img.patrika.com/upload/2020/06/01/photo_2020-06-01_12-11-29_6153111_835x547-m.jpg"))

                      ),
                      
                    ),

                    Container(
                      decoration: BoxDecoration(
                          color:Colors.blueAccent,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("https://hotdealszone.com/wp-content/uploads/2019/12/Flipkart-Offers-on-mobiles-1024x576.png"))

                      ),
                    ),





                  ],


            ),
          ),

        Expanded(
            flex: 2,
            child: Container(
               color: Colors.white30,
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: Dlist.length,
                itemBuilder: (context,index){
                  return Card(
                  elevation: 10.0,
                  child: ListTile(
                     leading: Hero(tag: "images", 
                     child:CircleAvatar(

                        backgroundImage: NetworkImage(Dlist[index].img),
                         
                       )),
                    title: Text(Dlist[index].name,style: TextStyle(color: Colors.black,fontSize: 20.0),),
                    subtitle: Text("price:${Dlist[index].price}",style: TextStyle(color: Colors.blue,fontSize: 15.0),),
    ),
                  );
    },
              
        )
        
        
        )
        )
      ],
      
    );






  }
}
