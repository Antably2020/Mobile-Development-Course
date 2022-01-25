class Offer {
  String? Creator;
  String? uidMadeOffer;
  String? ProductID;

  Offer({this.Creator, this.ProductID, this.uidMadeOffer});

  Map<String, dynamic> toJson() => {
        'Product Creator': Creator,
        'Product ID': ProductID,
        'Made Offer': uidMadeOffer
      };
}
