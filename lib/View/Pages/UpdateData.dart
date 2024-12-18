import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_of_sell/View/Widget/TextField.dart';
import '../../Control/HomeController.dart';
import '../../Model/Models/DataBaseApp/DataBaseSqflite.dart';
import '../Colors/Colors.dart';

class UpdateData extends StatelessWidget {
  String named, coded, saled, buyt, quan,id;
  late DataBaseSqflite data;
  TextEditingController name = TextEditingController();

  TextEditingController code = TextEditingController();

  TextEditingController sale = TextEditingController();

  TextEditingController buy = TextEditingController();

  TextEditingController quantity = TextEditingController();

 TextEditingController date = TextEditingController();
  UpdateData({
    super.key,
    required this.named,
    required this.coded,
    required this.saled,
    required this.buyt,
    required this.quan,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        name.text = named;
        code.text = coded;
        sale.text = saled;
        buy.text = buyt;
        quantity.text = quan;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Update Data'),
            backgroundColor: ColorUsed.appBarColor,
            leading: IconButton(
              onPressed: () {
                controller.update();
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                const SizedBox(
                  height: 16,
                ),
                TextFieldCustom(
                  name: 'itemName'.tr,
                  icons: Icons.person,
                  text: name,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldCustom(
                  name:'code'.tr,
                  icons: Icons.barcode_reader,
                  text: code,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldCustom(
                  name: 'sale'.tr,
                  icons: Icons.price_change,
                  text: sale,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldCustom(
                  name: 'buy'.tr,
                  icons: Icons.description,
                  text: buy,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldCustom(
                  name: 'quantity'.tr,
                  icons: Icons.description,
                  text: quantity,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldCustom(
                  name: 'date'.tr,
                  icons: Icons.date_range,
                  text: date,
                ),
                const SizedBox(
                  height: 22,
                ),
                OutlinedButton(
                  onPressed: () async {
                    controller.updateData(
                      {
                        DataBaseSqflite.name: name.text,
                        DataBaseSqflite.codeItem: code.text,
                        DataBaseSqflite.sale: sale.text,
                        DataBaseSqflite.buy: buy.text,
                        DataBaseSqflite.quantity: quantity.text,
                        DataBaseSqflite.date:date.text,

                      },
                      id

                    );
                    named = "";
                    coded = "";
                    buyt = "";
                    saled = "";
                    quan ="";

                    name.clear();
                    code.clear();
                    sale.clear();
                    buy.clear();
                    quantity.clear();
                    date.clear();
                  
                  },
                  child: Text(
                    'Update_Data'.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorUsed.appBarColor,
                      fontSize: 14,
                    ),
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
