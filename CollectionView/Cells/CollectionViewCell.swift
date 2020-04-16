import UIKit

class CollectionViewCell: UICollectionViewCell {
	@IBOutlet weak var titleLabel:UILabel!
	@IBOutlet weak var selectionImage:UIImageView!
    @IBOutlet weak var mainImage : UIImageView!
    
	
	var isEditing: Bool = false {
		didSet {
			selectionImage.isHidden = !isEditing
		}
	}
    
    var park : Park?{
        didSet{
            if let park = park {
                mainImage.image = UIImage(named: park.photo)
                titleLabel.text = park.name
            }
            
        }
    }
    
    override func prepareForReuse() {
        mainImage.image = nil 
    }
	
	override var isSelected: Bool {
		didSet {
			if isEditing {
				selectionImage.image = isSelected ? UIImage(named: "Checked") : UIImage(named: "Unchecked")
			}
		}
	}
}
