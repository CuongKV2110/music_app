/*
import 'package:core/common/color/core_color.dart';
import 'package:core/common/text_style.dart';
import 'package:core/language/app_localizations.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:learn/core/theme/custom.dart';

typedef OnTabChanged = Function(int tabIndex);

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({
    Key? key,
    required this.items,
    this.borderBottomColor,
    this.onTabChanged,
    this.indicatorColor,
    this.labelStyle,
    this.unselectedLabelStyle,
    this.tabItemPadding,
    this.tabPadding,
    this.isScrollable = false,
    this.isTopIcon = false,
    this.backgroundColor,
    this.indicatorPadding,
    this.tabBarIndicatorSize,
    this.alignment = Alignment.center,
    this.initialIndex = 0,
  }) : super(key: key);

  final List<AppBarDoExamItemModel> items;
  final Color? borderBottomColor;
  final Color? backgroundColor;
  final OnTabChanged? onTabChanged;
  final Color? indicatorColor;
  final TextStyle? labelStyle;
  final TextStyle? unselectedLabelStyle;
  final EdgeInsets? tabItemPadding;
  final EdgeInsets? tabPadding;
  final EdgeInsets? indicatorPadding;
  final bool isScrollable;
  final bool isTopIcon;
  final Alignment alignment;
  final TabBarIndicatorSize? tabBarIndicatorSize;
  final int initialIndex;

  @override
  _TabBarLearnState createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  Color get _borderBottomColor => widget.borderBottomColor ?? const Color(0xffE2E7EF);
  int get initialIndex => widget.initialIndex;
  late TabController _tabController;

  List<AppBarDoExamItemModel> get _items => widget.items;

  EdgeInsets get _tabItemPadding => widget.tabItemPadding ?? const EdgeInsets.symmetric(vertical: 12);

  EdgeInsets get _indicatorPadding => widget.indicatorPadding ?? const EdgeInsets.symmetric(horizontal: 12);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _items.length, vsync: this, initialIndex: initialIndex);
    _tabController.addListener(() {
      if (widget.onTabChanged != null && !_tabController.indexIsChanging) {
        widget.onTabChanged!(_tabController.index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: _borderBottomColor))),
          padding: widget.tabPadding,
          alignment: widget.alignment,
          child: TabBar(
            isScrollable: widget.isScrollable,
            controller: _tabController,
            indicatorColor: widget.indicatorColor ?? CustomTheme.transparent,
            indicatorSize: widget.tabBarIndicatorSize ?? TabBarIndicatorSize.tab,
            indicatorPadding: _items.length == 1 ? EdgeInsets.zero : _indicatorPadding,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0,color: kPrimaryLearnColor),
              // insets: EdgeInsets.symmetric(horizontal:16.0)
            ),
            labelStyle:
                widget.labelStyle ?? textStyleBodyDefault.copyWith(fontFamily: fontGilroy, fontWeight: FontWeight.w600),
            //For Selected tab
            unselectedLabelStyle: widget.unselectedLabelStyle ??
                textStyleBodyDefault.copyWith(
                    fontFamily: fontGilroy, fontWeight: FontWeight.w500, color: CustomTheme.avl2UnfollowColor),
            tabs: <Widget>[
              for (int index = 0; index < _items.length; index++) _buildItem(_items[index], index),
            ],
          ),
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: widget.items.map((AppBarDoExamItemModel e) => e.widget ?? const SizedBox()).toList(),
        )),
      ],
    );
  }

  Widget _buildItem(AppBarDoExamItemModel item, int index) {
    return Container(
      padding: _tabItemPadding,
      child: Row(
        mainAxisAlignment: widget.isTopIcon ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: widget.isTopIcon ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          if (item.iconColor != null && !widget.isTopIcon) _buildIcon(item, index),
          Expanded(
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.translate(item.title) +
                    (item.itemCount > 0 ? " (${item.itemCount.toString()})" : ""),
                style: widget.unselectedLabelStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (widget.isTopIcon) _buildIconTop(item, index),
        ],
      ),
    );
  }

  Color getIconColor(int index) {
    final AppBarDoExamItemModel item = widget.items[index];
    if (_tabController.index == index && item.iconActiveColor != null) {
      return item.iconActiveColor!;
    }
    return item.iconColor ?? Colors.transparent;
  }

  Widget _buildIcon(AppBarDoExamItemModel item, int index) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: getIconColor(index),
          border: Border.all(
              color: (item.borderColor != null && _tabController.index != index)
                  ? item.borderColor!
                  : Colors.transparent)),
    );
  }

  Widget _buildIconTop(AppBarDoExamItemModel item, int index) {
    return Container(
      margin: const EdgeInsets.only(left: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: getIconColor(index),
          border: Border.all(
              color: (item.borderColor != null && _tabController.index != index)
                  ? item.borderColor!
                  : Colors.transparent)),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

// ignore: must_be_immutable
class AppBarDoExamItemModel extends Equatable {
  String title;
  int itemCount;
  Color? iconColor;
  Color? borderColor;
  Color? iconActiveColor;
  Widget? widget;

  AppBarDoExamItemModel(this.title, this.itemCount,
      {this.iconColor, this.borderColor, this.iconActiveColor, this.widget});

  @override
  // ignore: always_specify_types
  List<Object?> get props => [itemCount, iconActiveColor];
}
*/
