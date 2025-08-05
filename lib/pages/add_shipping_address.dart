import 'package:fashoinstore/widgets/CheckOutBox.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/customtextfeild2.dart';
import 'package:fashoinstore/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class AddShippingAddress extends StatefulWidget {
  const AddShippingAddress({super.key, this.editData});
  static String id = 'addShippingAddress';
  final dynamic editData;

  @override
  State<AddShippingAddress> createState() => _AddShippingAddressState();
}

class _AddShippingAddressState extends State<AddShippingAddress> {
  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    codeController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.editData != null) {
      firstNameController.text = widget.editData['first'] ?? ""; //to upload data if it in edit mode
      lastNameController.text = widget.editData['last'] ?? "";
      addressController.text = widget.editData['address'] ?? "";
      cityController.text = widget.editData['city'] ?? "";
      stateController.text = widget.editData['state'] ?? "";
      codeController.text = widget.editData['zip'] ?? "";
      phoneController.text = widget.editData['phone'] ?? "";
    }
    super.initState();
  }

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(isBlack: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(16),
            Center(child: HeaderOfCheckout(title: 'ADD SHIPPING ADDRESS')),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          label: 'First Name',
                          controller: firstNameController,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CustomTextField(
                          label: 'Last Name',
                          controller: lastNameController,
                        ),
                      ),
                    ],
                  ),
                  Gap(30),
                  CustomTextField(
                    label: 'Address',
                    controller: addressController,
                  ),
                  Gap(30),
                  CustomTextField(label: 'City', controller: cityController),
                  Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          label: 'State',
                          controller: stateController,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CustomTextField(
                          label: 'Zip Code',
                          controller: codeController,
                        ),
                      ),
                    ],
                  ),
                  Gap(30),
                  CustomTextField(
                    label: 'Phone Number',
                    controller: phoneController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
                if(_formKey.currentState!.validate()) {
                  return;
                } else {
                  final data = {
                    'first' : firstNameController.text,
                    'last' : lastNameController.text,
                    'address' : addressController.text,
                    'state':stateController.text,
                    'zip' : codeController.text,
                    'city' : cityController.text,
                    'phone' : phoneController.text,
                  };
                  Navigator.pop(context, data);
                }
            ;
          }
        ,

        child: CheckOutBox(title: 'Add Now'),
      ),
    );
  }
}
