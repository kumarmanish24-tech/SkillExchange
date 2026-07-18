import 'package:flutter/material.dart';
import 'package:ex32/colors/colors.dart';
import 'customeWidgets/custom_radio_card.dart';

class MyHorizontalStepper extends StatefulWidget {
  const MyHorizontalStepper({super.key});

  @override
  State<MyHorizontalStepper> createState() => _MyHorizontalStepperState();
}

class _MyHorizontalStepperState extends State<MyHorizontalStepper> {
  final PageController _pageController = PageController();
  int _currentStep = 0;
  final int _totalSteps = 5;

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
                  padding: const EdgeInsets.all(8.0),
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
                    ],
                  ),
                ),
              ),
              Center(child: Text('Step 4: Country, city and address layout')),
              Center(child: Text('Step 5: Confirmation agreement display')),
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
