class Offer {
  String? Creator;
  String? uidMadeOffer;
  String? ProductIDOriginal;
  String? OfferedID;


  Offer({this.Creator, this.ProductIDOriginal, this.uidMadeOffer,this.OfferedID});

  Map<String, dynamic> toJson() => {
        'Product Creator': Creator,
        'Product ID': ProductIDOriginal,
        'Made Offer': uidMadeOffer,
        'Traded With': OfferedID
      };
}
