const basePath = 'assets/images';

enum RPSType {
  rock,
  paper,
  scissors;

  String get path => '$basePath/$name.png';
}

enum GameResultType {
  playerWin('플레이어 승리'),
  draw('무승부'),
  cpuWin('컴퓨터 승리');

  const GameResultType(this.displayString);

  final String displayString;
}
