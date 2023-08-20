import 'package:ecommerce_app/utils/app_layout.dart';
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "DEL",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                    const   ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              debugPrint(
                                  "The width is ${constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
                                  width: 3, height: 1,
                                  child: DecoratedBox(decoration: BoxDecoration(
                                    color: Colors.white
                                  ),),
                                )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                          angle: 1.5,
                          child:const  Icon(Icons.local_airport_rounded, color: Colors.white,),),
                        ),
                        ],
                      )),
                      
                     const  ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "MUM",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                Row(
                  children: [
                    SizedBox(
                      width: 100, child: Text('Delhi', style: Styles.headLineStyle4.copyWith(color: Colors.white,),),
                    ),
                    Text("8h 30m", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    SizedBox(
                      width: 100, child: Text('Mumbai', textAlign:TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white,),),
                    ),
                  ],
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
