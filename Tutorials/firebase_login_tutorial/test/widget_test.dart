void main() {
  ShowData();
}

void ShowData() async {
  startTask();
  String? account = await accessData();
  fetchData(account);
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

Future<String?> accessData() async {

  String? account;

  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    // sleep(time);
    await Future.delayed(time, () {
      account = '8500만원';
      print(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }

  return account;
}

void fetchData(String? account) {
  String info3 = '잔액은 $account 입니다.';
  print(info3);
}

// Future클래스는 비동기 작업을 할 때 사용
// 2. 일정 소요시간 후에 실제 데이터나 에러를 반환
// 3. async클래스는 await 메서드를 가지고 있음
// - await로 선언된 메서드는 응답이 처리될 때까지 대기