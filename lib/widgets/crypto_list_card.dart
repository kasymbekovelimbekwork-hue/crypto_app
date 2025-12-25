import 'package:crypto_app/widgets/crypto_coin_tile.dart';
import 'package:crypto_app/widgets/padded_container.dart';
import 'package:crypto_app/models/crypto_coin_model.dart';
import 'package:crypto_app/reposytories/crypto_coins/crypto_coins_reposytories.dart';
import 'package:flutter/material.dart';

class CryptoListCard extends StatefulWidget {
  const CryptoListCard({super.key});

  @override
  State<CryptoListCard> createState() => _CryptoListCardState();
}

class _CryptoListCardState extends State<CryptoListCard> {
  List<CryptoCoinModel>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCryptoLIst();
    super.initState();
  }

  Future<void> _loadCryptoLIst() async {
    _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    
    return Align(
      alignment: Alignment.topCenter,
        child: PaddedContainer(
          child: (_cryptoCoinsList == null)
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  itemCount: _cryptoCoinsList!.length,
                  itemBuilder: (context, i) {
                    return CryptoCoinTile(coin: _cryptoCoinsList![i]);
                  },
                ),
        ),
    );
  }
}
