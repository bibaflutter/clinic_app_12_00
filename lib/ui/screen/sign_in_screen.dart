import 'dart:math';

import 'package:clinic_app_12_00/core/theme/app_colors.dart';
import 'package:clinic_app_12_00/core/theme/app_fonts.dart';
import 'package:clinic_app_12_00/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  String? errorText;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, 
          icon: Icon(
            Icons.close,
            color: AppColors.black.withOpacity(0.4),
            ),
          ),
        backgroundColor: AppColors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Войти',
          style: AppFonts.w600s17.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Войти',
                style: AppFonts.w700s34,
              ),
              SizedBox(height: 50),
              Text(
                'Номер Телефона',
                style: AppFonts.w400s15,
              ),
              TextField(
                controller: controller,
                style: AppFonts.w700s17,
                onChanged: (value) {
                  if(value.isNotEmpty && value.length < 9) {
                    errorText = 'Введите корректный пароль';
                  } else {
                    errorText = null;
                  }
                  setState(() {
                    
                  });
                } ,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                decoration: InputDecoration(
                  hintStyle: AppFonts.w700s17,

                  errorText: errorText,
                  counterText: '',
                  prefix: Text(
                    '+7',
                    style: AppFonts.w700s17,
                  ),
                  hintText: '  _ _ _  _ _ _  _ _ _',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.TextFieldColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.TextFieldColor,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.TextFieldColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'На указанный вами номер придет однократное СМС сообщение с кодом подтверждения',
                style: AppFonts.w400s15,
              ),
              SizedBox(height: 108),
              Center(
                child: AppButton(
                  title: 'Далее', 
                  onPressed: () async{
                    int code = Random().nextInt(8999) + 1000;
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString(
                      'phone', 
                      controller.text,
                    );
                    // print(
                    //   '${controller.text} ${prefs.getString('phone')}'
                    // );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          style: AppFonts.w600s17.copyWith(
                            color: AppColors.white,
                          ),
                          code.toString(),
                        ),
                      ),
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