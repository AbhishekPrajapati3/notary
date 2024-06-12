/// status : 1
/// leads : [{"customerRates":{"others":[]},"imageURL":"https://firebasestorage.googleapis.com/v0/b/the-notary-app.appspot.com/o/user.png?alt=media&token=a52198aa-5fdc-4a1c-8b22-7824fda01250","labels":[],"createdAt":"2024-06-11T21:39:55.911Z","invoiceAddress":null,"totalAppts":0,"completedAppts":0,"totalInvoice":0,"invoiceCollectedThisMonth":0,"invoiceCollectedSoFar":0,"invoiceDueCount":0,"_id":"6668cb2e6fd13f0012cf4699","notaryId":"6668baaed6a4670012a6e406","firstName":"Nandha Kumar","email":"nandhakr1411@gmail.com","phoneNumber":1231231231,"type":"signer","notes":[],"knownContacts":[],"__v":0},{"customerRates":{"others":[]},"imageURL":"https://firebasestorage.googleapis.com/v0/b/the-notary-app.appspot.com/o/user.png?alt=media&token=a52198aa-5fdc-4a1c-8b22-7824fda01250","labels":[],"createdAt":"2024-06-11T21:39:55.911Z","invoiceAddress":null,"totalAppts":0,"completedAppts":0,"totalInvoice":0,"invoiceCollectedThisMonth":0,"invoiceCollectedSoFar":0,"invoiceDueCount":0,"_id":"6668cb2f6fd13f0012cf469e","notaryId":"6668baaed6a4670012a6e406","firstName":"Mary Macilvain","email":"mary@thenotary.app","phoneNumber":7022141411,"type":"customer","companyId":{"invoiceAddress":null,"photoURL":"https://firebasestorage.googleapis.com/v0/b/the-notary-app.appspot.com/o/office.png?alt=media&token=52e40d45-32a7-4239-909d-1a2ddbcdc67a","notes":[],"orderEmailAddress":[],"invoiceCollectedThisMonth":0,"invoiceCollectedSoFar":0,"invoiceDueCount":0,"contacts":["6668cb2f6fd13f0012cf469e"],"defaultInvoiceAmount":0,"totalAppts":0,"completedAppts":0,"totalInvoice":0,"createdAt":"2024-06-11T21:39:55.905Z","_id":"6668cb2f6fd13f0012cf469c","userId":"6668baaed6a4670012a6e406","name":"Booksapp","email":"mary@thenotary.app","phoneNumber":7022141411,"knownContacts":[],"__v":0},"companyName":"Booksapp","notes":[],"knownContacts":[],"__v":0}]
/// leadCount : 2
/// pageCount : 1

class NotaryModel {
  NotaryModel({
      num? status, 
      List<Leads>? leads, 
      num? leadCount, 
      num? pageCount,}){
    _status = status;
    _leads = leads;
    _leadCount = leadCount;
    _pageCount = pageCount;
}

  NotaryModel.fromJson(dynamic json) {
    _status = json['status'];
    if (json['leads'] != null) {
      _leads = [];
      json['leads'].forEach((v) {
        _leads?.add(Leads.fromJson(v));
      });
    }
    _leadCount = json['leadCount'];
    _pageCount = json['pageCount'];
  }
  num? _status;
  List<Leads>? _leads;
  num? _leadCount;
  num? _pageCount;
NotaryModel copyWith({  num? status,
  List<Leads>? leads,
  num? leadCount,
  num? pageCount,
}) => NotaryModel(  status: status ?? _status,
  leads: leads ?? _leads,
  leadCount: leadCount ?? _leadCount,
  pageCount: pageCount ?? _pageCount,
);
  num? get status => _status;
  List<Leads>? get leads => _leads;
  num? get leadCount => _leadCount;
  num? get pageCount => _pageCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_leads != null) {
      map['leads'] = _leads?.map((v) => v.toJson()).toList();
    }
    map['leadCount'] = _leadCount;
    map['pageCount'] = _pageCount;
    return map;
  }

}

