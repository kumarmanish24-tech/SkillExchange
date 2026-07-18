import 'package:flutter/material.dart';
import 'package:ex32/colors/colors.dart';
import 'customeWidgets/custom_radio_card.dart';
import 'pagetra.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_multi_select_dropdown/flutter_multi_select_dropdown.dart';


class MyHorizontalStepper extends StatefulWidget {
  const MyHorizontalStepper({super.key});

  @override
  State<MyHorizontalStepper> createState() => _MyHorizontalStepperState();
}

class _MyHorizontalStepperState extends State<MyHorizontalStepper> {
  final PageController _pageController = PageController();
  int _currentStep = 0;
  final int _totalSteps = 5;


  List<String> selectedItemsTeach = [];
  List<String> selectedItemsLearn = [];




  // Dropdown items definition
  final List<DropdownItem<String>> _items = [
    DropdownItem(label: 'Flutter', value: 'flutter'),
    DropdownItem(label: 'Dart', value: 'dart'),
    DropdownItem(label: 'Firebase', value: 'firebase'),
    DropdownItem(label: 'UI/UX Design', value: 'UI/UX design'),
    DropdownItem(label: 'Git', value: 'git'),
  ];




  // 1. Defined titles for each step
  final List<String> _stepTitles = [
    'Profile',
    'Basic info',
    'About You',
    'Skills',
    'Finish',
  ];

  // 2. Map distinct icons to each individual step sequence
  final List<IconData> _stepIcons = [
    Icons.perm_identity, // Step 1
    Icons.info_outline, // Step 2
    Icons.contact_mail_rounded, // Step 3
    Icons.work, // Step 4
    Icons.check, // Step 5
  ];

  void _nextStep() {
    if (_currentStep < _totalSteps - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Registration Complete!')));
    }
  }

  void _prevStep() {
    if (_currentStep > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),

        // Custom Responsive Header Indicator with Icons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_totalSteps, (index) {
              final isDone = index < _currentStep;
              final isActive = index == _currentStep;

              return Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    // Step Circle Container
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 40, // Slightly larger circle to fit icons nicely
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isDone
                            ? Colors.teal
                            : (isActive ? Colors.teal : Colors.grey[200]),
                        border: Border.all(
                          color: isActive
                              ? Colors.teal.shade700
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        // If the step is finished, show a checkmark. Otherwise, show the unique step icon.
                        child: isDone
                            ? const Icon(
                                Icons.check_rounded,
                                size: 20,
                                color: Colors.white,
                              )
                            : Icon(
                                _stepIcons[index],
                                size: 18,
                                color: isActive
                                    ? Colors.white
                                    : Colors.grey[600],
                              ),
                      ),
                    ),

