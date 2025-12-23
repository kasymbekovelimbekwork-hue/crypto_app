import 'package:crypto_app/features/crypto_list/widgets/widgets.dart';
import 'package:crypto_app/models/crypto_coin_model.dart';
import 'package:crypto_app/reposytories/crypto_coins/crypto_coins_reposytories.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoinModel>? _cryptoCoinsList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto App'),
        backgroundColor: theme.appBarTheme.backgroundColor,
        shape: theme.appBarTheme.shape,
      ),
      body: (_cryptoCoinsList == null)
          ? const SizedBox()
          : ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(color: theme.dividerColor, height: 1),
              itemCount: _cryptoCoinsList!.length,
              itemBuilder: (context, i) {
                return CryptoCoinTile(coin: _cryptoCoinsList![i]);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
