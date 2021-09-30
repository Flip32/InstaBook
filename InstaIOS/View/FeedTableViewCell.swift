//
//  FeedTableViewCell.swift
//  InstaIOS
//
//  Created by Filipe Lopes on 23/09/21.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    static let KReuseIdentifier = "FeedTableViewCell"
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var postDate: UILabel!
    
    @IBAction func menu(_ sender: UIButton) {
    }
    @IBOutlet weak var postMessage: UILabel!
    @IBOutlet weak var postimage: UIImageView!
    @IBOutlet weak var likes: UILabel!
    @IBOutlet weak var coments: UILabel!
    
    @IBAction func buttonCurtir(_ sender: Any) {
    }
    
    @IBAction func buttonComentar(_ sender: Any) {
    }
    
    @IBAction func buttonCompartilhar(_ sender: Any) {
    }
    
    static func register (in tableView: UITableView) {
        let xib = UINib(nibName: "FeedTableViewCell", bundle: Bundle.main)
        tableView.register(xib, forCellReuseIdentifier: KReuseIdentifier)
    }
    
    func setup(with user: Any?) {
        avatar.image = UIImage(data: try! Data(contentsOf: URL(string: "https://picsum.photos/50")!))
        userName.text = "Filipe Lopes"
        postimage.image = UIImage(data: try! Data(contentsOf: URL(string: "https://picsum.photos/400")!))
        postDate.text = "quinta-feira, 27 de setembro de 2021"
        likes.text = "4 curtidas"
        coments.text = "1 comentário"
//        postMessage.text = "Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. In elementis mé pra quem é amistosis quis leo. Leite de capivaris, leite de mula manquis sem cabeça. "
    }
}
