//
//  ListUsersViewController.swift
//  weAreMatchPlayApp
//
//  Created by Ikechukwu Onuorah on 22/01/2021.
//

import UIKit
import SnapKit

protocol ListUsersDisplayLogic {
    func displaySuccessAlert(prompt: ListUsersDataModel)
    func displayFailureAlert(prompt: String)
}

class ListUsersViewController: UIViewController {
    var titleView = UIView()
    private var collectionCells = CollectionViewPageCells.createPageCell()
    var usersData: [Datum]?
    var userAPIToken: String?
    var listUsersInteractor: ListUsersBusinessLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideNavigationBar()
        setUp()
        setupTitleView()
        registerCell()
        view.addSubview(collectionView)
        view.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
        listUsersInteractor?.getUsers(apiToken: userAPIToken ?? String())
    }
        
    fileprivate func registerCell(){
        collectionView.register(PageCell.self, forCellWithReuseIdentifier: StringsConstants.cellId)
    }
    
    func setUp() {
        let presenter = ListUsersPresenter()
        presenter.listUsersView = self
        let worker = ListUsersWorker()
        let interactor = ListUsersInteractor()
        interactor.presenter = presenter
        interactor.worker = worker
        self.listUsersInteractor = interactor
    }
    
    func setupTitleView() {
        let anchorView = UIView()
        view.addSubview(anchorView)
        anchorView.snp.makeConstraints { (make) in
            make.left.right.equalTo(view)
            make.top.equalTo(view)
            make.height.equalTo(view).multipliedBy(0.1)
        }
        view.addSubview(titleView)
        titleView.snp.makeConstraints { (make) in
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.top.equalTo(anchorView.snp.bottom)
        }
        
        let titleText = UILabel()
        titleView.addSubview(titleText)
        titleText.font = UIFont(name: "AvenirNext-Bold", size: 34)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.9
        titleText.textAlignment = .left
        let text = "Welcome to\nWe Are Match Play"
        let textWithColor = "Match Play"
        let completeRange = (text as NSString).range(of: text)
        let range = (text as NSString).range(of: textWithColor)
        let attributedString = NSMutableAttributedString(string:text)
        let color = #colorLiteral(red: 0, green: 0.4626483321, blue: 0.9992702603, alpha: 1)
        titleText.numberOfLines = 0
        titleText.lineBreakMode = .byWordWrapping
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value:  color, range: range)
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: completeRange)
        titleText.attributedText = attributedString
        titleText.snp.makeConstraints { (make) in
            make.left.right.equalTo(titleView)
            make.top.equalTo(titleView)
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = #colorLiteral(red: 0.9175471663, green: 0.9177045822, blue: 0.917537272, alpha: 1)
        cv.showsHorizontalScrollIndicator = false
        setupOtherViewShadow(cv)
        cv.delegate = self
        cv.dataSource = self
        cv.isPagingEnabled = true
        cv.layer.cornerRadius = 10
        self.view.addSubview(cv)
        cv.snp.makeConstraints { (make) in
            make.top.equalTo(titleView.snp.bottom).offset(20)
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.height.equalTo(view).multipliedBy(0.75)
            make.bottom.equalTo(view).offset(-30)
        }
        return cv
    }()
    
    func setupLayout() {
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(titleView.snp.bottom).offset(20)
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.bottom.equalTo(view).offset(-10)
        }
    }
    
    func setupOtherViewShadow(_ view : UIView) {
        view.layer.shadowColor = CGColor(red: 0.984, green: 0.984, blue: 0.984, alpha: 1)
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 8
        view.layer.masksToBounds = false
        view.layer.cornerRadius = 5
        view.clipsToBounds = false
    }
    
}

extension ListUsersViewController:  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, ListUsersDisplayLogic {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return usersData?.count ?? 0
        return collectionCells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StringsConstants.cellId, for: indexPath) as! PageCell
//        let page = usersData?[indexPath.item]
        let page = collectionCells[indexPath.item]
        cell.pages = page
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
    }
    
    func displaySuccessAlert(prompt: ListUsersDataModel) {
        let view = ListUsersViewController()
        view.usersData = prompt.data
        navigationController?.pushViewController(view, animated: true)
    }
    
    func displayFailureAlert(prompt: String) {
        self.handleNetworkError(prompt: prompt)
    }
}
