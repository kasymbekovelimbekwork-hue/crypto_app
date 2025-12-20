import 'package:crypto_app/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto App'),
        backgroundColor: theme.appBarTheme.backgroundColor,
        shape: theme.appBarTheme.shape,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) =>
            Divider(color: theme.dividerColor, height: 1),
        itemCount: 10,
        itemBuilder: (context, i) {
          const coinName = 'DoggiCoin';
          return const CryptoCoinTile(coinName: coinName,);
        },
      ),
    );
  }
}
