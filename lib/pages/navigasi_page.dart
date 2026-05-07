import 'package:flutter/material.dart';

// ================= ENTRY POINT =================
class NavigasiPage extends StatelessWidget {
  const NavigasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigasi Lanjutan',

      theme: ThemeData(
        primaryColor: const Color(0xFFFFC1D9),
        scaffoldBackgroundColor: const Color(0xFFFFF6FA),
        fontFamily: 'Poppins',
      ),

      home: const HomePageWrapper(),
    );
  }
}

// ================= WRAPPER =================
class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {

    return Navigator(
      onGenerateRoute: (settings) {

        switch (settings.name) {

          case '/pantai':
            return MaterialPageRoute(
              builder: (_) => const MenuPage(
                menuTitle: 'Pantai',
                icon: Icons.beach_access,
              ),
            );

          case '/gunung':
            return MaterialPageRoute(
              builder: (_) => const MenuPage(
                menuTitle: 'Gunung',
                icon: Icons.terrain,
              ),
            );

          case '/budaya':
            return MaterialPageRoute(
              builder: (_) => const MenuPage(
                menuTitle: 'Budaya',
                icon: Icons.museum,
              ),
            );

          case '/kuliner':
            return MaterialPageRoute(
              builder: (_) => const MenuPage(
                menuTitle: 'Kuliner',
                icon: Icons.restaurant,
              ),
            );

          case '/hotel':
            return MaterialPageRoute(
              builder: (_) => const MenuPage(
                menuTitle: 'Hotel',
                icon: Icons.hotel,
              ),
            );

          case '/transport':
            return MaterialPageRoute(
              builder: (_) => const MenuPage(
                menuTitle: 'Transport',
                icon: Icons.directions_car,
              ),
            );

          default:
            return MaterialPageRoute(
              builder: (_) => const HomePage(),
            );
        }
      },
    );
  }
}

// ================= HALAMAN UTAMA =================
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        backgroundColor: const Color(0xFFFFF6FA),

        title: const Text(
          "Beranda",

          style: TextStyle(
            color: Color(0xFF4A4A4A),
            fontWeight: FontWeight.bold,
          ),
        ),

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF4A4A4A),
          ),

          onPressed: () {
            Navigator.of(
              context,
              rootNavigator: true,
            ).pop();
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(18),

        child: GridView.count(
          crossAxisCount: 2,

          crossAxisSpacing: 16,
          mainAxisSpacing: 16,

          childAspectRatio: 1,

          children: [

            HoverMenuButton(
              title: 'Pantai',
              icon: Icons.beach_access,
              route: '/pantai',
              bgColor: const Color(0xFFFFD6E7),
            ),

            HoverMenuButton(
              title: 'Gunung',
              icon: Icons.terrain,
              route: '/gunung',
              bgColor: const Color(0xFFFFE5EC),
            ),

            HoverMenuButton(
              title: 'Budaya',
              icon: Icons.museum,
              route: '/budaya',
              bgColor: const Color(0xFFFFCFE1),
            ),

            HoverMenuButton(
              title: 'Kuliner',
              icon: Icons.restaurant,
              route: '/kuliner',
              bgColor: const Color(0xFFFFDDEB),
            ),

            HoverMenuButton(
              title: 'Hotel',
              icon: Icons.hotel,
              route: '/hotel',
              bgColor: const Color(0xFFFFEAF2),
            ),

            HoverMenuButton(
              title: 'Transport',
              icon: Icons.directions_car,
              route: '/transport',
              bgColor: const Color(0xFFFFD1DC),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= HOVER MENU BUTTON =================
class HoverMenuButton extends StatefulWidget {

  final String title;
  final IconData icon;
  final String route;
  final Color bgColor;

  const HoverMenuButton({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
    required this.bgColor,
  });

  @override
  State<HoverMenuButton> createState() =>
      _HoverMenuButtonState();
}

class _HoverMenuButtonState
    extends State<HoverMenuButton> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {

    return MouseRegion(

      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },

      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },

      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            widget.route,
          );
        },

        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 250,
          ),

          transform: Matrix4.identity()
            ..scale(isHover ? 1.05 : 1.0),

          decoration: BoxDecoration(
            color: widget.bgColor,

            borderRadius:
                BorderRadius.circular(24),

            boxShadow: [

              BoxShadow(
                color: Colors.pink.withOpacity(
                  isHover ? 0.25 : 0.15,
                ),

                blurRadius:
                    isHover ? 25 : 15,

                offset: Offset(
                  0,
                  isHover ? 12 : 6,
                ),
              ),
            ],
          ),

          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [

              AnimatedContainer(
                duration: const Duration(
                  milliseconds: 250,
                ),

                padding: EdgeInsets.all(
                  isHover ? 18 : 14,
                ),

                decoration: BoxDecoration(
                  color:
                      Colors.white.withOpacity(0.7),

                  shape: BoxShape.circle,
                ),

                child: Icon(
                  widget.icon,

                  size: isHover ? 42 : 38,

                  color: const Color(
                    0xFFE26D9F,
                  ),
                ),
              ),

              const SizedBox(height: 14),

              Text(
                widget.title,

                style: TextStyle(
                  color: const Color(0xFF5C5C5C),

                  fontSize:
                      isHover ? 16 : 15,

                  fontWeight:
                      FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ================= HALAMAN DETAIL =================
class MenuPage extends StatelessWidget {

  final String menuTitle;
  final IconData icon;

  const MenuPage({
    super.key,
    required this.menuTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFF6FA),

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        backgroundColor: const Color(0xFFFFF6FA),

        iconTheme: const IconThemeData(
          color: Color(0xFF4A4A4A),
        ),

        title: Text(
          menuTitle,

          style: const TextStyle(
            color: Color(0xFF4A4A4A),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(30),

          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius:
                BorderRadius.circular(28),

            boxShadow: [

              BoxShadow(
                color: Colors.pink.withOpacity(0.12),

                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [

              Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: const Color(0xFFFFE4EF),

                  shape: BoxShape.circle,
                ),

                child: Icon(
                  icon,
                  size: 55,
                  color: const Color(0xFFE26D9F),
                ),
              ),

              const SizedBox(height: 18),

              Text(
                menuTitle,

                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A4A4A),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Halaman detail destinasi wisata",

                style: TextStyle(
                  color: Color(0xFF8A8A8A),
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 24),

              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFFFB6D2),

                  elevation: 0,

                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 14,
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(18),
                  ),
                ),

                onPressed: () {
                  Navigator.pop(context);
                },

                icon: Icon(
                  icon,
                  color: Colors.white,
                ),

                label: const Text(
                  "Kembali",

                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}