import 'package:flutter/material.dart';

class TentangPage extends StatelessWidget {

  static const Color colorBg = Color(0xFFFFF8EE);
  static const Color colorCard = Color.fromARGB(255, 157, 221, 231);
  static const Color colorBlue = Color.fromARGB(255, 199, 240, 255);
  static const Color colorText = Color(0xFF1E1E2E);
  static const Color colorSub = Color(0xFF7A7A7A);

  TentangPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colorBg,

      appBar: AppBar(
        backgroundColor: colorBg,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: colorText,
          ),

          onPressed: () => Navigator.pop(context),
        ),

        centerTitle: true,

        title: const Text(
          "Tentang Saya",

          style: TextStyle(
            color: colorText,
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            // ================= HERO CARD =================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),

              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 220, 153, 185),
                    Color.fromARGB(255, 82, 166, 179),
                  ],

                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),

                borderRadius:
                    BorderRadius.circular(24),

                boxShadow: [

                  BoxShadow(
                    color:
                        colorBlue.withOpacity(0.35),

                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),

              child: Column(
                children: [

                  // ================= FOTO PROFILE =================

                  Container(
                    width: 90,
                    height: 90,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),

                      boxShadow: [

                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),

                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/profile.jpeg",

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Khanaya Salsabila",

                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 5,
                    ),

                    decoration: BoxDecoration(
                      color:
                          Colors.white.withOpacity(0.25),

                      borderRadius:
                          BorderRadius.circular(20),
                    ),

                    child: const Text(
                      "NPM: 20241320021",

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    "Mahasiswa Sistem Informasi · UKRI",

                    style: TextStyle(
                      color:
                          Colors.white.withOpacity(0.85),

                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ================= BADGE =================

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,

                    children: [

                      _badge(
                        Icons.school_outlined,
                        "UKRI",
                      ),

                      const SizedBox(width: 8),

                      _badge(
                        Icons.code,
                        "GitHub",
                      ),

                      const SizedBox(width: 8),

                      _badge(
                        Icons.phone_android,
                        "Flutter",
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ================= TENTANG =================

            const Text(
              "TENTANG SAYA",

              style: TextStyle(
                color: colorSub,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: colorCard,

                borderRadius:
                    BorderRadius.circular(16),

                boxShadow: [

                  BoxShadow(
                    color:
                        colorBlue.withOpacity(0.15),

                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              child: Text(
                "Mahasiswa Sistem Informasi yang memiliki ketertarikan besar pada dunia digital dan desain aplikasi mobile. Saya suka mengeksplor tampilan UI yang kreatif, belajar teknologi baru, serta mengembangkan project berbasis Flutter untuk meningkatkan skill dan pengalaman dalam mobile development.",

                style: TextStyle(
                  color:
                      colorText.withOpacity(0.8),

                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // ================= SKILL =================

            const Text(
              "KEAHLIAN & MINAT",

              style: TextStyle(
                color: colorSub,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 12),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.2,

              children: [

                _skillCard(
                  Icons.phone_android,
                  "Flutter UI",
                  "Mobile Design",
                  const Color(0xFFE3F2FD),
                  const Color(0xFF64B5F6),
                ),

                _skillCard(
                  Icons.palette_outlined,
                  "UI Design",
                  "Creative Layout",
                  const Color(0xFFFFF3E0),
                  const Color(0xFFFFB74D),
                ),

                _skillCard(
                  Icons.code,
                  "Programming",
                  "Dart & Flutter",
                  const Color(0xFFE8F5E9),
                  const Color(0xFF66BB6A),
                ),

                _skillCard(
                  Icons.auto_stories,
                  "Content",
                  "Book & Lifestyle",
                  const Color(0xFFF3E5F5),
                  const Color(0xFFBA68C8),
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // ================= BADGE =================

  Widget _badge(
    IconData icon,
    String label,
  ) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),

        borderRadius:
            BorderRadius.circular(20),

        border: Border.all(
          color: Colors.white.withOpacity(0.5),
        ),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [

          Icon(
            icon,
            size: 13,
            color: Colors.white,
          ),

          const SizedBox(width: 5),

          Text(
            label,

            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  // ================= SKILL CARD =================

  Widget _skillCard(
    IconData icon,
    String title,
    String subtitle,
    Color bgColor,
    Color iconColor,
  ) {

    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Container(
            padding: const EdgeInsets.all(10),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            title,

            style: const TextStyle(
              color: colorText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            subtitle,

            textAlign: TextAlign.center,

            style: const TextStyle(
              color: colorSub,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}