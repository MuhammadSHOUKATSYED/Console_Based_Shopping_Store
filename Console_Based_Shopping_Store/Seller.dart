import 'User.dart';
import 'Product.dart';
import 'dart:io';

class Seller extends User{

    int? sellerId;

    Seller(String name, String role, int age, this.sellerId): super(name, role, age);

    Seller.productList(List <Product> productList) : super.productList(productList);


    void addProduct(){
        stdout.writeln('Enter name of the product: ');
        var name = stdin.readLineSync();
        stdout.writeln('Enter Id of the product: ');
        var productId = stdin.readLineSync();
        stdout.writeln('Enter category of the product: ');
        var category = stdin.readLineSync();
        stdout.writeln('Enter description of the product: ');
        var description = stdin.readLineSync();
        stdout.writeln('Enter price of the product: ');
        var price = stdin.readLineSync();
        stdout.writeln('Enter sellerId of the product: ');
        var sellerId = stdin.readLineSync();
        stdout.writeln('Enter status of the product: ');
        var status = stdin.readLineSync();
                if(name != null && productId != null && category != null && description!= null && price!= null &&  sellerId != null && status!= null){
                int newproductId = int.parse(productId);
                int newPrice = int.parse(price);
                int newsellerId = int.parse(sellerId);
                productList.add(Product(name.toString(), newproductId, category.toString(), description.toString(), newPrice, newsellerId, status.toString()));
                }

    }

    void updateProduct(){
        stdout.writeln('Enter productId of the product to be updated: ');
        var productId = stdin.readLineSync();
        if( productId != null){
        int newproductId = int.parse(productId);
        for (int x = 0; x<productList.length; x++) {
            if(productList[x].productId == newproductId){
                    stdout.writeln('Enter name of the product: ');
                    var name = stdin.readLineSync();
                    stdout.writeln('Enter Id of the product: ');
                    var productId = stdin.readLineSync();
                    stdout.writeln('Enter category of the product: ');
                    var category = stdin.readLineSync();
                    stdout.writeln('Enter description of the product: ');
                    var description = stdin.readLineSync();
                    stdout.writeln('Enter price of the product: ');
                    var price = stdin.readLineSync();
                    stdout.writeln('Enter sellerId of the product: ');
                    var sellerId = stdin.readLineSync();
                    stdout.writeln('Enter status of the product: ');
                    var status = stdin.readLineSync();
                            if(name != null && productId != null && category != null && description!= null && price!= null &&  sellerId != null && status!= null){
                            int newproductId = int.parse(productId);
                            int newPrice = int.parse(price);
                            int newsellerId = int.parse(sellerId);
                            productList[x].name = name.toString();
                            productList[x].productId = newproductId;
                            productList[x].category = category.toString();
                            productList[x].description = description.toString();
                            productList[x].price = newPrice;
                            productList[x].sellerId = newsellerId;
                            productList[x].status = status.toString();
                            }
                break;
            }
    }
    }
    }

    void deleteProduct(){
        stdout.writeln('Enter productId of the user to be deleted: ');
        var productId = stdin.readLineSync();
        if(productId != null){ 
            int newproductId = int.parse(productId);
            for (int x = 0; x<productList.length; x++) {
            if(productList[x].productId == newproductId){
                productList.removeAt(x);
                break;
            }
    }
    }
    }

}