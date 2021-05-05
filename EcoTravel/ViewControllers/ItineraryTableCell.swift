// Customized table cell for route options
// Author: Minji Choi

import UIKit

class ItineraryTableCell: UITableViewCell {
    
    static let identifier = "ItineraryCell"
    static func nib() -> UINib {
        return UINib(nibName: "ItineraryTableCell", bundle: nil)
    }
    
    public func configure(route:UIStackView, time:String, duration:String){
        for view in routeStackView.subviews{
            view.removeFromSuperview()
        }
        self.routeStackView.addArrangedSubview(route)
        routeStackView.setContentHuggingPriority(.required, for: .horizontal)
        self.time.text = time
        self.duration.text = duration
    }
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var routeStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
