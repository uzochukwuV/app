class Crypto {
  final String name;
  final String symbol;
  final String price;
  final String percentage_change_24h;

  Crypto(
      {required this.name,
      required this.symbol,
      required this.price,
      required this.percentage_change_24h});

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
        name: json["name"],
        symbol: json["symbol"],
        price: json['price'],
        percentage_change_24h: json["quote"]["USD"]["percentage_change_24h"]);
  }
}
