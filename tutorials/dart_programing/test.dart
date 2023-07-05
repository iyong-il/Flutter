void main() {

  // 예외처리 : 프로그램이 진행 중일 때, 의도 하였거나 / 의도하지 않은 상황에 대해서
  // 프로그램적으로 오류가 발생했을 때, 대처하는 방법

  // try ~ catch 문 : 가장 기본적인 예외처리문 / 많이 쓰이는 예외처리 문이기도 함
  // try {
  // 예외가 발생할 것으로 예상되는 코드
  // } catch(error, stack) {
  // 예외가 발생했을 때 실행 하고자 하는 코드 코드
  // } finally {
  // 예외가 발생 했던, 하지 않았던, try문 / catch문 이후에 실행하고자 하는 코드
  // }

  try {
    // print(10 ~/ 0);
    throw Exception('Unknown Error');
  } on UnsupportedError catch(s, e) {
    // print(e);
    print(s);
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
  } on TypeError catch(e, s) {
   print('Null 값이 참조 되었습니다.');
  } catch (e, s) {
    print('모르는 에러가 발생했습니다.');
    // rethrow;
  }finally {
    print('반드시 동작하는 Finally문 입니다.');
  }

  print('위의 에러 때문에 동작하지 않습니다.');




  int num1 = 1;
  int num2 = 2;

  int sum = add(num1, num2);
  bool boolean = ifElse();
  bool switch2 = switch1();

  print(sum);
  print(boolean);
  print(switch2);

// 반복문 : 특정한 코드의 반복을 컴퓨터에게 지시 할 때 사용하는 프로그래밍 문법
// for / for in / while / do - while
// continue / break

// for (기준변수; 조건식; 가변치 ) {
// 조건식이 참 일 때 반복할 코드
// }

  for (int i = 0; i < 10; i++) {
    print('Running for Index : $i');
  }

  // for (단일 변수 in 컬렉션(List / Set / Map)) {
  // 컬렉션 내에 요소들의 수 / 변수 만큼 사용 될 반복문
  // }

  List<int> indexs = [0, 1, 2, 3, 4, 5];
  for (final index in indexs) {
    print('Running For_In Index : $index');
  }

  // while (조건식) {
  // 조건식이 참일 경우 실행 될 반복문
  // }

  bool isRunning = true;
  int count = 0;

  while (isRunning) {
    if (count >= 5) {
      isRunning = false;
    }
    count++;
    print('while is Running : $count');
  }

  // do-while
  // do {
  // 선행 진행 / 반복 될 코드
// }  while (조건);

  int number = 0;

  do {
    number++;

    if(number == 4) {
      print('Running Continue : $number');
      continue;
    }

    print('Running Do-While : $number');

  } while (number < 10);
}

// 함수 / 메서드
// 프로그래밍에서 가장 기본이 되는 단위 중 하나

// 리턴타입 함수명 (매개변수 {
//  함수 내 동작할 코드
// )

int add(int num1, int num2) {
  return (num1 + num2);
}

// 분기문과 반복문
// 분기문 : 프로그램이 특정한 상황에 일을 할 지 / 하지않고 넘길지
// if / else || switch

// if 문 / else 문
// if(조건식)  {
//  조건식이 참일 경우 실행 할 코드
// } else {
//  조건식이 거짓일 경우 실행할 코드
// }

bool ifElse() {
  bool isTrue = true;

  if (isTrue) {
    return true;
  } else {
    return false;
  }




}

// switch문
// flutter 3.10 / Dart 3.0 버전 이상부터 변경 된 부분이 조금있는 문법 중 하나.
// 이번 버전에서는 return / break를 했어야함

// switch(비교 대상) {
// case (조건식) :
// case (조건식) :
// case (조건식) :
// default:
// }
bool switch1() {
  int num = 3;

  switch (num) {
    case 1:
      return false;
    case 2:
      return false;
    case 3:
      return true;
// only Upper Dart 3.0
    case > 100:
      return true;
    default:
      return false;
  }
}
