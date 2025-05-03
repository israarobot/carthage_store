import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> with SingleTickerProviderStateMixin {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  bool _agreeToTerms = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo using Flutter Icon
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.storefront, // Store-related icon from Flutter
                      size: 50,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    "Join Carthage Store today!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Email Field
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      prefixIcon: const Icon(Icons.email_outlined, color: Colors.orange),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.orange, width: 2),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 15),

                  // Password Field
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey[700]),
                      prefixIcon: const Icon(Icons.lock_outline, color: Colors.orange),
                      suffixIcon: Icon(Icons.visibility_outlined, color: Colors.grey[600]),
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.orange, width: 2),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 15),

                  // Terms and Conditions Checkbox
                  Row(
                    children: [
                      Checkbox(
                        value: _agreeToTerms,
                        onChanged: (value) {
                          setState(() {
                            _agreeToTerms = value ?? false;
                          });
                        },
                        activeColor: Colors.orange,
                      ),
                      Expanded(
                        child: Text(
                          "I agree to the Terms & Conditions and Privacy Policy",
                          style: TextStyle(color: Colors.grey[700], fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // Signup Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 5,
                    ),
                    onPressed: _agreeToTerms
                        ? () {
                            // Navigate to HomeScreen on successful signup
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const HomeScreen()),
                            // );
                          }
                        : null, // Disabled if terms not agreed
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Divider with "OR"
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey[400])),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "OR",
                          style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey[400])),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Social Signup Buttons with Flutter Icons
                  SocialSigninButton(
                    icon: Icons.g_mobiledata, // Google icon approximation
                    text: "Sign in with Google",
                    color: Colors.white,
                    textColor: Colors.black87,
                    borderColor: Colors.grey[300],
                    onPressed: () {},
                  ),
                  const SizedBox(height: 15),
                  SocialSigninButton(
                    icon: Icons.facebook, // Facebook icon
                    text: "Sign in with Facebook",
                    color: const Color(0xFF1877F2),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 15),
                  SocialSigninButton(
                    icon: Icons.apple, // Apple icon
                    text: "Sign in with Apple",
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),

                  // Login Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const LoginScreen()),
                          // );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }
}

class SocialSigninButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color textColor;
  final Color? borderColor;
  final VoidCallback onPressed;

  const SocialSigninButton({
    required this.icon,
    required this.text,
    required this.color,
    required this.textColor,
    this.borderColor,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none,
        ),
        elevation: 2,
      ),
      onPressed: onPressed,
      icon: Icon(icon, color: textColor, size: 24),
      label: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

