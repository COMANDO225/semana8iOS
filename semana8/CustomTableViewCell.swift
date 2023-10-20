//
//  CustomTableViewCell.swift
//  semana8
//
//  Created by Anderson Almeyda on 20/10/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var img_View: UIImageView!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
