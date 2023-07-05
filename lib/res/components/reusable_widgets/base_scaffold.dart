import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/routes/app_routeconstants.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold(
      {super.key,
      this.vis,
      this.bottomsheet,
      this.isHome,
      this.appBar,
      this.AppBarvis,
      this.appBarSize,
      this.bottomSheetVis,
      required this.body,
      this.backgroundColor,
      this.leading,
      this.Drawer,
      this.Navroute,
      this.sidebarVis,
      this.backarrowonTap});

  final bool? vis;
  final Widget? bottomsheet;
  final Widget body;
  final bool? isHome;
  final AppBar? appBar;
  final bool? AppBarvis;
  final double? appBarSize;
  final bool? bottomSheetVis;
  final bool? backgroundColor;
  final bool? leading;
  final bool? sidebarVis;
  final Widget? Drawer;
  final String? Navroute;
  final backarrowonTap;

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

//final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  key: _scaffoldKey,
      drawer: Visibility(
        visible: widget.sidebarVis ?? false,
        child: Drawer(
          shadowColor: Colors.white,
          //backgroundColor: Colors.white,
          child: widget.Drawer,
        ),
      ),

      key: widget.key,
      //    drawer: widget.Drawer,
      backgroundColor: widget.backgroundColor == true
          ? AppColors.bg_color
          : AppColors.bg_color,
      appBar: widget.AppBarvis == true
          ? PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: AppBar(
                iconTheme: IconThemeData(color: Colors.white),
                automaticallyImplyLeading:
                    widget.leading == false ? false : true,
                backgroundColor: Colors.transparent,
                elevation: 0, // Remove the default shadow
                actions: [
                  widget.isHome == true
                      ? IconButton(
                          onPressed: () {
                            Navigator.popUntil(
                              context,
                              ModalRoute.withName(
                                  AppRouteConstants.DashboardView),
                            );
                          },
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ))
                      : SizedBox(),
                ],
                // Use a stack to overlay the image on top of the AppBar
                flexibleSpace: Stack(
                  children: [
                    Image.asset(
                      'assets/top_dashboard_bg.png',
                      width: double.infinity,
                      //height: 500,
                      //scale: 0.00001,
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: SafeArea(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              widget.sidebarVis == true
                                  ? SizedBox()
                                  : IconButton(
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                              SizedBox(width: 70),
                              Align(
                                alignment: Alignment.center,
                                child:  Column(
                                  children: [
                                    Text(
                                      'TTD Pensioners App',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'TTD Pensioners App',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'TTD Pensioners App',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(widget.appBarSize ?? 40),
              child: widget.appBar ??
                  Container(
                    color: AppColors.bg_color,
                  ),
            ),
      bottomSheet: widget.bottomSheetVis == true
          ? _buildBottomSheet()

          /*  Container(
              color: Colors.transparent,
              child: Stack(children: [
                Image.asset(
                  'assets/footer.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ])) */
          : widget.bottomsheet,
      body: widget.body,
    );
  }

  _buildBottomSheet() {
    return Container(
      color: AppColors.dash_bg,
      child: Image.asset(
        'assets/footer.png',
        width: double.infinity,
        //  height: 100,
      ),
    );
  }
}
