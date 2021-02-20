//
//  PeopleTableViewCell.swift
//  giddemoswiftproj
//
//  Created by Sofi on 20.02.2021.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {
    
    
    @IBOutlet  var iconImageView: UIImageView!
    @IBOutlet var  peopleNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(viewimage))
        
        iconImageView.isUserInteractionEnabled = true
        iconImageView.addGestureRecognizer(tap)
        
        iconImageView.layer.cornerRadius = iconImageView.frame.width / 2
        iconImageView.contentMode = .scaleAspectFill
        iconImageView.layer.masksToBounds = true
        iconImageView.layer.borderWidth = 2
        iconImageView.layer.borderColor = UIColor.black.cgColor
    }
    
    @objc func viewimage(sender: UIGestureRecognizer){
        iconImageView.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        
        
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations:  {
            self.iconImageView.transform = .identity
        },
        
        completion: nil
        )
    }
    
}

   


