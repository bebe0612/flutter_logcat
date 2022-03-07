import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/controller/log_provider.dart';
import 'package:provider/provider.dart';

class LogFilterPanel extends StatelessWidget {
  const LogFilterPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logProvider = Provider.of<LogProvider>(context);

    return Scrollbar(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 10),
              ...logProvider.topics.keys
                  .map((e) => FilterItem(
                        text: e,
                        isSelected: logProvider.topics[e]!,
                        onTap: () {
                          logProvider.toggleFilter(e);
                        },
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  const FilterItem({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final bool isSelected;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey[400]!,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: isSelected ? Colors.white : Colors.grey[400],
              ),
        ),
      ),
    );
  }
}
