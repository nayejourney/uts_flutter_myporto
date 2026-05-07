import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  static const List<_GridItem> _items = [
    _GridItem(emoji: "🏖️", label: "Pantai",     color: Color(0xFFE8F4FD), iconBg: Color(0xFFBDE0F8)),
    _GridItem(emoji: "🏔️", label: "Gunung",     color: Color(0xFFEAF6EC), iconBg: Color(0xFFB5DFB9)),
    _GridItem(emoji: "🏛️", label: "Budaya",     color: Color(0xFFF3EDFF), iconBg: Color(0xFFCFBDF5)),
    _GridItem(emoji: "🍜", label: "Kuliner",    color: Color(0xFFFFEFF3), iconBg: Color(0xFFFFBDD0)),
    _GridItem(emoji: "🎒", label: "Petualang",  color: Color(0xFFFFF4E8), iconBg: Color(0xFFFFCFA0)),
    _GridItem(emoji: "🌿", label: "Alam",       color: Color(0xFFE6F7F5), iconBg: Color(0xFF9ED8D2)),
    _GridItem(emoji: "🏙️", label: "Kota",       color: Color(0xFFEBEEFF), iconBg: Color(0xFFB3BCEC)),
    _GridItem(emoji: "🎨", label: "Seni",       color: Color(0xFFFFF9E6), iconBg: Color(0xFFFFE08A)),
    _GridItem(emoji: "📸", label: "Foto Spot",  color: Color(0xFFFFEDE8), iconBg: Color(0xFFFFBBA8)),
    _GridItem(emoji: "⛺", label: "Camping",    color: Color(0xFFF2FAE8), iconBg: Color(0xFFC3E69A)),
    _GridItem(emoji: "🚤", label: "Bahari",     color: Color(0xFFE4F5FF), iconBg: Color(0xFF9DD9F7)),
    _GridItem(emoji: "🎡", label: "Hiburan",    color: Color(0xFFFFEAF0), iconBg: Color(0xFFF9A8C4)),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F6FF),
        elevation: 0,

        title: const Text(
          "Grid View",

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

      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          8,
          20,
          0,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Row(
              children: [

                const Text(
                  "Kategori Wisata",

                  style: TextStyle(
                    color: Color(0xFF2D2D3A),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
                        const Color(0xFFEDE8FF),

                    borderRadius:
                        BorderRadius.circular(10),
                  ),

                  child: Text(
                    "${_items.length} kategori",

                    style: const TextStyle(
                      color: Color(0xFF7C5CBF),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            const Text(
              "Pilih kategori perjalananmu 🗺️",

              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 13,
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: GridView.builder(
                itemCount: _items.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,

                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,

                  childAspectRatio: 0.9,
                ),

                itemBuilder: (context, index) =>
                    _GridCard(
                  item: _items[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GridItem {

  final String emoji;
  final String label;
  final Color color;
  final Color iconBg;

  const _GridItem({
    required this.emoji,
    required this.label,
    required this.color,
    required this.iconBg,
  });
}

class _GridCard extends StatefulWidget {

  final _GridItem item;

  const _GridCard({
    required this.item,
  });

  @override
  State<_GridCard> createState() =>
      _GridCardState();
}

class _GridCardState
    extends State<_GridCard> {

  bool _pressed = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTapDown: (_) =>
          setState(() => _pressed = true),

      onTapUp: (_) =>
          setState(() => _pressed = false),

      onTapCancel: () =>
          setState(() => _pressed = false),

      child: AnimatedScale(
        scale: _pressed ? 0.94 : 1.0,

        duration:
            const Duration(milliseconds: 100),

        child: Container(
          decoration: BoxDecoration(
            color: widget.item.color,

            borderRadius:
                BorderRadius.circular(20),

            boxShadow: [

              BoxShadow(
                color:
                    Colors.black.withOpacity(0.05),

                blurRadius: 8,

                offset: const Offset(0, 3),
              ),
            ],
          ),

          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [

              Container(
                width: 54,
                height: 54,

                decoration: BoxDecoration(
                  color: widget.item.iconBg,

                  shape: BoxShape.circle,
                ),

                child: Center(
                  child: Text(
                    widget.item.emoji,

                    style: const TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Text(
                widget.item.label,

                style: const TextStyle(
                  color: Color(0xFF2D2D3A),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}