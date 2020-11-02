//
//  BalanceTableViewCell.swift
//  Multisig
//
//  Created by Dmitry Bespalov on 22.10.20.
//  Copyright © 2020 Gnosis Ltd. All rights reserved.
//

import UIKit
import Kingfisher

class BalanceTableViewCell: UITableViewCell {

    @IBOutlet weak var cellMainLabel: UILabel!
    @IBOutlet weak var cellDetailLabel: UILabel!
    @IBOutlet weak var cellSubDetailLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        cellMainLabel.setStyle(.body)
        cellDetailLabel.setStyle(.body)
        cellSubDetailLabel.setStyle(.footnote2)
    }

    func setMainText(_ value: String) {
        cellMainLabel.text = value
    }

    func setDetailText(_ value: String) {
        cellDetailLabel.text = value
    }

    func setSubDetailText(_ value: String) {
        cellSubDetailLabel.text = value
    }

    func setImage(with url: URL?, placeholder: UIImage) {
        if let url = url {
            cellImageView.kf.setImage(with: url, placeholder: placeholder)
        } else {
            cellImageView.image = placeholder
        }
    }
}