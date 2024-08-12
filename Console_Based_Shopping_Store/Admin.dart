import 'Buyer.dart';
import 'Seller.dart';
import 'Product.dart';
import 'dart:io';

class Admin{

    List <Buyer> buyerList = [];

    List <Seller> sellerList = [];

    List <Product> productList = [];

    Admin( List <Buyer> buyerList, List <Seller> sellerList, List <Product> productList){
        this.buyerList = buyerList;
        this.productList = productList;
        this.sellerList = sellerList;
    }

    //CRUD operations on Buyers

    void addBuyer(){

        stdout.writeln('Enter name of the user: ');
        var name = stdin.readLineSync();
        stdout.writeln('Enter role of the user: ');
        var role = stdin.readLineSync();
        stdout.writeln('Enter age of the user: ');
        var age = stdin.readLineSync();
        stdout.writeln('Enter buyerId of the user: ');
        var buyerId = stdin.readLineSync();
                if(name != null && role != null && age != null && buyerId != null){
                int newage = int.parse(age);
                int newbuyerId = int.parse(buyerId);
                buyerList.add(Buyer(name.toString(), role.toString(), newage, newbuyerId));
                }

    }

    void viewBuyers(){
        for (int x = 0; x<buyerList.length; x++) {
        String age = buyerList[x].age.toString();
        String buyerId = buyerList[x].buyerId.toString();
          if(buyerList[x].name != null && buyerList[x].role != null && age != null && buyerId != null){
            print('${buyerList[x].name} ${buyerList[x].role} $age $buyerId\n');
          }
    }
    }

    void updateBuyer(){
        stdout.writeln('Enter buyerId of the user to be updated: ');
        var buyerId = stdin.readLineSync();
        if(buyerId != null){
        int newbuyerId = int.parse(buyerId);
        for (int x = 0; x<buyerList.length; x++) {
            if(buyerList[x].buyerId == newbuyerId){
                stdout.writeln('Enter name of the user: ');
                var name = stdin.readLineSync();
                stdout.writeln('Enter role of the user: ');
                var role = stdin.readLineSync();
                stdout.writeln('Enter age of the user: ');
                var age = stdin.readLineSync();
                stdout.writeln('Enter buyerId of the user: ');
                var buyerId = stdin.readLineSync();
                        if(name != null && role != null && age != null && buyerId != null){
                        int newage = int.parse(age);
                        int newbuyerId = int.parse(buyerId);
                        buyerList[x].name = name.toString();
                        buyerList[x].role = role.toString();
                        buyerList[x].age = newage;
                        buyerList[x].buyerId = newbuyerId;
                        }
                break;
            }
    }
    }
    }

    void deleteBuyer(){
        stdout.writeln('Enter buyerId of the user to be deleted: ');
        var buyerId = stdin.readLineSync();
        if(buyerId != null){ 
            int newbuyerId = int.parse(buyerId);
            for (int x = 0; x<buyerList.length; x++) {
            if(buyerList[x].buyerId == newbuyerId){
                buyerList.removeAt(x);
                break;
            }
    }
    }
    }

    //CRUD operations on Sellers

    void addSeller(){
        stdout.writeln('Enter name of the user: ');
        var name = stdin.readLineSync();
        stdout.writeln('Enter role of the user: ');
        var role = stdin.readLineSync();
        stdout.writeln('Enter age of the user: ');
        var age = stdin.readLineSync();
        stdout.writeln('Enter sellerId of the user: ');
        var sellerId = stdin.readLineSync();
                if(name != null && role != null && age != null && sellerId != null){
                int newage = int.parse(age);
                int newsellerId = int.parse(sellerId);
                sellerList.add(Seller(name.toString(), role.toString(), newage, newsellerId));
                }

    }

    void viewSellers(){
        for (int x = 0; x<sellerList.length; x++) {
        String age = sellerList[x].age.toString();
        String sellerId = sellerList[x].sellerId.toString();
          if(sellerList[x].name != null && sellerList[x].role != null && age != null && sellerId != null){
            print('${sellerList[x].name} ${sellerList[x].role} $age $sellerId\n');
          }
    }
    }

    void updateSeller(){
        stdout.writeln('Enter sellerId of the user to be updated: ');
        var sellerId = stdin.readLineSync();
        if( sellerId != null){
        int newsellerId = int.parse(sellerId);
        for (int x = 0; x<sellerList.length; x++) {
            if(sellerList[x].sellerId == newsellerId){
                stdout.writeln('Enter name of the user: ');
                var name = stdin.readLineSync();
                stdout.writeln('Enter role of the user: ');
                var role = stdin.readLineSync();
                stdout.writeln('Enter age of the user: ');
                var age = stdin.readLineSync();
                stdout.writeln('Enter sellerId of the user: ');
                var sellerId = stdin.readLineSync();
                        if(name != null && role != null && age != null && sellerId != null){
                        int newage = int.parse(age);
                        int newsellerId = int.parse(sellerId);
                        sellerList[x].name = name.toString();
                        sellerList[x].role = role.toString();
                        sellerList[x].age = newage;
                        sellerList[x].sellerId = newsellerId;
                        }
                break;
            }
    }
    }
    }

    void deleteSeller(){
        stdout.writeln('Enter sellerId of the user to be deleted: ');
        var sellerId = stdin.readLineSync();
        if(sellerId != null){ 
            int newsellerId = int.parse(sellerId);
            for (int x = 0; x<sellerList.length; x++) {
            if(sellerList[x].sellerId == newsellerId){
                sellerList.removeAt(x);
                break;
            }
    }
    }
    }

    //CRUD operations on Products

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