/// customerRates : {"others":[]}
/// imageURL : "https://firebasestorage.googleapis.com/v0/b/the-notary-app.appspot.com/o/user.png?alt=media&token=a52198aa-5fdc-4a1c-8b22-7824fda01250"
/// labels : []
/// createdAt : "2024-06-11T21:39:55.911Z"
/// invoiceAddress : null
/// totalAppts : 0
/// completedAppts : 0
/// totalInvoice : 0
/// invoiceCollectedThisMonth : 0
/// invoiceCollectedSoFar : 0
/// invoiceDueCount : 0
/// _id : "6668cb2e6fd13f0012cf4699"
/// notaryId : "6668baaed6a4670012a6e406"
/// firstName : "Nandha Kumar"
/// email : "nandhakr1411@gmail.com"
/// phoneNumber : 1231231231
/// type : "signer"
/// notes : []
/// knownContacts : []
/// __v : 0

class Leads {
  Leads({
      CustomerRates? customerRates, 
      String? imageURL, 
      List<dynamic>? labels, 
      String? createdAt, 
      dynamic invoiceAddress, 
      num? totalAppts, 
      num? completedAppts, 
      num? totalInvoice, 
      num? invoiceCollectedThisMonth, 
      num? invoiceCollectedSoFar, 
      num? invoiceDueCount, 
      String? id, 
      String? notaryId, 
      String? firstName, 
      String? email, 
      num? phoneNumber, 
      String? type, 
      List<dynamic>? notes, 
      List<dynamic>? knownContacts, 
      num? v,}){
    _customerRates = customerRates;
    _imageURL = imageURL;
    _labels = labels;
    _createdAt = createdAt;
    _invoiceAddress = invoiceAddress;
    _totalAppts = totalAppts;
    _completedAppts = completedAppts;
    _totalInvoice = totalInvoice;
    _invoiceCollectedThisMonth = invoiceCollectedThisMonth;
    _invoiceCollectedSoFar = invoiceCollectedSoFar;
    _invoiceDueCount = invoiceDueCount;
    _id = id;
    _notaryId = notaryId;
    _firstName = firstName;
    _email = email;
    _phoneNumber = phoneNumber;
    _type = type;
    _notes = notes;
    _knownContacts = knownContacts;
    _v = v;
}

