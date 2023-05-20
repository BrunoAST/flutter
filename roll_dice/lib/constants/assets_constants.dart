class AssetsConstants {
  static const String _path = 'assets';
  static const String dice1 = '$_path/dice-1.png';
  static const String dice2 = '$_path/dice-2.png';
  static const String dice3 = '$_path/dice-3.png';
  static const String dice4 = '$_path/dice-4.png';
  static const String dice5 = '$_path/dice-5.png';
  static const String dice6 = '$_path/dice-6.png';

  static String getAsset(int diceNumber) {
    return '$_path/dice-$diceNumber.png';
  }
}
