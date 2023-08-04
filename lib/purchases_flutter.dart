library purchases_flutter_mock;

import 'package:purchases_flutter_mock/customer_info.dart';
import 'package:purchases_flutter_mock/log_level.dart';
import 'package:purchases_flutter_mock/offering.dart';
import 'package:purchases_flutter_mock/offerings.dart';
import 'package:purchases_flutter_mock/package.dart';
import 'package:purchases_flutter_mock/purchases_configuration.dart';
import 'package:purchases_flutter_mock/store_product.dart';

export 'package:purchases_flutter_mock/customer_info.dart';
export 'package:purchases_flutter_mock/log_level.dart';
export 'package:purchases_flutter_mock/offering.dart';
export 'package:purchases_flutter_mock/offerings.dart';
export 'package:purchases_flutter_mock/package.dart';
export 'package:purchases_flutter_mock/purchases_configuration.dart';
export 'package:purchases_flutter_mock/store_product.dart';
export 'package:purchases_flutter_mock/entitlement_info.dart';
export 'package:purchases_flutter_mock/entitlement_infos.dart';

/// A Calculator.
class Purchases {
  static LogLevel? level;

  static Offerings? offerings;

  static CustomerInfo customerInfo = CustomerInfo();

  static setLogLevel(LogLevel val) {
    level = val;
  }

  static configure(PurchasesConfiguration conf) async {
    offerings = Offerings();
    offerings!.current = Offering();
    fillPackages(offerings!.current!.availablePackages);

    print('configured');
  }

  static getOfferings() async {
    return offerings;
  }

  static getCustomerInfo() async{
    
    return customerInfo;
  }

   static purchasePackage(Package package) async{
    customerInfo.entitlements.all['premium']!.isActive = true;
    Future.delayed(const Duration(minutes: 2), ()  {
       customerInfo.entitlements.all['premium']!.isActive = false;
  });
    return customerInfo;
  }

  static void fillPackages(List<Package> availablePackages) {
    List<String> descriptions = [
      'Один месяц Премиум | убирает рекламу на один месяц | одноразовый платёж',
      'Одна неделя Премиум | убирает рекламу на одну неделю | одноразовый платёж',
      'Один день Премиум | убирает рекламу на один день | одноразовый платёж',
      'Подписка на Премиум | Убирает рекламу на один месяц | ежемесячные платежи'
    ];
    List<String> prices = ['7 NIS', '3.5 NIS', '1 NIS', '3.5 NIS'];
    List<String> packageIds = ['Monthly', 'Weekly', 'Daily', 'Monthly auto renew'];
    for (int i = 0; i < 4; i++) {
      Package p = Package(packageIds[i], StoreProduct(descriptions[i], prices[i]));
      availablePackages.add(p);
    }
  }
}
