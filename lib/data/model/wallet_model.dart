import 'dart:convert';

WalletModel walletModelFromJson(String str) => WalletModel.fromJson(json.decode(str));

String walletModelToJson(WalletModel data) => json.encode(data.toJson());

class WalletModel {
  String status;
  int statusCode;
  String message;
  Data data;

  WalletModel({
    required this.status,
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) => WalletModel(
    status: json["status"],
    statusCode: json["statusCode"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "statusCode": statusCode,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  List<Wallet> wallets;

  Data({
    required this.wallets,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    wallets: List<Wallet>.from(json["wallets"].map((x) => Wallet.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "wallets": List<dynamic>.from(wallets.map((x) => x.toJson())),
  };
}

class Wallet {
  String id;
  CorporateWallet corporateWallet;
  String type;
  Corporate corporate;
  int balance;
  int monthlyLimit;
  int dailyLimit;
  int totalTxns;
  int amountTxnThisMonth;
  int amountTxnToday;

  Wallet({
    required this.id,
    required this.corporateWallet,
    required this.type,
    required this.corporate,
    required this.balance,
    required this.monthlyLimit,
    required this.dailyLimit,
    required this.totalTxns,
    required this.amountTxnThisMonth,
    required this.amountTxnToday,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
    id: json["_id"],
    corporateWallet: CorporateWallet.fromJson(json["corporateWallet"]),
    type: json["type"],
    corporate: Corporate.fromJson(json["corporate"]),
    balance: json["balance"],
    monthlyLimit: json["monthlyLimit"],
    dailyLimit: json["dailyLimit"],
    totalTxns: json["totalTxns"],
    amountTxnThisMonth: json["amountTxnThisMonth"],
    amountTxnToday: json["amountTxnToday"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "corporateWallet": corporateWallet.toJson(),
    "type": type,
    "corporate": corporate.toJson(),
    "balance": balance,
    "monthlyLimit": monthlyLimit,
    "dailyLimit": dailyLimit,
    "totalTxns": totalTxns,
    "amountTxnThisMonth": amountTxnThisMonth,
    "amountTxnToday": amountTxnToday,
  };
}

class Corporate {
  String id;
  String name;
  String logo;

  Corporate({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory Corporate.fromJson(Map<String, dynamic> json) => Corporate(
    id: json["_id"],
    name: json["name"],
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "logo": logo,
  };
}

class CorporateWallet {
  String id;
  String name;
  String type;
  String description;
  String icon;

  CorporateWallet({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.icon,
  });

  factory CorporateWallet.fromJson(Map<String, dynamic> json) => CorporateWallet(
    id: json["_id"],
    name: json["name"],
    type: json["type"],
    description: json["description"],
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "type": type,
    "description": description,
    "icon": icon,
  };
}
