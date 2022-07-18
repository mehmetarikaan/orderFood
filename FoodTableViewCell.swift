//
//  FoodTableViewCell.swift
//  Order Food
//
//  Created by Mehmet Arıkan on 18.07.2022.
//

import UIKit

protocol FoodTableViewCellProtocol{
    func toOrder(indexPath: IndexPath)
}

class FoodTableViewCell: UITableViewCell {


    @IBOutlet weak var foodPhotoImageView: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodPriceLabel: UILabel!
    
    var hucreProtocol: FoodTableViewCellProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func orderButton(_ sender: Any) {
        
        hucreProtocol?.toOrder(indexPath: indexPath!)
    }
}
