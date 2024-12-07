class ContentModel {
  String? client;
  String? date;
  String? caption;
  String? space;
  String? position;
  String? rate;
  String? material;
  String? payment;
  String? instruction;
  String? roNumber;
  String? code;

  ContentModel(
      {this.client,
      this.date,
      this.caption,
      this.space,
      this.position,
      this.rate,
      this.material,
      this.payment,
      this.instruction,
      this.roNumber,
      this.code});

  ContentModel.fromJson(Map<String, dynamic> json) {
    client = json['client'];
    date = json['date'];
    caption = json['caption'];
    space = json['space'];
    position = json['position'];
    rate = json['rate'];
    material = json['material'];
    payment = json['payment'];
    instruction = json['instruction'];
    roNumber = json['ro_number'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['client'] = this.client;
    data['date'] = this.date;
    data['caption'] = this.caption;
    data['space'] = this.space;
    data['position'] = this.position;
    data['rate'] = this.rate;
    data['material'] = this.material;
    data['payment'] = this.payment;
    data['instruction'] = this.instruction;
    data['ro_number'] = this.roNumber;
    data['code'] = this.code;
    return data;
  }
}
