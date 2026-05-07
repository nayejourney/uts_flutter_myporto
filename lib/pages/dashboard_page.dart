import 'package:flutter/material.dart';

import 'counter_page.dart';
import 'widget_page.dart';
import 'input_page.dart';
import 'list_page.dart';
import 'navigasi_page.dart';
import 'grid_page.dart';
import 'tentang_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  int selectedIndex = -1;
  int hoveredIndex = -1;

  static const Color colorBg = Color(0xFFFDF6F9);
  static const Color colorDark = Color(0xFF1E1E2E);

  // warna default abu muda
  static const Color defaultCard = Color(0xFFF1F1F1);

  final List<Map<String, dynamic>> menuItems = [

    {
      'title': 'Counter',
      'icon': Icons.add_circle_outline,
      'activeColor': Color(0xFFFFD6E0),
      'iconBg': Color(0xFFFF8FAB),
    },

    {
      'title': 'Widget Bertingkat',
      'icon': Icons.layers_outlined,
      'activeColor': Color(0xFFFFF0C2),
      'iconBg': Color(0xFFFFD166),
    },

    {
      'title': 'User Input Example',
      'icon': Icons.edit_outlined,
      'activeColor': Color(0xFFCEEAFF),
      'iconBg': Color(0xFF74C7EC),
    },

    {
      'title': 'Dynamic List Example',
      'icon': Icons.list_alt_outlined,
      'activeColor': Color(0xFFD4F5E2),
      'iconBg': Color(0xFF52C97A),
    },

    {
      'title': 'Navigasi Sederhana',
      'icon': Icons.navigation_outlined,
      'activeColor': Color(0xFFFFD6E0),
      'iconBg': Color(0xFFFF8FAB),
    },

    {
      'title': 'Grid View',
      'icon': Icons.grid_view_outlined,
      'activeColor': Color(0xFFFFF0C2),
      'iconBg': Color(0xFFFFD166),
    },

    {
      'title': 'Tentang Saya',
      'icon': Icons.person_outline,
      'activeColor': Color(0xFFCEEAFF),
      'iconBg': Color(0xFF74C7EC),
    },
  ];

  final List<Widget> pages = [

    CounterPage(),
    WidgetPage(),
    InputPage(),
    ListPage(),
    NavigasiPage(),
    GridPage(),
    TentangPage(),
  ];

  Widget buildCard(int index) {

    final item = menuItems[index];

    final isSelected = selectedIndex == index;
    final isHovered = hoveredIndex == index;

    return MouseRegion(

      onEnter: (_) {
        setState(() => hoveredIndex = index);
      },

      onExit: (_) {
        setState(() => hoveredIndex = -1);
      },

      child: GestureDetector(

        onTap: () {

          setState(() {
            selectedIndex = index;
          });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => pages[index],
            ),
          );
        },

        child: AnimatedContainer(

          duration: const Duration(milliseconds: 250),

          curve: Curves.easeOut,

          margin: const EdgeInsets.symmetric(vertical: 7),

          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),

          transform: Matrix4.translationValues(
            isHovered ? -5 : 0,
            0,
            0,
          ),

          decoration: BoxDecoration(

            // default abu muda
            // kalau diklik berubah pastel
            color: isSelected
                ? item['activeColor']
                : defaultCard,

            borderRadius: BorderRadius.circular(24),

            boxShadow: [

              BoxShadow(
                color: Colors.black.withOpacity(
                  isHovered ? 0.08 : 0.04,
                ),

                blurRadius: isHovered ? 14 : 7,

                offset: Offset(
                  0,
                  isHovered ? 7 : 3,
                ),
              ),
            ],
          ),

          child: Row(
            children: [

              AnimatedContainer(

                duration: const Duration(milliseconds: 250),

                width: 48,
                height: 48,

                decoration: BoxDecoration(

                  color: item['iconBg'],

                  borderRadius:
                      BorderRadius.circular(16),

                  boxShadow: isHovered

                      ? [

                          BoxShadow(
                            color: (item['iconBg'] as Color)
                                .withOpacity(0.35),

                            blurRadius: 10,

                            offset: const Offset(0, 4),
                          ),
                        ]

                      : [],
                ),

                child: Icon(
                  item['icon'],
                  size: 24,
                  color: Colors.white,
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Text(

                  item['title'],

                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: colorDark,
                  ),
                ),
              ),

              AnimatedSwitcher(

                duration: const Duration(milliseconds: 200),

                child: isSelected

                    ? Container(

                        key: const ValueKey('check'),

                        width: 30,
                        height: 30,

                        decoration: BoxDecoration(
                          color: item['iconBg'],
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        ),
                      )

                    : Container(

                        key: const ValueKey('arrow'),

                        width: 30,
                        height: 30,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),

                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: colorDark.withOpacity(0.35),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: colorBg,

      appBar: AppBar(

        backgroundColor: colorBg,
        elevation: 0,

        centerTitle: true,

        title: const Text(
          "MyPorto",

          style: TextStyle(
            color: colorDark,
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
      ),

      body: Padding(

        padding: const EdgeInsets.all(16),

        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              const Text(
                "MyPorto",

                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: colorDark,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                "Cek hasil karyaku disini:",

                style: TextStyle(
                  color: const Color.fromARGB(255, 30, 30, 43).withOpacity(0.45),
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 20),

              ...List.generate(
                menuItems.length,
                (i) => buildCard(i),
              ),
            ],
          ),
        ),
      ),
    );
  }
}