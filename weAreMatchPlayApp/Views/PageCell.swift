//
//  PageCell.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import UIKit

class PageCell: UICollectionViewCell {
    var firstButton = UIButton()
    var secondButton = UIButton()
    var thirdButton = UIButton()
    var fourthButton = UIButton()
    var colorView = UIView()
    var featuredImage = UIImageView()
    var detailsView = UIView()
    var title = UILabel()
    var date = UILabel()
    var pageDescription = UILabel()
    var commentView = UIView()
    var likeButton = UIButton()
    var commentButton = UIButton()
    var comment = UILabel()
    var likeButtonLabel = UILabel()
    var verificationBotton = UIButton()
    var verificationLabel = UILabel()
    var moreButton = UIButton()
    
//    var pages: Datum? {
    var pages: CollectionViewPageCells? {
        didSet {
            updateUI()
//            if let pages = pages {
//                title.text = pages.course?.name
//                date.text = pages.playedAt
//                comment.text = pages.datumDescription
//                likeButtonLabel.text = String(pages.commentCount ?? Int()) 
//                guard let url = URL(string: pages.images?[0].imageDefault ?? String()) else { return }
//                UIImage.loadFrom(url: url) { image in
//                    self.featuredImage.image = image
//                }
//                
//            }
        }
    }
    
    private func updateUI() {
        setupFirstButton()
        setupSecondButton()
        setupThirdButton()
        setupFourthButton()
        setupColorView()
        setupImage()
        setupDetailsView()
        setupTitle()
        setupDate()
        setupDescription()
        setupCommentView()
        setupLike()
        setupComment()
        setupVerifictaion()
        setupMoreButton()
    }
    
    func setupFirstButton() {
        addSubview(firstButton)
        firstButton.setTitle(CollectionViewPageContent.firstButton[1], for: .normal)
        firstButton.setTitleColor(.black, for: .normal)
        firstButton.titleLabel?.font = UIFont(name: "AvenirNext-bold", size: 25)
        firstButton.layer.maskedCorners = [.layerMinXMinYCorner]
        firstButton.backgroundColor = .systemBackground
        firstButton.layer.cornerRadius = 10
        firstButton.snp.makeConstraints { (make) in
            make.top.equalTo(contentView)
            make.left.equalTo(contentView).offset(16)
            make.width.equalTo(contentView).multipliedBy(0.46)
            make.height.equalTo(contentView).multipliedBy(0.05)
        }
    }
    
    func setupSecondButton() {
        addSubview(secondButton)
        secondButton.setTitle(CollectionViewPageContent.secondButton[1], for: .normal)
        secondButton.setTitleColor(.black, for: .normal)
        secondButton.titleLabel?.font = UIFont(name: "AvenirNext-bold", size: 25)
        secondButton.backgroundColor = .systemBackground
        secondButton.layer.maskedCorners = [.layerMaxXMinYCorner]
        secondButton.layer.cornerRadius = 10
        secondButton.snp.makeConstraints { (make) in
            make.top.equalTo(contentView)
            make.right.equalTo(contentView).offset(-16)
            make.width.equalTo(contentView).multipliedBy(0.46)
            make.height.equalTo(contentView).multipliedBy(0.05)
        }
    }
    
    func setupThirdButton() {
        addSubview(thirdButton)
        thirdButton.setTitle(CollectionViewPageContent.thirdButton[0], for: .normal)
        thirdButton.setTitleColor(.black, for: .normal)
        thirdButton.titleLabel?.font = UIFont(name: "AvenirNext-bold", size: 25)
        thirdButton.backgroundColor = .systemBackground
        thirdButton.snp.makeConstraints { (make) in
            make.top.equalTo(firstButton.snp.bottom).offset(1)
            make.left.equalTo(contentView).offset(16)
            make.width.equalTo(contentView).multipliedBy(0.46)
            make.height.equalTo(contentView).multipliedBy(0.05)
        }
    }
    
