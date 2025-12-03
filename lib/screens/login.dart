import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const accentPurple = Color(0xFF8254FF);

    // Fix nav-bar tint on Android
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xFFF7F2FF),
              Color(0xFFF1E9FF),
            ],
            stops: [0.0, 0.55, 1.0],
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 70),

                        Center(
                          child: Text(
                            "ZENITH",
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 3,
                              color: const Color(0xFF1D0A43),
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        Center(
                          child: Text(
                            "Sign in to continue.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.55),
                            ),
                          ),
                        ),

                        const SizedBox(height: 55),

                        // EMAIL LABEL
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 8),

                        // EMAIL FIELD
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white.withOpacity(0.85),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.05),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                blurRadius: 12,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: "email@example.com",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.35),
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 22),

                        // PASSWORD LABEL
                        Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 8),

                        // PASSWORD FIELD
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white.withOpacity(0.85),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.05),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  obscureText: true,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: "••••••••",
                                    hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.35),
                                    ),
                                    border: InputBorder.none,
                                    contentPadding:
                                    const EdgeInsets.symmetric(
                                      horizontal: 18,
                                      vertical: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.black.withOpacity(0.40),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),

                        // CTA BUTTON
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF8E5CFF),
                                  Color(0xFF6A4DFD),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.10),
                                  blurRadius: 18,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 28),

                        // REMEMBER ME + FORGOT
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 18,
                              color: Colors.black.withOpacity(0.45),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: accentPurple,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 28),

                        Center(
                          child: Text(
                            "Or continue with",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.40),
                              fontSize: 14,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // GOOGLE BUTTON
                        Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.05),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.06),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/google.png",
                                height: 26,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Sign in with Google",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.85),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 18),

                        Center(
                          child: Text.rich(
                            TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                              ),
                              children: [
                                TextSpan(
                                  text: "Sign up",
                                  style: TextStyle(
                                    color: accentPurple,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
