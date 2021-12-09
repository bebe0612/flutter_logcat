import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/model/log_model.dart';
import 'package:flutter_logcat/app/setting/log_icon_converter.dart';

class LogListTile extends StatelessWidget {
  const LogListTile({
    Key? key,
    required this.logModel,
    required this.isFocused,
    required this.onTap,
  }) : super(key: key);
  final LogModel logModel;
  final bool isFocused;
  final Function(LogModel logModel) onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: isFocused ? const Color.fromRGBO(223, 232, 251, 1) : Colors.white,
      child: InkWell(
        onTap: () {},
        onTapDown: (detail) {
          onTap(logModel);
        },
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Row(
          children: [
            Container(
              color: Colors.white,
              width: 95,
              height: 25,
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    child: Container(
                      width: 65,
                      height: 25,
                      decoration: BoxDecoration(
                        color: isFocused
                            ? const Color.fromRGBO(138, 207, 223, 1)
                            : const Color.fromRGBO(240, 240, 240, 1),
                        border: const Border(
                          right: BorderSide(
                            color: Color.fromRGBO(21, 160, 191, 1),
                            width: 3,
                          ),
                        ),
                      ),
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            logModel.method,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.5,
                    left: 20,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(138, 207, 223, 1),
                            width: 2,
                          )),
                      child: Icon(
                        LogIconConverter.getIconData(logModel.type),
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          logModel.title,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey[900],
                                    height: 1.2,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
