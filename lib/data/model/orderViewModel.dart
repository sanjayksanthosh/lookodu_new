// To parse this JSON data, do
//
//     final orderViewModel = orderViewModelFromJson(jsonString);

import 'dart:convert';

OrderViewModel orderViewModelFromJson(String str) => OrderViewModel.fromJson(json.decode(str));

String orderViewModelToJson(OrderViewModel data) => json.encode(data.toJson());

class OrderViewModel {
  String status;
  int statusCode;
  String message;
  Data data;

  OrderViewModel({
    required this.status,
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory OrderViewModel.fromJson(Map<String, dynamic> json) => OrderViewModel(
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
  Order order;
  List<dynamic> offers;
  List<dynamic> giftCards;
  OduPayBalanceOffers oduPayBalanceOffers;
  dynamic cashBack;

  Data({
    required this.order,
    required this.offers,
    required this.giftCards,
    required this.oduPayBalanceOffers,
    required this.cashBack,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    order: Order.fromJson(json["order"]),
    offers: List<dynamic>.from(json["offers"].map((x) => x)),
    giftCards: List<dynamic>.from(json["giftCards"].map((x) => x)),
    oduPayBalanceOffers: OduPayBalanceOffers.fromJson(json["oduPayBalanceOffers"]),
    cashBack: json["cashBack"],
  );

  Map<String, dynamic> toJson() => {
    "order": order.toJson(),
    "offers": List<dynamic>.from(offers.map((x) => x)),
    "giftCards": List<dynamic>.from(giftCards.map((x) => x)),
    "oduPayBalanceOffers": oduPayBalanceOffers.toJson(),
    "cashBack": cashBack,
  };
}

class OduPayBalanceOffers {
  dynamic discountFromBonusCardOnly;
  dynamic discountFromOduPayBalanceOnly;
  dynamic combinedDiscount;
  dynamic bonusCard;

  OduPayBalanceOffers({
    required this.discountFromBonusCardOnly,
    required this.discountFromOduPayBalanceOnly,
    required this.combinedDiscount,
    required this.bonusCard,
  });

  factory OduPayBalanceOffers.fromJson(Map<String, dynamic> json) => OduPayBalanceOffers(
    discountFromBonusCardOnly: json["discountFromBonusCardOnly"],
    discountFromOduPayBalanceOnly: json["discountFromOduPayBalanceOnly"],
    combinedDiscount: json["combinedDiscount"],
    bonusCard: json["bonusCard"],
  );

  Map<String, dynamic> toJson() => {
    "discountFromBonusCardOnly": discountFromBonusCardOnly,
    "discountFromOduPayBalanceOnly": discountFromOduPayBalanceOnly,
    "combinedDiscount": combinedDiscount,
    "bonusCard": bonusCard,
  };
}

class Order {
  String id;
  Club club;
  int billAmount;
  String notes;
  bool isPaymentCancelled;
  bool isPaymentCompleted;
  bool isUpiTxn;
  String upiId;
  DateTime expiry;
  DateTime createdAt;
  String paymentStatus;

  Order({
    required this.id,
    required this.club,
    required this.billAmount,
    required this.notes,
    required this.isPaymentCancelled,
    required this.isPaymentCompleted,
    required this.isUpiTxn,
    required this.upiId,
    required this.expiry,
    required this.createdAt,
    required this.paymentStatus,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["_id"],
    club: Club.fromJson(json["club"]),
    billAmount: json["billAmount"],
    notes: json["notes"],
    isPaymentCancelled: json["isPaymentCancelled"],
    isPaymentCompleted: json["isPaymentCompleted"],
    isUpiTxn: json["isUPITxn"],
    upiId: json["upiId"],
    expiry: DateTime.parse(json["expiry"]),
    createdAt: DateTime.parse(json["createdAt"]),
    paymentStatus: json["paymentStatus"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "club": club.toJson(),
    "billAmount": billAmount,
    "notes": notes,
    "isPaymentCancelled": isPaymentCancelled,
    "isPaymentCompleted": isPaymentCompleted,
    "isUPITxn": isUpiTxn,
    "upiId": upiId,
    "expiry": expiry.toIso8601String(),
    "createdAt": createdAt.toIso8601String(),
    "paymentStatus": paymentStatus,
  };
}

class Club {
  String id;
  String name;
  bool isPosEnabled;
  Location location;

  Club({
    required this.id,
    required this.name,
    required this.isPosEnabled,
    required this.location,
  });

  factory Club.fromJson(Map<String, dynamic> json) => Club(
    id: json["_id"],
    name: json["name"],
    isPosEnabled: json["isPOSEnabled"],
    location: Location.fromJson(json["location"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "isPOSEnabled": isPosEnabled,
    "location": location.toJson(),
  };
}

class Location {
  String type;
  List<double> coordinates;
  String id;

  Location({
    required this.type,
    required this.coordinates,
    required this.id,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    type: json["type"],
    coordinates: List<double>.from(json["coordinates"].map((x) => x?.toDouble())),
    id: json["_id"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
    "_id": id,
  };
}
