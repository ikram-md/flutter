//TODO: Add your imports here.

import 'package:bitcoin/networking.dart';
import 'networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';

String BASE_ENDPOINT = "https://api.cryptonator.com/api/ticker/btc-";
class CoinData {
  //setting up the constructor 
  CoinData({this.currency});
  final String currency; 

  Future getCoinData()async{
    Networking netHelper = new Networking(url : "${BASE_ENDPOINT}${currency}");
    var coins = await netHelper.makeReq();
    return coins;
  }
}
