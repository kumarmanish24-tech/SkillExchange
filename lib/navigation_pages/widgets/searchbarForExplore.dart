import 'package:flutter/material.dart';

class CustomSearchDropdown<T> extends StatefulWidget {
  final List<T> items;
  final String Function(T) itemText;
  final ValueChanged<T>? onItemSelected;
  final String hintText;
  final double maxHeight;

  const CustomSearchDropdown({
    super.key,
    required this.items,
    required this.itemText,
    this.onItemSelected,
    this.hintText = "Search skill,people,projects..",
    this.maxHeight = 250,
  });

  @override
  State<CustomSearchDropdown<T>> createState() =>
      _CustomSearchDropdownState<T>();
}

class _CustomSearchDropdownState<T> extends State<CustomSearchDropdown<T>> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  late List<T> _filteredItems;
  bool _showList = false;

  @override
  void initState() {
    super.initState();

    _filteredItems = widget.items;

    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {
          _showList = false;
        });
      }
    });
  }

  void _filter(String value) {
    setState(() {
      _filteredItems = widget.items.where((item) {
        return widget
            .itemText(item)
            .toLowerCase()
            .contains(value.toLowerCase());
      }).toList();

      _showList = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _controller,
          focusNode: _focusNode,
          onTap: () {
            setState(() {
              _showList = true;
              _filteredItems = widget.items;
            });
          },
          onChanged: _filter,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: _controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      _controller.clear();

                      setState(() {
                        _filteredItems = widget.items;
                        _showList = false;
                      });
                    },
                  )
                : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),

        if (_showList)
          Container(
            margin: const EdgeInsets.only(top: 8),
            constraints: BoxConstraints(maxHeight: widget.maxHeight),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 6),
              ],
            ),
            child: _filteredItems.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: Text("No results found")),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = _filteredItems[index];

                      return ListTile(
                        title: Text(widget.itemText(item)),
                        onTap: () {
                          _controller.text = widget.itemText(item);

                          widget.onItemSelected?.call(item);

                          setState(() {
                            _showList = false;
                          });

                          _focusNode.unfocus();
                        },
                      );
                    },
                  ),
          ),
      ],
    );
  }
}
