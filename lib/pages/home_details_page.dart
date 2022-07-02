import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage  extends StatelessWidget {
  
final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Mytheme.creamColor,
      bottomNavigationBar: Container(
        
        child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
      
                    children: [
                      "\$${catalog.price}".text.bold.xl4.red800.make(),
                      ElevatedButton(
                        onPressed: () {}, 
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Mytheme.darkBluishColor),
                          shape: MaterialStateProperty.all(const StadiumBorder(),)),
                          child: "Buy".text.make() 
                        ).wh(100, 50)
                        
                        
                    ],
                  ).pOnly(right: 8),
      ).p20(),
      body: SafeArea(
        bottom: false,
        child: Column(
      
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).h32(context)
              ).p32(),
              Expanded(
                
                child: VxArc(
                  height: 30,
                  edge: VxEdge.TOP,
                  arcType: VxArcType.CONVEY,
                  child: Container(
                    width: context.screenWidth,
                    color:Colors.white ,
                    child: Column(
                      
                      children: [
                        catalog.name.text.xl4.color(Mytheme.darkBluishColor).bold.make(),
                catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                10.heightBox,
                "Vero lorem vero sed no duo invidunt, et kasd kasd lorem ut magna aliquyam ut erat sea, stet sit invidunt.".text.xl.textStyle(context.captionStyle).make().p24(),
                      ],
                    ).py64(),
                    ),
                )
                  )
          ],
        ),
      ),
    );
  }
}