//
//  FeedCell.swift
//  InstagramApp
//
//  Created by Улитина Анастасия Сергеевна on 18.01.2021.
//

import UIKit

class FeedCell: UICollectionViewCell {

	// MARK: - Constants

    private struct Constants {
        static let profileImageViewHeight = CGFloat(40)
        static let profileImageViewWidth = CGFloat(40)
        static let paddings = CGFloat(12)
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

    private lazy var userNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.black, for: .normal)
        button.setTitle("venom", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.addTarget(self, action: #selector(didTapUserName), for: .touchUpInside)
        return button
    }()

    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true
        iv.image = #imageLiteral(resourceName: "venom-7")
        return iv
    }()

    private lazy var likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "like_unselected"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(didTapUserName), for: .touchUpInside)
        return button
    }()

    private lazy var commentButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "comment"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(didTapUserName), for: .touchUpInside)
        return button
    }()

    private lazy var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "send2"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(didTapUserName), for: .touchUpInside)
        return button
    }()

    private let likesLabel: UILabel = {
        let label = UILabel()
        label.text = "1 like"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()

    private let captionLabel: UILabel = {
        let label = UILabel()
        label.text = "Some test caption for now"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()

    private let postTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "2 days ago"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()

	// MARK: - Initialization

	override init(frame: CGRect) {
		super.init(frame: frame)

		backgroundColor = .white
        profileImageViewConfig()
        userNameButtonConfig()

	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Lifecycle

	// MARK: - Functions

	// MARK: - Private functions

    private func profileImageViewConfig() {
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor,
                                left: leftAnchor,
                                paddingTop: Constants.paddings,
                                paddingLeft: Constants.paddings)
        profileImageView.setDimensions(height: Constants.profileImageViewHeight,
                                       width: Constants.profileImageViewWidth)
        profileImageView.layer.cornerRadius = Constants.profileImageViewHeight / 2
    }

    private func  userNameButtonConfig() {
        addSubview(userNameButton)
        userNameButton.centerY(inView: profileImageView,
                               leftAnchor: profileImageView.rightAnchor,
                               paddingLeft: 8)
    }

//    private func  userNameButtonConfig() {
//        addSubview(userNameButton)
//    }
//
//    private func  userNameButtonConfig() {
//        addSubview(userNameButton)
//    }
//
//    private func  userNameButtonConfig() {
//        addSubview(userNameButton)
//    }

    // MARK: - Actions

    @objc func didTapUserName() {
        print("so,me")
    }


}
