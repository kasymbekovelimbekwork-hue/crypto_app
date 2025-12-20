import 'package:crypto_app/features/coin/coin_screen.dart';
import 'package:crypto_app/features/crypto_list/crypto_list.dart';


final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CoinScreen(),
};
