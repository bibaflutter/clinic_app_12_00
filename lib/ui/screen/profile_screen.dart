import 'package:clinic_app_12_00/core/theme/app_colors.dart';
import 'package:clinic_app_12_00/core/theme/app_fonts.dart';
import 'package:clinic_app_12_00/core/theme/app_images.dart';
import 'package:clinic_app_12_00/ui/widgets/app_button.dart';
import 'package:clinic_app_12_00/ui/widgets/image_and_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: Text(
            'Профиль',
            style: AppFonts.w400s15.copyWith(
              color: AppColors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Settings',
                    )
                  ),
                );
              }, 
              icon: Icon(
                Icons.settings,
                color: AppColors.black,
                ), 
              ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Зачем нужен профиль',
                style: AppFonts.w400s15,
              ),
              SizedBox(height: 25),
              ImageAndText(
                title: 'Записывайтесь на прием к лучим специалистам',
                image: AppImages.hospital,
              ),
              ImageAndText(
                title: 'Сохраняйте результаты ваших анализов, диагнозыи рекомендации врачей в собственную библиотеку', 
                image: AppImages.notepad
              ),
              ImageAndText(
                title: 'Просматривайте прогнозы о врачах и дополняйте собственными комментариями', 
                image: AppImages.speech,
              ),
              ImageAndText(
                title: 'Получайте уведомления о приеме или о поступивщих сообщениях', 
                image: AppImages.bell,
              ),
              SizedBox(height: 20),
              AppButton(
                title: 'Далее', 
                onPressed: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
