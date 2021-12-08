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
              color: isSelected ? Colors.white : null,
              border: isSelected
                  ? const Border(
                      bottom: BorderSide(
                      color: Color.fromRGBO(223, 223, 223, 1),
                    ))
                  : const Border(
                      right: BorderSide(
                      color: Color.fromRGBO(223, 223, 223, 1),
                    ))),
          width: 60,
          height: 60,
          child: Icon(
            iconData,
            color: isSelected ? Colors.black : Colors.white,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
