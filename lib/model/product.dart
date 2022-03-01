class Product{
  String imageUrl,name,full_name,id;
  double price;
  Product({
    required this.name,
    required this.full_name,
    required this.imageUrl,
    required this.price,
    required this.id,

  });
  checkId(String id){
    return id==this.id;
  }
}