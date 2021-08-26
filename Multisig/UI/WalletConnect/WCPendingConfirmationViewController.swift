//
//  WCPendingConfirmationViewController.swift
//  Multisig
//
//  Created by Andrey Scherbovich on 26.04.21.
//  Copyright © 2021 Gnosis Ltd. All rights reserved.
//

import UIKit

class WCPendingConfirmationViewController: UIViewController {
    @IBOutlet private weak var topView: UIView!
    @IBOutlet private weak var bottomView: UIView!
    @IBOutlet private weak var headerLabel: UILabel!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var cancelButton: UIButton!

    var headerText = "Pending Confirmation"

    @IBAction private func cancel(_ sender: Any) {
        close()
    }

    convenience init(headerText: String? = nil) {
        self.init(nibName: nil, bundle: nil)
        if let headerText = headerText {
            self.headerText = headerText
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        topView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(close)))

        // round top corners
        bottomView.layer.cornerRadius = 8
        bottomView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]

        headerLabel.text = headerText
        headerLabel.setStyle(.headline)
        activityIndicator.startAnimating()
        descriptionLabel.setStyle(.callout)
        cancelButton.setText("Cancel", .filledError)

        modalTransitionStyle = .crossDissolve
    }

    @objc private func close() {
        dismiss(animated: true, completion: nil)
    }
}
