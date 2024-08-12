import 'Admin.dart';
import 'User.dart';
import 'Product.dart';
import 'Buyer.dart';
import 'Seller.dart';
import 'dart:io';

void main(){
   
    List <Buyer> buyerList = [];
    List <Seller> sellerList = [];
    List <Product> productList = [];

    Admin admin = Admin(buyerList, sellerList, productList);
    Buyer buyer = Buyer.productList(productList);
    Seller seller = Seller.productList(productList);
    User user = User.productList(productList);
    String choosePre = 'Y';
    do{
    print("1. Admin\n2. Seller\n3. Buyer");
    stdout.writeln('Enter your mode(1 - 3): ');
    var oldchoice = stdin.readLineSync();
    if (oldchoice!=null){
    int choice = int.parse(oldchoice);
    if(choice == 1){
    print("1. Manage Buyers\n2. Manage Sellers\n3. Manage Products");
    stdout.writeln('Enter your mode(1 - 3): ');
    var oldchoice = stdin.readLineSync();
    if (oldchoice!=null){
    int choice = int.parse(oldchoice); 
    if(choice == 1){
    print("1. Add a Buyer\n2. Update a Buyer\n3. Delete a Buyer\n4. View Buyers");
    stdout.writeln('Enter your mode(1 - 4): ');
    var oldOption = stdin.readLineSync();
    if (oldOption!=null){
    int option = int.parse(oldOption);
    if(option == 1){  
    admin.addBuyer();
    }
    else if(option == 2){  
    admin.updateBuyer();
    }
    else if(option == 3){ 
    admin.deleteBuyer();
    }
    else if(option == 4){ 
    admin.viewBuyers();
    }
    }
    }
    else if(choice == 2){
    print("1. Add a Seller\n2. Update a Seller\n3. Delete a Seller\n4. View Sellers");
    stdout.writeln('Enter your mode(1 - 4): ');
    var oldOption = stdin.readLineSync();
    if (oldOption!=null){
    int option = int.parse(oldOption);
    if(option == 1){  
    admin.addSeller();
    }
    else if(option == 2){  
    admin.updateSeller();
    }
    else if(option == 3){
    admin.deleteSeller();
    }
    else if(option == 4){  
    admin.viewSellers();
    }
    }
    }
    else if(choice == 3){
    print("1. Add a Product\n2. Update a Product\n3. Delete a Product\n4. View Products");
    stdout.writeln('Enter your mode(1 - 4): ');
    var oldOption = stdin.readLineSync();
    if (oldOption!=null){
    int option = int.parse(oldOption);
    if(option == 1){  
        seller.addProduct();
        }
    else if(option == 2){
        seller.updateProduct();
    }
    else if(option == 3){
        seller.deleteProduct();
    }
    else if(option == 4){
        user.viewProducts();
    }
    }
    }
    }
    }
    else if(choice == 2){
    print("1. Add a Product\n2. Update a Product\n3. Delete a Product\n4. View Products");
    stdout.writeln('Enter your mode(1 - 4): ');
    var oldOption = stdin.readLineSync();
    if (oldOption!=null){
    int option = int.parse(oldOption);
    if(option == 1){  
        seller.addProduct();
        }
    else if(option == 2){
        seller.updateProduct();
    }
    else if(option == 3){
        seller.deleteProduct();
    }
    else if(option == 4){
        user.viewProducts();
    }
    }
    }
    else if(choice == 3){
    print("1. View Products\n2. Purchase a Product");
    stdout.writeln('Enter your mode(1 - 2): ');
    var oldOption = stdin.readLineSync();
    if (oldOption!=null){
    int option  = int.parse(oldOption);
    if(option == 1){  
        user.viewProducts();
    }
    else if(option == 2){
        buyer.purchaseProduct();
    }
    }
    }
    }
    stdout.writeln('Do you want to go back to main menu? (Y/N)');
    var choose = stdin.readLineSync();
    choosePre = choose.toString();
    }while(choosePre == 'Y' || choosePre == 'y');
}