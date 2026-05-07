import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F6FF),
        elevation: 0,

        title: const Text(
          "Widget Bertingkat",

          style: TextStyle(
            color: Color(0xFF2D2D3A),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Color(0xFF2D2D3A),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // ================= CHIP =================

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 7,
              ),

              decoration: BoxDecoration(
                color: const Color(0xFFE8E0FF),

                borderRadius: BorderRadius.circular(20),
              ),

              child: const Text(
                "Contoh Widget Bertingkat",

                style: TextStyle(
                  color: Color(0xFF7C5CBF),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 18),

            // ================= MAIN CARD =================

            Container(
              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(24),

                boxShadow: [

                  BoxShadow(
                    color: const Color(0xFF7C5CBF)
                        .withOpacity(0.10),

                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  // ================= FOTO BOROBUDUR =================

                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),

                    child: Stack(
                      children: [

                        Container(
                          height: 190,
                          width: double.infinity,

                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/borobudur.jpg",
                              ),

                              fit: BoxFit.cover,
                            ),
                          ),

                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin:
                                    Alignment.bottomCenter,

                                end: Alignment.topCenter,

                                colors: [
                                  Colors.black38,
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ),

                        // ================= BADGE =================

                        Positioned(
                          top: 12,
                          right: 12,

                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),

                            decoration: BoxDecoration(
                              color:
                                  Colors.white.withOpacity(0.9),

                              borderRadius:
                                  BorderRadius.circular(10),
                            ),

                            child: const Row(
                              children: [

                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFC107),
                                  size: 14,
                                ),

                                SizedBox(width: 3),

                                Text(
                                  "4.9",

                                  style: TextStyle(
                                    color:
                                        Color(0xFF2D2D3A),

                                    fontSize: 12,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // ================= TITLE =================

                        Positioned(
                          left: 18,
                          bottom: 18,

                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [

                              Container(
                                padding:
                                    const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),

                                decoration: BoxDecoration(
                                  color: Colors.white
                                      .withOpacity(0.2),

                                  borderRadius:
                                      BorderRadius.circular(10),
                                ),

                                child: const Text(
                                  "🌿 Destinasi Wisata",

                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight:
                                        FontWeight.w600,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 8),

                              const Text(
                                "Candi Borobudur",

                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight:
                                      FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ================= CONTENT =================

                  Padding(
                    padding:
                        const EdgeInsets.fromLTRB(
                      16,
                      16,
                      16,
                      16,
                    ),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        // ================= DESCRIPTION =================

                        Container(
                          padding: const EdgeInsets.all(14),

                          decoration: BoxDecoration(
                            color:
                                const Color(0xFFF3F0FF),

                            borderRadius:
                                BorderRadius.circular(14),
                          ),

                          child: const Text(
                            "Candi Borobudur merupakan salah satu destinasi wisata bersejarah yang berada di Magelang, Jawa Tengah. "
                            "Candi ini dikenal sebagai candi Buddha terbesar di dunia dengan arsitektur megah dan nilai budaya yang tinggi. ",

                            style: TextStyle(
                              color: Color(0xFF5A5A7A),
                              fontSize: 13,
                              height: 1.6,
                            ),
                          ),
                        ),

                        const SizedBox(height: 14),

                        // ================= LOCATION =================

                        Row(
                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.all(6),

                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFFE8E0FF),

                                borderRadius:
                                    BorderRadius.circular(8),
                              ),

                              child: const Icon(
                                Icons.location_on,

                                color:
                                    Color(0xFF7C5CBF),

                                size: 14,
                              ),
                            ),

                            const SizedBox(width: 8),

                            const Text(
                              "Magelang, Jawa Tengah",

                              style: TextStyle(
                                color:
                                    Color(0xFF5A5A7A),

                                fontSize: 12,
                              ),
                            ),

                            const Spacer(),

                            Container(
                              padding:
                                  const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),

                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF7C5CBF),

                                borderRadius:
                                    BorderRadius.circular(10),
                              ),

                              child: const Text(
                                "Kunjungi →",

                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight:
                                      FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ================= LABEL =================

            const Text(
              "Highlight Borobudur",

              style: TextStyle(
                color: Color(0xFF2D2D3A),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            // ================= HIGHLIGHT CARD =================

            Row(
              children: [

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(14),

                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEEE1),
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: const Column(
                      children: [

                        Icon(
                          Icons.temple_buddhist,
                          color: Color(0xFFE8874A),
                          size: 26,
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Warisan Dunia",

                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Color(0xFF5A5A7A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(14),

                    decoration: BoxDecoration(
                      color: const Color(0xFFEDE8FF),
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: const Column(
                      children: [

                        Icon(
                          Icons.landscape,
                          color: Color(0xFF7C5CBF),
                          size: 26,
                        ),

                        SizedBox(height: 10),

                        Text(
                          "View Sunrise",

                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Color(0xFF5A5A7A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(14),

                    decoration: BoxDecoration(
                      color: const Color(0xFFE0F7F0),
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: const Column(
                      children: [

                        Icon(
                          Icons.camera_alt,
                          color: Color(0xFF388E3C),
                          size: 26,
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Spot Foto",

                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Color(0xFF5A5A7A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}