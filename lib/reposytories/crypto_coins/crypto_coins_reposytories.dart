import 'package:crypto_app/models/crypto_coin_model.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoinModel>> getCoinsList() async {
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,SOL,DOGE,BNB,USDC&tsyms=USD&api_key=f698809f6a6429eb913b2d80180beb7b90329df080f88327576f83262a9e678d',
    );
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries
        .map(
          (e) {
            final usdData = e.value['USD'] as Map<String, dynamic>;
            final priceInUSD = usdData['PRICE'];
            final imageUrl = usdData['IMAGEURL'];
            return CryptoCoinModel(
            name: e.key,
            priceInUSD: priceInUSD,
            imageUrl: 'https://www.cryptocompare.com/$imageUrl',
          );},
        )
        .toList();
    return cryptoCoinsList;
  }
}
