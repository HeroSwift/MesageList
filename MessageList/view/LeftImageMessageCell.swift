
import UIKit

class LeftImageMessageCell: ImageMessageCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func create(configuration: MessageListConfiguration) {
        
        super.create(configuration: configuration)
        
        contentView.addConstraints([
            
            NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: configuration.messagePaddingVertical),
            NSLayoutConstraint(item: avatarView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: configuration.messagePaddingHorizontal),
            NSLayoutConstraint(item: avatarView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: configuration.userAvatarWidth),
            NSLayoutConstraint(item: avatarView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: configuration.userAvatarHeight),
            
            NSLayoutConstraint(item: photoView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: configuration.leftImageMessageMarginLeft),
            NSLayoutConstraint(item: photoView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: -configuration.messagePaddingVertical),
            
            NSLayoutConstraint(item: spinnerView, attribute: .left, relatedBy: .equal, toItem: photoView, attribute: .right, multiplier: 1, constant: configuration.leftStatusViewMarginLeft),
            NSLayoutConstraint(item: spinnerView, attribute: .bottom, relatedBy: .equal, toItem: photoView, attribute: .bottom, multiplier: 1, constant: -configuration.leftStatusViewMarginBottom),
            
            NSLayoutConstraint(item: failureView, attribute: .left, relatedBy: .equal, toItem: photoView, attribute: .right, multiplier: 1, constant: configuration.leftStatusViewMarginLeft),
            NSLayoutConstraint(item: failureView, attribute: .bottom, relatedBy: .equal, toItem: photoView, attribute: .bottom, multiplier: 1, constant: -configuration.leftStatusViewMarginBottom),
            
        ])
        
        if configuration.leftUserNameVisible {
            
            nameView.font = configuration.leftUserNameTextFont
            nameView.textColor = configuration.leftUserNameTextColor
            nameView.textAlignment = .left
            
            contentView.addSubview(nameView)
            addClickHandler(view: nameView, selector: #selector(onUserNameClick))
            
            contentView.addConstraints([

                NSLayoutConstraint(item: nameView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: nameView, attribute: .left, relatedBy: .equal, toItem: avatarView, attribute: .right, multiplier: 1, constant: configuration.leftUserNameMarginLeft),
                
                NSLayoutConstraint(item: photoView, attribute: .top, relatedBy: .equal, toItem: nameView, attribute: .bottom, multiplier: 1, constant: configuration.leftUserNameMarginBottom),
                
            ])
            
        }
        else {
            contentView.addConstraints([

                NSLayoutConstraint(item: photoView, attribute: .top, relatedBy: .equal, toItem: avatarView, attribute: .top, multiplier: 1, constant: 0),
                
            ])
        }
        
    }
    
}