  Leads.fromJson(dynamic json) {
    _customerRates = json['customerRates'] != null ? CustomerRates.fromJson(json['customerRates']) : null;
    _imageURL = json['imageURL'];
    if (json['labels'] != null) {
      _labels = [];
      json['labels'].forEach((v) {
        _labels?.add(v.fromJson());
      });
    }
    _createdAt = json['createdAt'];
    _invoiceAddress = json['invoiceAddress'];
    _totalAppts = json['totalAppts'];
    _completedAppts = json['completedAppts'];
    _totalInvoice = json['totalInvoice'];
    _invoiceCollectedThisMonth = json['invoiceCollectedThisMonth'];
    _invoiceCollectedSoFar = json['invoiceCollectedSoFar'];
    _invoiceDueCount = json['invoiceDueCount'];
    _id = json['_id'];
    _notaryId = json['notaryId'];
    _firstName = json['firstName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _type = json['type'];
    if (json['notes'] != null) {
      _notes = [];
      json['notes'].forEach((v) {
        _notes?.add(v.fromJson());
      });
    }
    if (json['knownContacts'] != null) {
      _knownContacts = [];
      json['knownContacts'].forEach((v) {
        _knownContacts?.add(v.fromJson());
      });
    }
    _v = json['__v'];
  }
  CustomerRates? _customerRates;
  String? _imageURL;
  List<dynamic>? _labels;
  String? _createdAt;
  dynamic _invoiceAddress;
  num? _totalAppts;
  num? _completedAppts;
  num? _totalInvoice;
  num? _invoiceCollectedThisMonth;
  num? _invoiceCollectedSoFar;
  num? _invoiceDueCount;
  String? _id;
  String? _notaryId;
  String? _firstName;
  String? _email;
  num? _phoneNumber;
  String? _type;
  List<dynamic>? _notes;
  List<dynamic>? _knownContacts;
  num? _v;
Leads copyWith({  CustomerRates? customerRates,
  String? imageURL,
  List<dynamic>? labels,
  String? createdAt,
  dynamic invoiceAddress,
  num? totalAppts,
  num? completedAppts,
  num? totalInvoice,
  num? invoiceCollectedThisMonth,
  num? invoiceCollectedSoFar,
  num? invoiceDueCount,
  String? id,
  String? notaryId,
  String? firstName,
  String? email,
  num? phoneNumber,
  String? type,
  List<dynamic>? notes,
  List<dynamic>? knownContacts,
  num? v,
}) => Leads(  customerRates: customerRates ?? _customerRates,
  imageURL: imageURL ?? _imageURL,
  labels: labels ?? _labels,
  createdAt: createdAt ?? _createdAt,
  invoiceAddress: invoiceAddress ?? _invoiceAddress,
  totalAppts: totalAppts ?? _totalAppts,
  completedAppts: completedAppts ?? _completedAppts,
  totalInvoice: totalInvoice ?? _totalInvoice,
  invoiceCollectedThisMonth: invoiceCollectedThisMonth ?? _invoiceCollectedThisMonth,
  invoiceCollectedSoFar: invoiceCollectedSoFar ?? _invoiceCollectedSoFar,
  invoiceDueCount: invoiceDueCount ?? _invoiceDueCount,
  id: id ?? _id,
  notaryId: notaryId ?? _notaryId,
  firstName: firstName ?? _firstName,
  email: email ?? _email,
  phoneNumber: phoneNumber ?? _phoneNumber,
  type: type ?? _type,
  notes: notes ?? _notes,
  knownContacts: knownContacts ?? _knownContacts,
  v: v ?? _v,
);
  CustomerRates? get customerRates => _customerRates;
  String? get imageURL => _imageURL;
  List<dynamic>? get labels => _labels;
  String? get createdAt => _createdAt;
  dynamic get invoiceAddress => _invoiceAddress;
  num? get totalAppts => _totalAppts;
  num? get completedAppts => _completedAppts;
  num? get totalInvoice => _totalInvoice;
  num? get invoiceCollectedThisMonth => _invoiceCollectedThisMonth;
  num? get invoiceCollectedSoFar => _invoiceCollectedSoFar;
  num? get invoiceDueCount => _invoiceDueCount;
  String? get id => _id;
  String? get notaryId => _notaryId;
  String? get firstName => _firstName;
  String? get email => _email;
  num? get phoneNumber => _phoneNumber;
  String? get type => _type;
  List<dynamic>? get notes => _notes;
  List<dynamic>? get knownContacts => _knownContacts;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_customerRates != null) {
      map['customerRates'] = _customerRates?.toJson();
    }
    map['imageURL'] = _imageURL;
    if (_labels != null) {
      map['labels'] = _labels?.map((v) => v.toJson()).toList();
    }
    map['createdAt'] = _createdAt;
    map['invoiceAddress'] = _invoiceAddress;
    map['totalAppts'] = _totalAppts;
    map['completedAppts'] = _completedAppts;
    map['totalInvoice'] = _totalInvoice;
    map['invoiceCollectedThisMonth'] = _invoiceCollectedThisMonth;
    map['invoiceCollectedSoFar'] = _invoiceCollectedSoFar;
    map['invoiceDueCount'] = _invoiceDueCount;
    map['_id'] = _id;
    map['notaryId'] = _notaryId;
    map['firstName'] = _firstName;
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    map['type'] = _type;
    if (_notes != null) {
      map['notes'] = _notes?.map((v) => v.toJson()).toList();
    }
    if (_knownContacts != null) {
      map['knownContacts'] = _knownContacts?.map((v) => v.toJson()).toList();
    }
    map['__v'] = _v;
    return map;
  }

}

/// others : []

class CustomerRates {
  CustomerRates({
      List<dynamic>? others,}){
    _others = others;
}

  CustomerRates.fromJson(dynamic json) {
    if (json['others'] != null) {
      _others = [];
      json['others'].forEach((v) {
        _others?.add(v.fromJson());
      });
    }
  }
  List<dynamic>? _others;
CustomerRates copyWith({  List<dynamic>? others,
}) => CustomerRates(  others: others ?? _others,
);
  List<dynamic>? get others => _others;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_others != null) {
      map['others'] = _others?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}