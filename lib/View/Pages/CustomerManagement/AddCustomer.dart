import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:point_of_sell/Control/CustomerController/CustomerController.dart';
import 'package:point_of_sell/Model/Models/DataBaseApp/CustomersDataBase.dart';
import 'package:point_of_sell/View/Colors/Colors.dart';
import 'package:point_of_sell/View/Widget/ShareWidget/CustomMaterialButton.dart';
import 'package:point_of_sell/View/Widget/TextField.dart';
import 'package:point_of_sell/View/style/SizeApp/ScreenSize.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
   late TextEditingController _name;
   late TextEditingController _phone;
  late  TextEditingController _location;

  Customercontroller c = Get.put(Customercontroller());
  @override
  void initState() {
  _name = TextEditingController();
  _phone = TextEditingController();
  _location = TextEditingController();
     super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    _location.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: ColorUsed.whitesoft,
        height: context.getHeight(100),
        width: context.getWidth(100),
        child: Column(
          children: [
            TextFieldCustom(
              text: _name,
              icons: Icons.person,
              name: 'name'.tr,
              // input: TextInputType.text,
            ),
            TextFieldCustom(
              text: _phone,
              icons: Icons.phone,
              name: 'phone'.tr,
              // input: TextInputType.phone,
            ),
            TextFieldCustom(
              icons: Icons.location_on,
              name: 'location'.tr,
              // input: TextInputType.text,
              text: _location,
            ),
            CustomMaterialButton(
              title: 'Add'.tr,
              onPressed: () async {
               await c.insert(
                  {
                    CustomersDatabase.name: _name.text,
                    CustomersDatabase.phone: _phone.text,
                    CustomersDatabase.address: _location.text
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