    func setupFourthButton() {
        addSubview(fourthButton)
        fourthButton.setTitle(CollectionViewPageContent.fourthButton[1], for: .normal)
        fourthButton.setTitleColor(.black, for: .normal)
        fourthButton.titleLabel?.font = UIFont(name: "AvenirNext-bold", size: 25)
        fourthButton.backgroundColor = .systemBackground
        fourthButton.snp.makeConstraints { (make) in
            make.top.equalTo(secondButton.snp.bottom).offset(1)
            make.right.equalTo(contentView).offset(-16)
            make.width.equalTo(contentView).multipliedBy(0.46)
            make.height.equalTo(contentView).multipliedBy(0.05)
        }
    }
    
    func setupColorView() {
        addSubview(colorView)
        colorView.backgroundColor = .systemBackground
        colorView.snp.makeConstraints { (make) in
            make.top.equalTo(fourthButton.snp.bottom).offset(1)
            make.left.equalTo(contentView).offset(16)
            make.right.equalTo(contentView).offset(-16)
            make.height.equalTo(contentView).multipliedBy(0.03)
        }
    }
    
    func setupImage() {
        addSubview(featuredImage)
        featuredImage.image = UIImage(named: "first-image")
        featuredImage.snp.makeConstraints { (make) in
            make.top.equalTo(colorView.snp.bottom)
            make.left.equalTo(contentView).offset(16)
            make.right.equalTo(contentView).offset(-16)
            make.height.equalTo(contentView).multipliedBy(0.45)
        }
        
    }
    
    func setupDetailsView() {
        addSubview(detailsView)
        detailsView.backgroundColor = .white
        detailsView.snp.makeConstraints { (make) in
            make.top.equalTo(featuredImage.snp.bottom)
            make.left.equalTo(contentView).offset(16)
            make.right.equalTo(contentView).offset(-16)
            make.height.equalTo(contentView).multipliedBy(0.124)
        }
    }
    
