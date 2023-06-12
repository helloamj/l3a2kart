import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  Function? onTap;
  String? title;
  IconData? icon;
  MyListTile({super.key, this.onTap, this.title, this.icon});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: ListTile(
        leading: Icon(
          widget.icon!,
          color: Color(0xFF323232),
          size: 32,
        ),
        contentPadding:
            const EdgeInsets.only(bottom: 17, left: 13, top: 18, right: 14),
        title: Text(
          widget.title!,
          style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                color: Color(0xFF323232),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFF7C7C7C),
          weight: 0.49,
          size: 21,
        ),
        onTap: () {
          widget.onTap!();
        },
      ),
    );
  }
}
