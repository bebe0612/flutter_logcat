import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/model/log_model.dart';
import 'package:flutter_logcat/app/setting/log_icon_converter.dart';

class LogListTile extends StatelessWidget {
  const LogListTile({
    Key? key,
    required this.idx,
    required this.logModel,
    required this.isFocused,
    required this.onTap,
  }) : super(key: key);
  final int idx;
  final LogModel logModel;
  final bool isFocused;
  final Function(LogModel logModel) onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: isFocused
          ? const Color.fromRGBO(223, 232, 251, 1)
          : (idx % 2 == 0 ? Colors.grey[100] : Colors.white),
      child: InkWell(
        onTap: () {},
        onTapDown: (detail) {
          onTap(logModel);
        },
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Container(
          height: 45,
          child: Row(
            children: [
              _leading(context),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      logModel.title,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                            height: 1.2,
                          ),
                    ),
                    Text(
                      logModel.detail,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey[900],
                            height: 1.2,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(logModel.type,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.white)),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }

  Container _leading(BuildContext context) {
    return Container(
      width: 95,
      alignment: Alignment.center,
      child: Text(
        logModel.createdDt.toString().replaceAll(' ', '\n').split('.')[0],
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
