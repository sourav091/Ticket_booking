import 'package:ecommerce_app/screens/ticket_view.dart';
import 'package:ecommerce_app/utils/app_info_list.dart';
import 'package:ecommerce_app/utils/app_layout.dart';
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/widgets/column_layout.dart';
import 'package:ecommerce_app/widgets/layout_builder_widget.dart';
import 'package:ecommerce_app/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],isColor: true,),
            ),
            const SizedBox(height: 1,),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start, isColor: false,
                      ),
                      
                      AppColumnLayout(
                        firstText: '5221 478566',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end, isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                  Gap(AppLayout.getHeight(20)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: '0055 444 77147',
                        secondText: "Number of e-Ticket",
                        alignment: CrossAxisAlignment.start, isColor: false,
                      ),
                      
                      AppColumnLayout(
                        firstText: 'B2SG28',
                        secondText: "Booking Code",
                        alignment: CrossAxisAlignment.end, isColor: false,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/visa.png", scale: 11,),
                              Text("*** 2462", style: Styles.headLineStyle3,)
                            ],
                          ),
                          Gap(5),
                          Text("Payment Method", style: Styles.headLineStyle4,)
                        ],
                      ),
                      const AppColumnLayout(
                        firstText: '\$249.99',
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end, isColor: false,
                      )
                    ],
                  ),
                  const SizedBox(height: 1,),
                  Gap(AppLayout.getHeight(20)),
                ],
              ),
            ),
            /*
            Bar code
            */
            BarcodeWidget(
              barcode: Barcode.code128(),
              data: 'https://github.com/martinovovo',
              drawText: false,
              color: Styles.textColor,
              width: double.infinity,
              height: 70
            )
          ],
        )
      ]),
    );
  }
}