    func setupTitle() {
        detailsView.addSubview(title)
        title.textColor = UIColor(red: 0.443, green: 0.502, blue: 0.588, alpha: 1)
        title.font = UIFont(name: "AvenirNext-Regular", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.19
        title.attributedText = NSMutableAttributedString(string: CollectionViewPageContent.titles[0], attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        title.snp.makeConstraints { (make) in
            make.top.equalTo(detailsView).offset(15)
            make.left.equalTo(detailsView).offset(19)
        }
    }
    
    func setupDate() {
        detailsView.addSubview(date)
        date.textColor = UIColor(red: 0.443, green: 0.502, blue: 0.588, alpha: 1)
        date.font = UIFont(name: "AvenirNext-Regular", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.19
        date.attributedText = NSMutableAttributedString(string: CollectionViewPageContent.dates[0], attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        date.snp.makeConstraints { (make) in
            make.top.equalTo(detailsView).offset(15)
            make.right.equalTo(detailsView).offset(-19)
        }
    }
    
    func setupDescription() {
        detailsView.addSubview(pageDescription)
        pageDescription.font = UIFont(name: "AvenirNext-Regular", size: 15)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.19
        pageDescription.numberOfLines = 0
        pageDescription.lineBreakMode = .byWordWrapping
        pageDescription.attributedText = NSMutableAttributedString(string: CollectionViewPageContent.descriptions[0], attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        pageDescription.snp.makeConstraints { (make) in
            make.top.equalTo(date.snp.bottom).offset(10)
            make.right.equalTo(detailsView).offset(-19)
            make.left.equalTo(detailsView).offset(19)

        }
    }
    
    func setupCommentView() {
        addSubview(commentView)
        commentView.backgroundColor = .white
        commentView.layer.cornerRadius = 10
        commentView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        commentView.snp.makeConstraints { (make) in
            make.top.equalTo(detailsView.snp.bottom).offset(1)
            make.left.equalTo(contentView).offset(16)
            make.right.equalTo(contentView).offset(-16)
            make.height.equalTo(contentView).multipliedBy(0.06)
        }
    }
    
    func setupComment() {
        commentView.addSubview(commentButton)
        let btnImage = UIImage(systemName: "message", withConfiguration: UIImage.SymbolConfiguration(weight: .medium))?.withTintColor(.black, renderingMode: .alwaysOriginal)
        commentButton.setImage(btnImage, for: .normal)
        commentButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(commentView)
            make.left.equalTo(likeButtonLabel).offset(25)
            make.height.equalTo(commentView).multipliedBy(0.5)
            make.width.equalTo(commentButton.snp.height)

        }
        commentView.addSubview(comment)
        comment.font = UIFont(name: "AvenirNext-Medium", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.8
        comment.attributedText = NSMutableAttributedString(string: CollectionViewPageContent.comments[0], attributes: [NSAttributedString.Key.kern: 0.15, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        comment.snp.makeConstraints { (make) in
            make.centerY.equalTo(likeButton).offset(2)
            make.left.equalTo(commentButton.snp.right).offset(1)
        }
    }
    
    func setupLike() {
        commentView.addSubview(likeButton)
        let btnImage = UIImage(systemName: "heart.fill", withConfiguration: UIImage.SymbolConfiguration(weight: .medium))?.withTintColor(.systemRed, renderingMode: .alwaysOriginal)
        likeButton.setImage(btnImage, for: .normal)
        likeButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(commentView)
            make.left.equalTo(detailsView).offset(19)
            make.height.equalTo(commentView).multipliedBy(0.5)
            make.width.equalTo(likeButton.snp.height)

        }
        commentView.addSubview(likeButtonLabel)
        likeButtonLabel.font = UIFont(name: "AvenirNext-Medium", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.8
        likeButtonLabel.attributedText = NSMutableAttributedString(string: CollectionViewPageContent.likes[0], attributes: [NSAttributedString.Key.kern: 0.15, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        likeButtonLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(likeButton).offset(2)
            make.left.equalTo(likeButton.snp.right).offset(1)
        }
    }
    
    func setupVerifictaion() {
        commentView.addSubview(verificationBotton)
        let btnImage = UIImage(systemName: "checkmark.circle.fill", withConfiguration: UIImage.SymbolConfiguration(weight: .medium))?.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
        verificationBotton.setImage(btnImage, for: .normal)
        verificationBotton.snp.makeConstraints { (make) in
            make.centerY.equalTo(commentView)
            make.left.equalTo(comment.snp.right).offset(25)
            make.height.equalTo(commentView).multipliedBy(0.5)
            make.width.equalTo(likeButton.snp.height)

        }
        commentView.addSubview(verificationLabel)
        verificationLabel.font = UIFont(name: "AvenirNext-Medium", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.8
        verificationLabel.textColor = .systemGreen
        verificationLabel.attributedText = NSMutableAttributedString(string: "Verified", attributes: [NSAttributedString.Key.kern: 0.15, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        verificationLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(likeButton).offset(2)
            make.left.equalTo(verificationBotton.snp.right).offset(1)
        }
        
    }
    
    func setupMoreButton() {
        commentView.addSubview(moreButton)
        let btnTitle = UILabel()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.36
        btnTitle.attributedText = NSMutableAttributedString(string: "…", attributes: [NSAttributedString.Key.kern: 0.15, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        moreButton.setTitle(btnTitle.text, for: .normal)
        moreButton.titleLabel?.font =  UIFont(name: "AvenirNext-Bold", size: 20)
        moreButton.setTitleColor(UIColor(red: 0.443, green: 0.502, blue: 0.588, alpha: 1), for: .normal)
        moreButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(commentView)
            make.right.equalTo(commentView).offset(-19)
            make.height.equalTo(commentView).multipliedBy(0.5)
            make.width.equalTo(likeButton.snp.height)

        }
    }
}
