import 'package:crypto_app/widgets/crypto_list_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto App', style: theme.textTheme.headlineMedium),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child:Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Most Popular'),
            SizedBox(height: 10),
            CryptoListCard(),
          ],
        ),
      ),
      ),
    );
  }
}
