//
//  FeedCell.swift
//  InstagramApp
//
//  Created by Улитина Анастасия Сергеевна on 18.01.2021.
//

import UIKit

class FeedCell: UICollectionViewCell {

	// MARK: - Constants

	enum Constants {
//		case profileImageViewHeight(Int) = 40
//		case profileImageViewWidth(Int) = 40
	}

	// MARK: - Views

	// MARK: - Properties

	// MARK: - Private properties

	private let profileImageView: UIImageView = {
		let iv = UIImageView()
		iv.contentMode = .scaleAspectFill
		iv.clipsToBounds = true
		iv.isUserInteractionEnabled = true
		iv.image = #imageLiteral(resourceName: "venom-7")
		return iv
	}()

	// MARK: - Initialization

	override init(frame: CGRect) {
		super.init(frame: frame)

		backgroundColor = .white
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Lifecycle

	// MARK: - Functions

	func profileImageViewConfig() {
		addSubview(profileImageView)
		profileImageView.anchor(top: topAnchor, left: leftAnchor, paddingTop: 12, paddingLeft: 12)
		profileImageView.setDimensions(height: 40, width: 40)
		profileImageView.layer.cornerRadius = 40 / 2
	}

	// MARK: - Private functions


}