                    // Connecting Line between circles
                    if (index < _totalSteps - 1)
                      Expanded(
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 3,
                          color: index < _currentStep
                              ? Colors.teal
                              : Colors.grey[200],
                        ),
                      ),
                  ],
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 16),

        Expanded(
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (page) {
              setState(() {
                _currentStep = page;
              });
            },
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Create Your Profile ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Let's start with your profile photo and name.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 20),
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.teal,
                        child: CircleAvatar(
                          radius: 78,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: Colors.teal,
                            size: 35,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: Column(
                          children: [
                            Text(
                              "Add Profile Photo",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkfont,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              "JPG PNG up to 5MB",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.middark,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Enter First name', // The placeholder text
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: AppColors.theme,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: AppColors.theme,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Last name', // The placeholder text
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: AppColors.theme,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.perm_identity,
                              color: AppColors.theme,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Choose a unique username', // The placeholder text
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: AppColors.theme,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.alternate_email_rounded,
                              color: AppColors.theme,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Basic Information',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Tell us a few basic details about yourself",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.perm_identity,
                            color: Colors.teal,
                          ),
                        ),
                        // Read Income Amount
                        title: Text(
                          'Name',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        // Read Notes and Date
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Text(
                              'Manish kumar',
                              style: const TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),

                        // Delete Button (Optional)
                      ),
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.alternate_email_rounded,
                            color: Colors.teal,
                          ),
                        ),
                        // Read Income Amount
                        title: Text(
                          'Username ',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        // Read Notes and Date
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Text(
                              'Manish_dev',
                              style: const TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),

                        // Delete Button (Optional)
                      ),
                      SizedBox(height: 20),

                      SizedBox(
                        width: 300,
                        height: 150,
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          minLines: null,
                          keyboardType: TextInputType.multiline,
                          textAlignVertical:
                              TextAlignVertical.top, // 1. Align text to the top

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Bio',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),

                            // 2. Add padding to space out text from the top and left borders
                            contentPadding: EdgeInsets.only(
                              top: 16.0,
                              bottom: 16.0,
                              right: 16.0,
                            ),

                            // 3. Align the icon to the top instead of the center
                            prefixIcon: Container(
                              alignment: Alignment.topCenter,
                              width:
                                  48, // Standard width for standard icon spacing
                              padding: EdgeInsets.only(
                                top: 14.0,
                              ), // Adjust this to line up perfectly with your text
                              child: Icon(Icons.edit, color: AppColors.theme),
                            ),
                            // 4. Force the prefix icon box to stretch vertically so alignment works
                            prefixIconConstraints: BoxConstraints(
                              minHeight: 200,
                              maxHeight: 200,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: AppColors.theme,
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Location', // The placeholder text
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: AppColors.theme,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: AppColors.theme,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Profession', // The placeholder text
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: AppColors.theme,
                                width: 1.0,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.work_outline,
                              color: AppColors.theme,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'About You',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Help other understand you better.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),

                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("How do you want to use SkillExchange?",style: TextStyle(fontSize: 15,color: AppColors.darkfont,fontWeight: FontWeight.w500),)

                        ],
                      ),
                      Column(
                        children: [
                          const CustomRadioCard(
                            value: "teach",
                            title: "I love to teach",
                            icon: Icons.school_outlined,
                            subtitle: "Share my knoledge and help other grow.",
                          ),
                          const CustomRadioCard(
                            value: "learn",
                            title: "I love to learn",
                            icon: Icons.book_outlined,
                            subtitle: "I'm here to learn new skills and improve myself",
                          ),
                          const CustomRadioCard(
                            value: "both",
                            title: "Both teaching & learning",
                            icon: Icons.people_alt_outlined,
                            subtitle: "I want to teach and learn from other.",
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("What are your interests?(Optional)",style: TextStyle(fontSize: 15,color: AppColors.darkfont,fontWeight: FontWeight.w500),)
                          
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        width: 350,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.code_off_outlined,size: 20,),
                                      Text("Programming",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.color_lens_outlined,size: 20,),
                                      Text("Design",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 40,
                                  width:90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.smart_toy_outlined,size: 20,),
                                      Text("AI/ ML",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),





                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.work_outline,size: 20,),
                                      Text("Business",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.campaign,size: 20,),
                                      Text("Marketing",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 40,
                                  width:110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.camera_alt_outlined,size: 20,),
                                      Text("Photography",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),





                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.music_note_outlined,size: 20,),
                                      Text("Music",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color:  Colors.teal ,
                                        width: 1,
                                      ),
                                      color:
                                      Colors.greenAccent.withOpacity(0.1)

                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(width: 5,),
                                      Icon(Icons.more_horiz_outlined,size: 20,),
                                      Text("Other",style: TextStyle(fontSize: 12),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),

                                ),






                              ],
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
              Center(child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Your Skills',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Add the skills you can teach and",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "those you want to learn.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Skills I can teach',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Add the skills you are good at and ',
                            style: TextStyle(fontSize: 15,color: AppColors.middark),
                          ),
                          const Text(
                            'can teach others.',
                            style: TextStyle(fontSize: 15,color: AppColors.middark),
                          ),
                          const SizedBox(height: 8),

                          // Core Dropdown Widget
                          MultiDropdown<String>(
                            items: _items,
                            searchEnabled: true,
                            chipDecoration:  ChipDecoration(
                              backgroundColor: Colors.tealAccent.withValues(alpha: 0.2),
                              labelStyle: TextStyle(color: Colors.teal,fontWeight: FontWeight.w500),
                            ),
                            fieldDecoration: FieldDecoration(
                              hintText: 'Please select Skills here',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            // Naye version mein direct values ki list milti hai (bina DropdownItem ke)
                            onSelectionChange: (selectedValues) {
                              setState(() {
                                if (selectedValues != null) {
                                  selectedItemsTeach = List<String>.from(selectedValues);
                                } else {
                                  selectedItemsTeach = [];
                                }
                              });
                            },
                          ),

                          // const SizedBox(height: 24),
                          // const Text(
                          //   'Currently Selected Raw Values:',
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          // ),
                          // const SizedBox(height: 4),
                          //
                          // Text(
                          //   selectedItems.isEmpty ? "None" : selectedItems.toString(),
                          //   style: const TextStyle(fontSize: 16, color: Colors.indigo, fontWeight: FontWeight.w500),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Skills Ican learn',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Add the skills you want to learn ',
                            style: TextStyle(fontSize: 15,color: AppColors.middark),
                          ),
                          const Text(
                            'and grow in.',
                            style: TextStyle(fontSize: 15,color: AppColors.middark),
                          ),
                          const SizedBox(height: 8),

                          // Core Dropdown Widget
                          MultiDropdown<String>(
                            items: _items,
                            searchEnabled: true,
                            chipDecoration:  ChipDecoration(
                              backgroundColor: Colors.tealAccent.withValues(alpha: 0.2),
                              labelStyle: TextStyle(color: Colors.teal,fontWeight: FontWeight.w500),
                            ),
                            fieldDecoration: FieldDecoration(
                              hintText: 'Please select Skills here',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            // Naye version mein direct values ki list milti hai (bina DropdownItem ke)
                            onSelectionChange: (selectedValues) {
                              setState(() {
                                if (selectedValues != null) {
                                  selectedItemsLearn = List<String>.from(selectedValues);
                                } else {
                                  selectedItemsLearn = [];
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ),






                  ],
                ),
              ),),
              Center(child: Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Profile Completes!',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "You're all set to start you learning",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "and teaching journey.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),

                    // SizedBox(
                    //   height: 250,
                    //     width: 350,
                    //     child: Lottie.asset("assets/lottie/Thumbs up birdie.json")),
                    SizedBox(height: 30),

                    Container(
                      height: 450,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color:  Colors.teal ,
                            width: 1,
                          ),
                          color:
                          Colors.greenAccent.withOpacity(0.05)

                      ),

                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Profile Summary",style: TextStyle(color: AppColors.darkfont,fontWeight: FontWeight.w600,fontSize: 15),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.teal,
                                child: CircleAvatar(
                                  radius: 49,
                                  backgroundColor:Colors.white ,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text("Manish Kumar",style: TextStyle(color: AppColors.darkfont,fontWeight: FontWeight.w600,fontSize: 18),),
                                  SizedBox(height: 10,),
                                  Text("@manish_dev",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 15),),
                                  SizedBox(height: 1,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,size: 15,),
                                      Text("Varanasi,india",style: TextStyle(color: AppColors.middark,fontWeight: FontWeight.w400,fontSize: 15),),
                                    ],
                                  ),


                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(),
                          ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.tealAccent.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.book_outlined,
                                color: Colors.teal,
                              ),
                            ),
                            // Read Income Amount
                            title: Text(
                              'I love to learn',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            // Read Notes and Date


                            // Delete Button (Optional)
                          ),
                          Divider(),
                          ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.tealAccent.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.more_horiz,
                                color: Colors.teal,
                              ),
                            ),
                            // Read Income Amount
                            title: Text(
                              'Can teach',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            trailing: Text("5 Skills →"),
                            // Read Notes and Date


                            // Delete Button (Optional)
                          ),
                          Divider(),
                          ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.tealAccent.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.more_horiz,
                                color: Colors.teal,
                              ),
                            ),
                            // Read Income Amount
                            title: Text(
                              'Wants to learn',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            trailing: Text("5 Skills →"),
                            // Read Notes and Date


                            // Delete Button (Optional)
                          ),
                          Divider(),
                          ListTile(
                            leading: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.tealAccent.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.work_outline,
                                color: Colors.teal,
                              ),
                            ),
                            // Read Income Amount
                            title: Text(
                              'Profession',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            trailing: Text("Student/Developer"),
                            // Read Notes and Date


                            // Delete Button (Optional)
                          ),
                        ],
                      ),

                    )








                  ],
                ),
              ),),
            ],
          ),
        ),

        // Navigation Footer Menu
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: _currentStep == 0 ? null : _prevStep,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: _currentStep == 0
                        ? Colors.grey.shade300
                        : Colors.teal,
                  ),
                ),
                child: const Text('BACK'),
              ),
              ElevatedButton(
                onPressed: _nextStep,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  elevation: 0,
                ),
                child: Text(
                  _currentStep == _totalSteps - 1 ? 'SUBMIT' : 'CONTINUE',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
