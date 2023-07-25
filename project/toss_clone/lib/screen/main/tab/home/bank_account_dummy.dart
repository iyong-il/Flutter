import 'banks_dummy.dart';
import 'vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '생활비 통장');
final bankAccountShinhan2 = BankAccount(bankShinhan, 800000);
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 34900500, accountTypeName: '저축예금');
final bankAccountKakao = BankAccount(bankKakao, 56892345);
final bankAccountToss =
    BankAccount(bankToss, 333666555980, accountTypeName: '주거래은행 통장');

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss
];

