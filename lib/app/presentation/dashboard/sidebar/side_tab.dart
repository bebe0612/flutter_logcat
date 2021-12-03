import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/setting/color.dart';

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
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              color: isSelected ? AppColor.main(context) : null,
              borderRadius: BorderRadius.circular(10),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        offset: const Offset(-1, 0),
                        blurRadius: 3,
                        color: Theme.of(context).shadowColor,
                        spreadRadius: 3,
                      )
                    ]
                  : null),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              Icon(
                iconData,
                color: isSelected ? Theme.of(context).cardColor : null,
                size: 20.0,
              ),
              const SizedBox(width: 10),
              Text(title,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: isSelected ? Theme.of(context).cardColor : null,
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
