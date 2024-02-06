import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Model/Utils/app_colors.dart';
import 'Widget/bottom_nav_widget.dart';

class GroupOrderPage extends StatefulWidget {
  @override
  _GroupOrderPageState createState() => _GroupOrderPageState();
}

class _GroupOrderPageState extends State<GroupOrderPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _pnrController = TextEditingController();
  final _passengersController = TextEditingController();
  final _dateController = TextEditingController();
  int? _passengerCount;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _pnrController.dispose();
    _passengersController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.boxColor,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/Back.png',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.0),
          child: Text(
            '    Group Order',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "text1",
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(height: 20,),
                const Text(
                  'Bulk Order for Group in Train Request Form',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: "text",
                    color: AppColors.textColor,
                  ),
                ),
                const SizedBox(height: 8),

                const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has',
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColors.textColor4,
                    fontFamily: "text",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                      color: AppColors.boxColor1,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "text1",
                          fontSize: 14,
                          color: AppColors.textColor4
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.boxColor1,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '+91 587679698',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "text1",
                          fontSize: 14,
                          color: AppColors.textColor4
                      ),

                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.boxColor1,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "text1",
                          fontSize: 14,
                          color: AppColors.textColor4
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.boxColor1,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: TextFormField(
                    controller: _pnrController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter PNR number',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "text1",
                          fontSize: 14,
                          color: AppColors.textColor4
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.boxColor1,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: DropdownButtonFormField<int>(
                    value: _passengerCount,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: _passengerCount == null ? 'Number of passengers travelling' : null,
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "text1",
                          fontSize: 14,
                          color: AppColors.textColor4
                      ),
                    ),
                    items: List.generate(10, (index) => index + 1)
                        .map((value) => DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    ))
                        .toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _passengerCount = newValue == _passengerCount ? null : newValue;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.boxColor1,
                    borderRadius: BorderRadius.circular(8)
                  ),

                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mention Journey date',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "text1",
                        fontSize: 14,
                        color: AppColors.textColor4
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year + 1),
                          );
                          if (selectedDate != null) {
                            setState(() {
                              _dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate);
                            });
                          }
                        },
                        child: Image.asset("assets/images/calender2.png"),
                      ),
                    ),
                    readOnly: true,
                    onTap: () {
                      if (_dateController.text.isEmpty) {
                        _selectDate(context);
                      }
                    },
                  ),
                ),


                const SizedBox(height: 180),
                // Submit button
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55)
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Perform form submission logic
                        print('Form submitted');
                      }
                    },
                    child: const Text('Submit',
                      style: TextStyle(
                          fontFamily: "text",
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),),
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.textColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _selectDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (selectedDate != null) {
      setState(() {
        _dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate);
      });
    }
  }
}
