import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const OvyCareApp());
}

class OvyCareApp extends StatelessWidget {
  const OvyCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OvyCare',
      theme: ThemeData(
        primaryColor: const Color(0xFFF8E1E9),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFD4A5C3),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(),
            const AboutSection(),
            const FeaturesSection(),
            const HowItWorksSection(),
            const TeamSection(),
            const TechnologiesSection(),
            const ContactSection(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}

// Hero Section
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.9,
      color: const Color(0xFFF8E1E9),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeTransitionWidget(
                  child: Text(
                    'OvyCare',
                    style: GoogleFonts.poppins(
                      fontSize: size.width > 600 ? 48 : 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFD4A5C3),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FadeTransitionWidget(
                  delay: 200,
                  child: Text(
                    'Your All-in-One Women’s Health Companion',
                    style: TextStyle(
                      fontSize: size.width > 600 ? 24 : 18,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SlideTransitionWidget(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Download App'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SlideTransitionWidget(
                      delay: 400,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFFD4A5C3)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Learn More',
                          style: TextStyle(color: Color(0xFFD4A5C3)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (size.width > 800)
            Flexible(
              child: FadeTransitionWidget(
                delay: 600,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Mobile App Mockup Placeholder',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// About Section
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          FadeTransitionWidget(
            child: Text(
              'About OvyCare',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          FadeTransitionWidget(
            delay: 200,
            child: const Text(
              'OvyCare is a graduation project dedicated to empowering women by providing tools for early detection of PCOS and PCOD. Using advanced AI integration, OvyCare offers personalized health insights and tracking to support women’s well-being.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}

// Features Section
class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  final features = const [
    {
      'title': 'PCOS Test',
      'description': '18-question dynamic AI-based test for early PCOS detection.'
    },
    {
      'title': 'PCOD Detection',
      'description': 'Upload images for AI-driven PCOD prediction.'
    },
    {
      'title': 'Menstrual Cycle Tracker',
      'description': 'Personalized cycle predictions and reminders.'
    },
    {
      'title': 'Doctor Directory',
      'description': 'Find nearby gynecologists with address and pricing.'
    },
    {
      'title': 'Tips & Healthy Foods',
      'description': 'Curated diet and health education content.'
    },
    {
      'title': 'Exercise Section',
      'description': 'Weight-loss and relaxation exercises with tracking.'
    },
    {
      'title': 'Track Symptoms',
      'description': 'Log daily symptoms to monitor health trends.'
    },
    {
      'title': 'AI Voice Doctor Finder',
      'description': 'Voice-assisted doctor search for convenience.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFFF3E8F8),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          FadeTransitionWidget(
            child: Text(
              'Core Features',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: features.map((feature) {
              return FeatureCard(
                title: feature['title']!,
                description: feature['description']!,
                width: size.width > 1200
                    ? 300
                    : size.width > 600
                        ? size.width * 0.45
                        : size.width * 0.9,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatefulWidget {
  final String title;
  final String description;
  final double width;

  const FeatureCard({
    super.key,
    required this.title,
    required this.description,
    required this.width,
  });

  @override
  _FeatureCardState createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: widget.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: _isHovered ? 15 : 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        transform: Matrix4.translationValues(0, _isHovered ? -10 : 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

// How It Works Section
class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  final steps = const [
    'Create account / sign in',
    'Take PCOS/PCOD test',
    'Track symptoms and menstrual cycle',
    'Get AI-driven insights',
    'Find doctors & follow tips and exercises',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          FadeTransitionWidget(
            child: Text(
              'How It Works',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: steps.length,
            itemBuilder: (context, index) {
              return FadeTransitionWidget(
                delay: 200 * index,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFD4A5C3),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          steps[index],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Team Section
class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3E8F8),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          FadeTransitionWidget(
            child: Text(
              'Meet the Team',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              TeamMemberCard(name: 'Moaaz Ahmed', role: 'Team Member'),
              TeamMemberCard(name: 'Dohaa Ayman', role: 'Team Member'),
              TeamMemberCard(name: 'Hossam Fakher', role: 'Supervisor'),
            ],
          ),
        ],
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String role;

  const TeamMemberCard({super.key, required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return FadeTransitionWidget(
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 40, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
            Text(
              role,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

// Technologies Section
class TechnologiesSection extends StatelessWidget {
  const TechnologiesSection({super.key});

  final techs = const [
    'Flutter',
    'Firebase',
    'Hive',
    'AI APIs',
    'Voice Recognition',
    'Web Scraping',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          FadeTransitionWidget(
            child: Text(
              'Technologies Used',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: techs.map((tech) {
              return FadeTransitionWidget(
                child: Chip(
                  label: Text(tech),
                  backgroundColor: const Color(0xFFD4A5C3),
                  labelStyle: const TextStyle(color: Colors.white),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

// Contact Section
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xFFF3E8F8),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          FadeTransitionWidget(
            child: Text(
              'Get in Touch',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFD4A5C3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: size.width > 600 ? 500 : size.width * 0.9,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: 'Message',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SlideTransitionWidget(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Send Message'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Footer Section
class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFD4A5C3),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () => _launchURL('https://facebook.com'),
              ),
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () => _launchURL('https://linkedin.com'),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            '© 2025 OvyCare. All rights reserved.',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}

// Animation Widgets
class FadeTransitionWidget extends StatefulWidget {
  final Widget child;
  final int delay;

  const FadeTransitionWidget({super.key, required this.child, this.delay = 0});

  @override
  _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}

class SlideTransitionWidget extends StatefulWidget {
  final Widget child;
  final int delay;

  const SlideTransitionWidget({super.key, required this.child, this.delay = 0});

  @override
  _SlideTransitionWidgetState createState() => _SlideTransitionWidgetState();
}

class _SlideTransitionWidgetState extends State<SlideTransitionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}