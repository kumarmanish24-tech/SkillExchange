import 'package:flutter/material.dart';
import 'package:flutter_multi_select_dropdown/flutter_multi_select_dropdown.dart';

class SimpleDropdownExample extends StatefulWidget {
  const SimpleDropdownExample({super.key});

  @override
  State<SimpleDropdownExample> createState() => _SimpleDropdownExampleState();
}

class _SimpleDropdownExampleState extends State<SimpleDropdownExample> {
  // Is list mein selected strings save honge
  List<String> selectedItems = [];

  // Dropdown items definition
  final List<DropdownItem<String>> _items = [
    DropdownItem(label: 'Apple', value: 'apple'),
    DropdownItem(label: 'Banana', value: 'banana'),
    DropdownItem(label: 'Orange', value: 'orange'),
    DropdownItem(label: 'Mango', value: 'mango'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Multi-Select')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Fruits:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Core Dropdown Widget
            MultiDropdown<String>(
              items: _items,
              searchEnabled: true,
              chipDecoration: const ChipDecoration(
                backgroundColor: Colors.blueAccent,
                labelStyle: TextStyle(color: Colors.white),
              ),
              fieldDecoration: FieldDecoration(
                hintText: 'Choose your favorite fruits',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // Naye version mein direct values ki list milti hai (bina DropdownItem ke)
              onSelectionChange: (selectedValues) {
                setState(() {
                  if (selectedValues != null) {
                    selectedItems = List<String>.from(selectedValues);
                  } else {
                    selectedItems = [];
                  }
                });
              },
            ),

            const SizedBox(height: 24),
            const Text(
              'Currently Selected Raw Values:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),

            Text(
              selectedItems.isEmpty ? "None" : selectedItems.toString(),
              style: const TextStyle(fontSize: 16, color: Colors.indigo, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}