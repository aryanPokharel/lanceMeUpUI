import 'package:flutter/material.dart';
import 'package:lancemeup/screens/carouselScreen.dart';
import 'package:lancemeup/screens/landingScreen.dart';
import 'package:lancemeup/screens/signInScreen.dart';
import 'package:lancemeup/screens/splashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => SplashScreen(),
        '/landing': (context) => const LandingScreen(),
        '/signIn': (context) => const SignInScreen(),
        '/carouselPage': (context) => const MyCarousel(
              items: [
                {
                  'imageUrl': 'https://source.unsplash.com/random',
                  'description':
                      '1 Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                },
                {
                  'imageUrl': 'https://source.unsplash.com/random',
                  'description':
                      '2 Vestibulum vel quam vel dolor ultrices hendrerit.'
                },
                {
                  'imageUrl': 'https://source.unsplash.com/random',
                  'description':
                      '3 Aliquam vitae semper tortor. Integer eget venenatis magna.'
                },
                {
                  'imageUrl': 'https://source.unsplash.com/random',
                  'description':
                      '4 Aliquam vitae semper tortor. Integer eget venenatis magna.'
                },
              ],
            ),
      },
      initialRoute: '/splash',
    ),
  );
}
