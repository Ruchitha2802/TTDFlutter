import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold(
      {super.key,
      this.vis,
      this.bottomsheet,
      this.isHome,
      this.appBar,
      this.AppBarvis,
      this.appBarSize,
      this.bottomSheetVis, required this.body});

  final bool? vis;
  final Widget? bottomsheet;
  final Widget body;
  final bool? isHome;
  final AppBar? appBar;
  final bool? AppBarvis;
  final double? appBarSize;
  final bool? bottomSheetVis;
  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.AppBarvis == true
          ? PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0, // Remove the default shadow

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
                    /*  SvgPicture.asset(
                      ImageStrings.top_dash_bg,
                      width: double.infinity,
                      //height: 500,
                      //scale: 0.00001,
                      fit: BoxFit.fill,
                      alignment: Alignment.center,), */ 

                    // Content within the AppBar
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: SafeArea(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              SizedBox(width: 70),
                              Column(
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
                              SizedBox(width: 60),
                              widget.isHome == true
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.home,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )
                                  : SizedBox(),
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
      child: 
      
      Image.asset(
        'assets/footer.png',
        width: double.infinity,
        //  height: 100,
      ),
    );
  }
}
