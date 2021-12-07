import 'package:flutter/material.dart';
import 'package:flutter_logcat/app/model/log_model.dart';

class LogListTile extends StatefulWidget {
  const LogListTile({
    Key? key,
    required this.logModel,
  }) : super(key: key);
  final LogModel logModel;

  @override
  State<LogListTile> createState() => _LogListTileState();
}

class _LogListTileState extends State<LogListTile> {
  bool _isOpened = false;

  @override
  Widget build(BuildContext context) {
    Color tileColor = Theme.of(context).cardColor;

    switch (widget.logModel.type) {
      case 'network':
        tileColor = Colors.yellow[200]!;
        break;
      case 'navigation':
        tileColor = Colors.green[200]!;
        break;
      case 'page_event':
        tileColor = Colors.blueGrey[300]!;
        break;
      case 'page_state':
        tileColor = Colors.blueGrey[200]!;
        break;
    }
    return Material(
      color: tileColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).highlightColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            _isOpened = !_isOpened;
          });
        },
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.logModel.title,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          overflow: TextOverflow.ellipsis, color: Colors.black),
                    ),
                  ),
                  const Icon(Icons.one_x_mobiledata),
                ],
              ),
            ),
            if (_isOpened)
              Container(
                height: 300,
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(),
                      Text(
                        widget.logModel.detail,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
