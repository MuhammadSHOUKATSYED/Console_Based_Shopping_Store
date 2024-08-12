import 'Product.dart';

class User{

    String? name;
    String? role;
    int? age;

    List<Product> productList = [];

    User(this.name, this.role, this.age){
    }

    User.productList(List<Product> productList){
        this.productList = productList;
    }
    void viewProducts(){
       for (int x = 0; x<productList.length; x++) {
                String newproductId = productList[x].productId.toString();
                String newPrice =  productList[x].price.toString();
                String newsellerId =  productList[x].sellerId.toString();
          if(productList[x].name != null && newproductId != null &&  productList[x].category != null &&  productList[x].description!= null && newPrice!= null &&  newsellerId != null &&  productList[x].status!= null){
            print('${productList[x].name} ${newproductId} ${productList[x].category} ${productList[x].description} ${newPrice!} ${newsellerId} ${productList[x].status}\n');
          }
    }
    }
   
}