import 'dart:async';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int count = 0;

  Timer? timer;

  // ================= TAMBAH =================
  void increment() {
    setState(() {
      count++;
    });
  }

  // ================= KURANG =================
  void decrement() {
    setState(() {
      count--;
    });
  }

  // ================= HOLD TAMBAH =================
  void startIncrement() {
    timer = Timer.periodic(
      const Duration(milliseconds: 100),
      (_) {
        increment();
      },
    );
  }

  // ================= HOLD KURANG =================
  void startDecrement() {
    timer = Timer.periodic(
      const Duration(milliseconds: 100),
      (_) {
        decrement();
      },
    );
  }

  // ================= STOP TIMER =================
  void stopTimer() {
    timer?.cancel();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

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

        title: const Text(
          "Counter",

          style: TextStyle(
            color: Color(0xFF4A4A4A),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 35,
          ),

          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius:
                BorderRadius.circular(35),

            boxShadow: [

              BoxShadow(
                color: Colors.pink.withOpacity(0.12),

                blurRadius: 25,
                offset: const Offset(0, 10),
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [

              // COUNTER
              AnimatedContainer(
                duration: const Duration(
                  milliseconds: 250,
                ),

                width: 170,
                height: 170,

                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFFD6E7),
                      Color(0xFFFFB7D2),
                    ],

                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  shape: BoxShape.circle,

                  boxShadow: [

                    BoxShadow(
                      color: Colors.pink.withOpacity(0.18),

                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),

                child: Center(
                  child: Text(
                    "$count",

                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // BUTTON
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,

                children: [

                  // MINUS
                  GestureDetector(

                    onTap: decrement,

                    onLongPressStart: (_) {
                      startDecrement();
                    },

                    onLongPressEnd: (_) {
                      stopTimer();
                    },

                    child: Container(
                      width: 70,
                      height: 70,

                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE5EE),

                        borderRadius:
                            BorderRadius.circular(24),

                        boxShadow: [

                          BoxShadow(
                            color:
                                Colors.pink.withOpacity(0.10),

                            blurRadius: 12,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),

                      child: const Icon(
                        Icons.remove,
                        color: Color(0xFFE26D9F),
                        size: 32,
                      ),
                    ),
                  ),

                  const SizedBox(width: 30),

                  // PLUS
                  GestureDetector(

                    onTap: increment,

                    onLongPressStart: (_) {
                      startIncrement();
                    },

                    onLongPressEnd: (_) {
                      stopTimer();
                    },

                    child: Container(
                      width: 70,
                      height: 70,

                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFFB7D2),
                            Color(0xFFFF8FBC),
                          ],
                        ),

                        borderRadius:
                            BorderRadius.circular(24),

                        boxShadow: [

                          BoxShadow(
                            color:
                                Colors.pink.withOpacity(0.20),

                            blurRadius: 14,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),

                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}