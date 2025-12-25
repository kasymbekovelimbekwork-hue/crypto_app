import 'package:crypto_app/models/crypto_coin_model.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({super.key, required this.coin});

  final CryptoCoinModel coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl, width: 40,),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
      title: Text(coin.name, style: theme.textTheme.bodyLarge),
      subtitle: Text(
        '${coin.priceInUSD.toStringAsFixed(2)}\$',
        style: theme.textTheme.bodyMedium,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/coin', arguments: coin.name);
      },
    );
  }
}
