import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  final IconData? icon;
  final String? title;

  const MyOutlineButton({Key? key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(4.0), // Adjust the border radius as desired
        ),
        side: const BorderSide(
          width: 1,
          color: Colors.black, // Set the border width and color
        ),
      ),
      onPressed: () {
        // Add your button click logic here
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title!,
            style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                  color: const Color(0xFF323232),
                  fontSize: 12,
                  height: 1.13,
                ),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            icon!,
            color: const Color(0xFF323232),
            size: 16,
          ),
        ],
      ),
    );
  }
}
