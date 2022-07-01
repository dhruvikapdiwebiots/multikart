import '../../../../config.dart';

class ExpandableListView extends StatelessWidget {
  final int? index;
  final String? title;
  final bool? isExpanded;
  final VoidCallback? onPressed;
  final Widget? child;

  const ExpandableListView(
      {Key? key,
      this.index,
      this.child,
      this.title,
      this.onPressed,
      this.isExpanded})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppScreenUtil().screenWidth(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LatoFontStyle(
                    text: title,
                    fontSize: CommonTextFontSize.textSizeSMedium,
                    fontWeight: FontWeight.w700),
                ExpandableIcon(
                  onPressed: onPressed,
                  isExpanded: isExpanded,
                ),
              ],
            ),
          ),
        ),
        ChildExpandable(
            collapsedHeight: 0.0,
            expandedHeight: 280,
            expanded: isExpanded,
            child: child)
      ],
    );
  }
}
