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

List<String> tabs = [
  "Mobile Develop",
  "Web Develop",
  "Software Develop",
];
int current = 0;
double changePositionedOfLine() {
  switch (current) {
    case 0:
      return 0;
    case 1:
      return 78;
    case 2:
      return 192;
    case 3:
      return 263;
    default:
      return 0;
  }
}

double changeContainerWidth() {
  switch (current) {
    case 0:
      return 50;
    case 1:
      return 80;
    case 2:
      return 50;
    case 3:
      return 50;
    default:
      return 0;
  }
}

class _MobileLayoutState extends State<MobileLayout> {
  late List<CollapsibleItem> _items;
  int _selectedBody = 0;
  Widget? _selectedBodyWidget;
  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _selectedBodyWidget = _body1();
  }

  List<CollapsibleItem> get _generateItems {
    return List.of([
      /// Search
      CollapsibleItem(
          text: 'My Profil',
          icon: Icons.account_circle,
          onPressed: () => setState(() {
                _selectedBody = 0;

                _selectedBodyWidget = _body1();
              }),
          isSelected: true),

      /// Dashboard
      CollapsibleItem(
        text: 'Code',
        icon: LineIcons.laptopCode,
        onPressed: () => setState(() {
          _selectedBody = 1;

          _selectedBodyWidget = _body2();
        }),
      ),

      /// Team
      CollapsibleItem(
        text: 'List Projek',
        icon: LineIcons.codeBranch,
        onPressed: () => setState(() {
          _selectedBody = 2;

          _selectedBodyWidget = _body3();
        }),
      ),

      /// Shoop
      CollapsibleItem(
        text: 'Shoop',
        icon: LineIcons.shoppingCart,
        onPressed: () => setState(() {
          _selectedBody = 3;

          _selectedBodyWidget = _body4();
        }),
      ),

      /// Chat
      CollapsibleItem(
        text: 'Contact Us',
        icon: LineIcons.whatSApp,
        onPressed: () => setState(() {
          _selectedBody = 4;

          _selectedBodyWidget = _body5();
        }),
      ),
    ]);
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
            title: "Github/appank",
            titleBack: true,
            titleBackIcon: LineIcons.github,
            body: _selectedBodyWidget!,
            items: _items,
          )),
    );
  }

  void openExternalLink(String url) {
    html.window.open(url, '_blank');
  }

  Widget _body1() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 90),
            Container(
              child: Center(
                child: Image(
                  image: AssetImage(
                      'assets/appank.png'), // Ganti dengan path ke gambar Anda
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text(
                  "Hi! 👋 I'm BASO ARFAN EFENDY.",
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
                  "I'm Programer Mobile Developer, and I'm Junior Front End Developers || Frelancer in mobile || Publiser Android",
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
                    openExternalLink('https://www.facebook.com/appank.dev');
                  },
                  icon: Icon(LineIcons.facebook),
                ),
                IconButton(
                  onPressed: () {
                    // Fungsi yang akan dijalankan saat tombol ditekan
                    openExternalLink(
                        'https://www.instagram.com/baso_arfan_efendy/');
                  },
                  icon: Icon(LineIcons.instagram),
                ),
                IconButton(
                  onPressed: () {
                    // Fungsi yang akan dijalankan saat tombol ditekan
                    openExternalLink('https://www.youtube.com/@appankdev1463');
                  },
                  icon: Icon(LineIcons.youtube),
                ),
                IconButton(
                  onPressed: () {
                    // Fungsi yang akan dijalankan saat tombol ditekan
                    openExternalLink(
                        'https://www.linkedin.com/in/baso-arfan-efendy-2570111b3');
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
                Icons.edit_document,
                size: 15,
              ),
              onPressed: () {
                openExternalLink(
                    'https://drive.google.com/file/d/1nohzR1eeWj9Lb5yrzk__6tqoiqLBrhdw/view');
              },
              label: Text('Download CV'),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(12)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body2() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50), // Sesuaikan dengan kebutuhan Anda
          Container(
            child: Text(
              "Code",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey,
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "This is the type of framework that I have used",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(height: 20),
          ClipRect(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(08.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/saflutter.png'), // Ganti dengan path ke gambar Anda
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10), // Spasi antara icon dan teks
                    Text(
                      "Flutter",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Framwork",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body3() {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Projek",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.05,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: tabs.asMap().entries.map((entry) {
                        int index = entry.key;
                        bool isSelected = current == index;

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                              _selectedBodyWidget = _body3();
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 10 : 5,
                              top: 10,
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isSelected
                                    ? Colors.deepPurpleAccent
                                    : Colors.transparent,
                              ),
                              child: Text(
                                entry.value,
                                style: GoogleFonts.ubuntu(
                                  fontSize: 11,
                                  fontWeight: isSelected
                                      ? FontWeight.w400
                                      : FontWeight.w300,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: IndexedStack(
                    index: current,
                    children: [
                      BodyWidget1(),
                      BodyWidget2(),
                      BodyWidget3(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget BodyWidget1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 260,
            height: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(
                          'assets/edulontara.png'), // Ganti dengan path ke gambar Anda
                      width: 400,
                      height: 150,
                    ),
                  ),
                ),
                SizedBox(height: 5), // Spasi antara icon dan teks
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "3D Animation Game as Learning Medium for Lontara Script - EDULONTARA",
                      maxLines: 100,
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Hey, I'm working on this cool project for my thesis called Edulontara, where I'm making a 3D animation game app to teach Lontara script. I'm using this random shuffle algorithm thingy to make it more fun. The app will have quiz games and learning menus with awesome 3D animations. I'm building it with Unity 3D software.",
                      maxLines: 100,
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    openExternalLink(
                        'https://www.youtube.com/watch?v=p7Zh2pxHxmM');
                  },
                  child: Text(
                    "Vist Link =>",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.blue[300],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget BodyWidget2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 260,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(
                          'assets/portofolio.png'), // Ganti dengan path ke gambar Anda
                      width: 400,
                      height: 200,
                    ),
                  ),
                ),
                SizedBox(height: 5), // Spasi antara icon dan teks
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Website Portofolio",
                      maxLines: 100,
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Currently, I'm whipping up my own Portfolio Website using Flutter framework. It's kind of my digital playground where I showcase my skills, projects, and everything cool I've been up to. Flutter's my go-to because it lets me add that extra oomph with sleek designs and smooth animations. Plus, it's super flexible, so I can really make it my own. Excited to see how it turns out!",
                      maxLines: 100,
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget BodyWidget3() {
    return Container(
      // color: Colors.green,
      child: Center(
        child: Text(
          "Not yet available",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }

  Widget _body4() {
    return Container(
      child: Center(
        child: Container(
          child: Text(
            "Coming soon",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }

  Widget _body5() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 90),
          SizedBox(
            width: 220,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "Contac Us",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "If you have any questions, please contact me via the email listed below or via my social media accounts. Thank You.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRect(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.whatSApp,
                                    size: 50,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                      width: 10), // Spasi antara icon dan teks
                                  Column(
                                    children: [
                                      Text(
                                        "WhatsApp",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "wa.me/085757404277",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRect(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LineIcons.telegram,
                                    size: 50,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                      height: 10), // Spasi antara icon dan teks
                                  Column(
                                    children: [
                                      Text(
                                        "Telegram",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 17,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "t.me/Baso_Arfan_Efendy",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRect(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    size: 50,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                      height: 10), // Spasi antara icon dan teks
                                  Column(
                                    children: [
                                      Text(
                                        "Email",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 17,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "basoarfan.my.id@gmail.com",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
