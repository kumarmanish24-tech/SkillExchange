import 'package:flutter/material.dart';
import 'package:ex32/provider/userinfoprovider.dart';
import 'package:provider/provider.dart';
import 'package:ex32/colors/colors.dart';


class CustomRadioCard extends StatelessWidget {
  final String value;
  final String title;
  final IconData icon;
  final String subtitle ;

  const CustomRadioCard({
    super.key,
    required this.value,
    required this.title,
    required this.icon,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<GenderProvider>();


    bool isSelected = provider.selectedGender == value;

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        context.read<GenderProvider>().selectGender(value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? Colors.teal : Colors.grey.shade300,
            width: 1,
          ),
          color: isSelected
              ? Colors.greenAccent.withOpacity(0.1)
              : Colors.white,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(

                color: Colors.tealAccent.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child:  Icon(icon, color: Colors.teal),
            ),



            const SizedBox(width: 10),
            Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 150,
                  child: Text(
                    subtitle,
                    style: const TextStyle(fontSize: 12,color:AppColors.middark),
                  ),
                ),
              ],
            ),
            Spacer(),
            Radio<String>(
              value: value,
              groupValue: provider.selectedGender,
              onChanged: (v) {
                context.read<GenderProvider>().selectGender(v!);
              },
            ),
          ],
        ),
      ),
    );
  }
}