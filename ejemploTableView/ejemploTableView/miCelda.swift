//
//  miCelda.swift
//  ejemploTableView
//
//  Created by  on 29/11/16.
//  Copyright © 2016 Iñaki. All rights reserved.
//

import UIKit

class miCelda: UITableViewCell {

    @IBOutlet weak var etiqueta: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
