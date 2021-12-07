import 'package:flutter/material.dart';

class SideTab extends StatelessWidget {
  const SideTab({
    Key? key,
    required this.onTap,
    required this.iconData,
    required this.isSelected,
    required this.title,
  }) : super(key: key);
  final Function() onTap;
  final IconData iconData;
  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
              color: isSelected ? const Color.fromRGBO(0, 112, 173, 1) : null),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              Icon(
                iconData,
                color: Theme.of(context).cardColor,
                size: 20.0,
              ),
              const SizedBox(width: 10),
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Theme.of(context).cardColor)),
            ],
          ),
        ),
      ),
    );
  }
}
