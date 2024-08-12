import 'User.dart';
import 'Product.dart';
import 'dart:io';

class Buyer extends User{
    
    int? buyerId;

    Buyer( String name, String role, int age, this.buyerId): super(name, role, age);

    Buyer.productList(List <Product> productList) : super.productList(productList);

    void purchaseProduct(){
        stdout.writeln('Enter productId of the product to be purchased: ');
        var productId = stdin.readLineSync();
        if( productId != null){
        int newproductId = int.parse(productId);
        for (int x = 0; x<productList.length; x++) {
            if(productList[x].productId == newproductId){
                            if(productList[x].status!= null){
                            productList[x].status = "Sold";
                            }
                break;
            }
    }
    }
    }
}