import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final double iconSizeMedium;

  const CustomSearchBar({
    required this.iconSizeMedium,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search for colleges, schools...",
                hintStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                  size: iconSizeMedium,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Icon(
              Icons.mic_rounded,
              color: Colors.grey,
              size: iconSizeMedium,
            ),
          ),
        ],
      ),
    );
  }
}
