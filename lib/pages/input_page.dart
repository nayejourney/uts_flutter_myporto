import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _controller = TextEditingController();

  String nama = "";
  String tampilNama = "";

  static const Color colorBg = Color(0xFFF7FAFF);

  // Biru pastel utama
  static const Color colorBlue = Color(0xFF6FAFEF);

  // Background input/card
  static const Color colorBluePastel = Color(0xFFDDEEFF);

  // Warna text lebih kontras
  static const Color colorDark = Color(0xFF243B55);

  // Biru lebih gelap buat border/text
  static const Color colorBlueDark = Color(0xFF3D7CC9);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colorBg,

      appBar: AppBar(
        title: const Text("User Input"),

        backgroundColor: colorBluePastel,
        foregroundColor: colorDark,

        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Masukkan Nama",

              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: colorBlueDark,
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              controller: _controller,

              onChanged: (value) {
                setState(() => nama = value);
              },

              textCapitalization:
                  TextCapitalization.words,

              style: const TextStyle(
                color: colorDark,
                fontWeight: FontWeight.w600,
              ),

              decoration: InputDecoration(
                hintText: "Nama kamu...",

                hintStyle: TextStyle(
                  color: colorDark.withOpacity(0.35),
                ),

                filled: true,
                fillColor: colorBluePastel,

                contentPadding:
                    const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(14),

                  borderSide: BorderSide(
                    color: colorBlue.withOpacity(0.25),
                    width: 1.5,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(14),

                  borderSide: const BorderSide(
                    color: colorBlueDark,
                    width: 2,
                  ),
                ),

                suffixIcon: nama.isNotEmpty
                    ? IconButton(
                        icon: const Icon(
                          Icons.clear,
                          color: colorBlueDark,
                        ),

                        onPressed: () {
                          _controller.clear();

                          setState(() {
                            nama = "";
                            tampilNama = "";
                          });
                        },
                      )
                    : null,
              ),
            ),

            const SizedBox(height: 14),

            // ================= BUTTON =================

            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorBlueDark,

                  foregroundColor: Colors.white,

                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(14),
                  ),

                  elevation: 0,
                ),

                onPressed: () {

                  if (nama.trim().isNotEmpty) {

                    setState(() {
                      tampilNama = nama.trim();
                    });

                    FocusScope.of(context).unfocus();
                  }
                },

                child: const Text(
                  "Tampilkan",

                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ================= HASIL =================

            if (tampilNama.isNotEmpty)

              Center(
                child: Container(
                  width: double.infinity,

                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: colorBluePastel,

                    borderRadius:
                        BorderRadius.circular(18),

                    boxShadow: [

                      BoxShadow(
                        color:
                            colorBlue.withOpacity(0.18),

                        blurRadius: 14,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),

                  child: Column(
                    children: [

                      const Icon(
                        Icons.person,
                        color: colorBlueDark,
                        size: 34,
                      ),

                      const SizedBox(height: 12),

                      Text(
                        "Halo,",

                        style: TextStyle(
                          fontSize: 15,
                          color:
                              colorDark.withOpacity(0.6),
                        ),
                      ),

                      const SizedBox(height: 2),

                      Text(
                        tampilNama,

                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: colorBlueDark,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        "Selamat datang 👋",

                        style: TextStyle(
                          fontSize: 13,
                          color:
                              colorDark.withOpacity(0.45),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}