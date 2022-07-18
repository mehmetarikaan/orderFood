//
//  Foods.swift
//  Order Food
//
//  Created by Mehmet Arıkan on 18.07.2022.
//

import Foundation

class Foods{
    
    var foodId: Int?
    var foodName: String?
    var foodPhotoName: String?
    var foodPrice: Double?
    
    init() {
        
    }
    
    init(foodId: Int,foodName: String,foodPhotoName: String,foodPrice: Double){
        
        self.foodId = foodId
        self.foodName = foodName
        self.foodPhotoName = foodPhotoName
        self.foodPrice = foodPrice
        
        
    }
    
}
