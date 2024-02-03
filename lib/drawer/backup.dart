import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'dart:html' as html;

class MobileLayout extends StatefulWidget {
  late final Widget initialWidget;

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  late List<CollapsibleItem> _items;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      /// Search
      CollapsibleItem(
        text: 'My Profil',
        icon: Icons.account_circle,
        onPressed: () => setState(() {
          _scrollController.animateTo(
            0.0,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 300),
          );
        }),
      ),

      /// Dashboard
      CollapsibleItem(
          text: 'Services',
          icon: LineIcons.laptopCode,
          onPressed: () => setState(() {}),
          isSelected: true),

      /// Team
      CollapsibleItem(
        text: 'List Projek',
        icon: LineIcons.codeBranch,
        onPressed: () => setState(() {}),
      ),

      /// Shoop
      CollapsibleItem(
        text: 'List Projek',
        icon: LineIcons.shoppingCart,
        onPressed: () => setState(() {}),
      ),

      /// Chat
      CollapsibleItem(
        text: 'Contact Us',
        icon: LineIcons.facebookMessenger,
        onPressed: () => setState(() {}),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE6E9EE),
        body: CollapsibleSidebar(
          screenPadding: 10.0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.fastOutSlowIn,
          onHoverPointer: SystemMouseCursors.click,
          onTitleTap: () {
            openExternalLink('https://github.com/appank');
          },
          showToggleButton: true,
          borderRadius: 30,
          title: "Appank",
          titleBack: true,
          titleBackIcon: LineIcons.github,
          // ... Properti lainnya
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 90),
                  Container(
                    child: Center(
                      child: Image.network(
                        'http://basoarfan.my.id/img/appank.png', // Ganti URL ini dengan URL gambar Anda
                        width: 150, // Atur lebar gambar sesuai kebutuhan Anda
                        height: 150, // Atur tinggi gambar sesuai kebutuhan Anda
                        fit: BoxFit.cover, // Atur mode tata letak gambar
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Text(
                        "Hi' My Name is, Baso Arfan Efendy",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 20.0,
                    ),
                    child: Container(
                      child: Text(
                        "I'm Programer Mobile Developer, and I'm Junior Front End",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Fungsi yang akan dijalankan saat tombol ditekan
                          openExternalLink(
                              'https://www.facebook.com/appank.dev');
                        },
                        icon: Icon(LineIcons.facebook),
                      ),
                      IconButton(
                        onPressed: () {
                          // Fungsi yang akan dijalankan saat tombol ditekan
                          openExternalLink(
                              'https://www.linkedin.com/in/baso-arfan-efendy');
                        },
                        icon: Icon(LineIcons.instagram),
                      ),
                      IconButton(
                        onPressed: () {
                          // Fungsi yang akan dijalankan saat tombol ditekan
                          openExternalLink(
                              'https://www.youtube.com/@appankdev1463');
                        },
                        icon: Icon(LineIcons.youtube),
                      ),
                      IconButton(
                        onPressed: () {
                          // Fungsi yang akan dijalankan saat tombol ditekan
                          openExternalLink(
                              'https://www.linkedin.com/in/baso-arfan-efendy-2570111b3/?originalSubdomain=id');
                        },
                        icon: Icon(LineIcons.linkedin),
                      ),
                      IconButton(
                        onPressed: () {
                          // Fungsi yang akan dijalankan saat tombol ditekan
                          openExternalLink('https://t.me/Baso_Arfan_Efendy');
                        },
                        icon: Icon(LineIcons.telegram),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    icon: Icon(
                      LineIcons.github,
                      size: 30,
                    ),
                    onPressed: () {
                      openExternalLink('https://github.com/appank');
                    },
                    label: Text('Open Github'),
                    style:
                        ElevatedButton.styleFrom(padding: EdgeInsets.all(12)),
                  ),
                  SizedBox(height: 250), // Sesuaikan dengan kebutuhan Anda
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Services",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Understandable framework",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.network(
                      'http://basoarfan.my.id/img/flutter.png', // Ganti URL ini dengan URL gambar Anda
                      width: 100, // Atur lebar gambar sesuai kebutuhan Anda
                      height: 100, // Atur tinggi gambar sesuai kebutuhan Anda
                      fit: BoxFit.cover, // Atur mode tata letak gambar
                    ),
                  ),

                  SizedBox(height: 300),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "List Project",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What Have I done?",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "My Projects",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    color: Colors.grey,
                    height: 1,
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          // Fungsi yang akan dijalankan saat container ditekan
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                children: [
                                  Icon(
                                    LineIcons.folderOpen,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      "Game Animasi 3D Aksara Lontra (Edulontara)",
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        letterSpacing: 2,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          // Fungsi yang akan dijalankan saat container ditekan
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                children: [
                                  Icon(
                                    LineIcons.folderOpen,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      "Srisutari Mobile App",
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        letterSpacing: 2,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          // Fungsi yang akan dijalankan saat container ditekan
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                children: [
                                  Icon(
                                    LineIcons.folderOpen,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      "Web Portofolio",
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        letterSpacing: 2,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  // ... Widget lainnya
                ],
              ),
            ),
          ),
          items: _items,
        ),
      ),
    );
  }

  void openExternalLink(String url) {
    html.window.open(url, '_blank');
  }
}
