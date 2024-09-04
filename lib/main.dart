import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dermatology Consultation App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.pink[100], // Set light pink background
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black), // Set text color to black
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100], // Light pink background for AppBar
        title: Center(
          child: Text(
            'PELIXA',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: <Color>[Colors.pink, Colors.purple],
                ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AuthPage()),
              );
            },
            child: Text('Login/Sign Up', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your skin, your story',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'ElegantFont', // Change to your preferred font
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatbotPage()),
              );
            },
            child: Text('ChatBot'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: StadiumBorder(),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureButton(
                  text: 'Daily Skincare',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DailySkincarePage()),
                    );
                  },
                ),
                FeatureButton(
                  text: 'Track Progress',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TrackProgressPage()),
                    );
                  },
                ),
                FeatureButton(
                  text: 'Consult a Dermatologist',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConsultDermatologistPage()),
                    );
                  },
                ),
                FeatureButton(
                  text: 'Educational Research',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EducationalResearchPage()),
                    );
                  },
                ),
                FeatureButton(
                  text: 'Feedback',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedbackPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  FeatureButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding as needed
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink[200], // Light pink button color
          shape: StadiumBorder(),
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Home')),
          ListTile(title: Text('About Us')),
          ListTile(title: Text('Services')),
          ListTile(title: Text('FAQs')),
          ListTile(title: Text('Feedbacks')),
          ListTile(title: Text('Chatbot')),
          ListTile(title: Text('Sign in/Login')),
          ListTile(title: Text('Contact Us')),
        ],
      ),
    );
  }
}

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome Back',
              style: TextStyle(fontSize: 24, color: Colors.black)),
          Text('Log in to access personalized skincare consultations.',
              style: TextStyle(fontSize: 16, color: Colors.black)),
          // Add your login and sign-up forms here
        ],
      ),
    );
  }
}

class DailySkincarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Skincare', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Start your day with personalized skincare routines! Discover daily tips, product recommendations, and home remedies tailored to your skin type. Track your skincare habits and see the transformation over time. Let\'s make healthy skin a part of your everyday routine.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class TrackProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Progress', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Monitor your skin\'s journey to better health! Upload photos, log your skincare routine, and track improvements over time. Visualize your progress and stay motivated with personalized insights and progress reports. Your skin transformation starts here.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class ConsultDermatologistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consult a Dermatologist',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Get expert advice at your fingertips! Connect with certified dermatologists for personalized consultations. Whether it\'s a quick question or a detailed discussion, our experts are here to help you achieve your skin goals. Book an appointment and take the first step towards healthier skin.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class EducationalResearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Educational Research', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Empower yourself with knowledge! Explore a wide range of articles, studies, and resources on skin health. Stay updated on the latest dermatology research, treatments, and skincare trends. Whether you\'re curious or seeking in-depth information, we\'ve got you covered.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Your opinion matters! Share your experience and help us improve. Whether it\'s about our features, services, or overall experience, we\'d love to hear your thoughts. Your feedback helps us provide the best possible care for your skin.',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}

class ChatbotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Text('Chatbot Page', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
