//
//  ViewController.swift
//  Order Food
//
//  Created by Mehmet Arıkan on 18.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foodsTableView: UITableView!
    
    
    var foodList = [Foods]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        foodsTableView.dataSource = self
        foodsTableView.delegate = self
        
        // nesneler oluşturuldu
        let y1 = Foods(foodId: 1, foodName: "Ayran", foodPhotoName: "ayran", foodPrice: 2.15)
        let y2 = Foods(foodId: 2, foodName: "Baklava", foodPhotoName: "baklava", foodPrice: 2.15)
        let y3 = Foods(foodId: 3, foodName: "Fanta", foodPhotoName: "fanta", foodPrice: 2.15)
        let y4 = Foods(foodId: 4, foodName: "Izgara Somon", foodPhotoName: "izgarasomon", foodPrice: 2.15)
        let y5 = Foods(foodId: 5, foodName: "Izgara Tavuk", foodPhotoName: "izgaratavuk", foodPrice: 2.15)
        let y6 = Foods(foodId: 6, foodName: "Kadayıf", foodPhotoName: "kadayif", foodPrice: 2.15)
        let y7 = Foods(foodId: 7, foodName: "Kahve", foodPhotoName: "kahve", foodPrice: 2.15)
        let y8 = Foods(foodId: 8, foodName: "Köfte", foodPhotoName: "kofte", foodPrice: 2.15)
        let y9 = Foods(foodId: 9, foodName: "Lazanya", foodPhotoName: "lazanya", foodPrice: 2.15)
        let y10 = Foods(foodId: 10, foodName: "Makarna", foodPhotoName: "makarna", foodPrice: 2.15)
        
        // nesneler listeye eklendi
        
        foodList.append(y1)
        foodList.append(y2)
        foodList.append(y3)
        foodList.append(y4)
        foodList.append(y5)
        foodList.append(y6)
        foodList.append(y7)
        foodList.append(y8)
        foodList.append(y9)
        foodList.append(y10)
        
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource, FoodTableViewCellProtocol {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let getFoods = foodList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre", for: indexPath) as! FoodTableViewCell
        
        cell.foodNameLabel.text = getFoods.foodName
        cell.foodPriceLabel.text = "\(getFoods.foodPrice!) TL"
        cell.foodPhotoImageView.image = UIImage(named: getFoods.foodPhotoName!)
        
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func toOrder(indexPath: IndexPath) {
        let getFoods = foodList[indexPath.row]
        print("\(getFoods.foodName!) sipariş verildi.")
    }
    
    
}
