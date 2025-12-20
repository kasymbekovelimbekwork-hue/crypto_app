import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/bitcoin-logo.svg',
        width: 30,
        height: 30,
      ),
      title: Text(coinName, style: theme.textTheme.bodyLarge),
      subtitle: Text('\$50,000', style: theme.textTheme.bodyMedium),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/coin', arguments: coinName);
      },
    );
  }
}