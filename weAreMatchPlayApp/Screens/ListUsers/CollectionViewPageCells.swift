//
//  CollectionViewPageCells.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import UIKit

class CollectionViewPageCells {
    var title = ""
    var featuredImage = UIImage()
    var like = ""
    var comments = ""
    var date = ""
    var firstButton = ""
    var secondButton = ""
    var thirdButton = ""
    var fourthButton = ""
    
    
    init(title: String, featuredImage: UIImage, like: String, comment: String, date: String, firstButton: String, secondButton: String, thirdButton: String, fourthButton: String) {
        self.title = title
        self.featuredImage = featuredImage
        self.comments = comment
        self.date = date
        self.like = like
        self.firstButton = firstButton
        self.secondButton = secondButton
        self.thirdButton = thirdButton
        self.fourthButton = fourthButton
    }
    
    static func createPageCell() -> [CollectionViewPageCells] {
        return[
            CollectionViewPageCells(title: CollectionViewPageContent.titles[0], featuredImage: UIImage(named: CollectionViewPageContent.images[0]) ?? UIImage(), like: CollectionViewPageContent.likes[0], comment: CollectionViewPageContent.comments[0], date: CollectionViewPageContent.dates[0], firstButton: CollectionViewPageContent.firstButton[0], secondButton: CollectionViewPageContent.secondButton[0], thirdButton: CollectionViewPageContent.thirdButton[0], fourthButton: CollectionViewPageContent.fourthButton[0]),
            CollectionViewPageCells(title: CollectionViewPageContent.titles[1], featuredImage: UIImage(named: CollectionViewPageContent.images[0]) ?? UIImage(), like: CollectionViewPageContent.likes[3], comment: CollectionViewPageContent.comments[1], date: CollectionViewPageContent.dates[0], firstButton: CollectionViewPageContent.firstButton[0], secondButton: CollectionViewPageContent.secondButton[0], thirdButton: CollectionViewPageContent.thirdButton[0], fourthButton: CollectionViewPageContent.fourthButton[0]),
            CollectionViewPageCells(title: CollectionViewPageContent.titles[2], featuredImage: UIImage(named: CollectionViewPageContent.images[0]) ?? UIImage(), like: CollectionViewPageContent.likes[0], comment: CollectionViewPageContent.comments[2], date: CollectionViewPageContent.dates[0], firstButton: CollectionViewPageContent.firstButton[0], secondButton: CollectionViewPageContent.secondButton[0], thirdButton: CollectionViewPageContent.thirdButton[0], fourthButton: CollectionViewPageContent.fourthButton[0]),
            CollectionViewPageCells(title: CollectionViewPageContent.titles[3], featuredImage: UIImage(named: CollectionViewPageContent.images[0]) ?? UIImage(), like: CollectionViewPageContent.likes[0], comment: CollectionViewPageContent.comments[3], date: CollectionViewPageContent.dates[0], firstButton: CollectionViewPageContent.firstButton[0], secondButton: CollectionViewPageContent.secondButton[0], thirdButton: CollectionViewPageContent.thirdButton[0], fourthButton: CollectionViewPageContent.fourthButton[0]),
            CollectionViewPageCells(title: CollectionViewPageContent.titles[4], featuredImage: UIImage(named: CollectionViewPageContent.images[0]) ?? UIImage(), like: CollectionViewPageContent.likes[0], comment: CollectionViewPageContent.comments[4], date: CollectionViewPageContent.dates[0], firstButton: CollectionViewPageContent.firstButton[0], secondButton: CollectionViewPageContent.secondButton[0], thirdButton: CollectionViewPageContent.thirdButton[0], fourthButton: CollectionViewPageContent.fourthButton[0])
        ]
    }
}
