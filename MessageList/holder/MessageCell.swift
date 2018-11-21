

import UIKit

class MessageCell: UITableViewCell {
    
    var isReady = false
    
    var configuration: MessageListConfiguration!
    var delegate: MessageListDelegate!
    var message: Message!
    
    var topConstraint: NSLayoutConstraint!
    var bottomConstraint: NSLayoutConstraint!
    
    var count = 0
    
    var index = -1 {
        didSet {
            if index == 0 {
                topConstraint.constant = configuration.paddingVertical
            }
            else {
                topConstraint.constant = configuration.messageMarginTop
                if index == count - 1 {
                    bottomConstraint.constant = configuration.paddingVertical
                }
            }
            setNeedsLayout()
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(configuration: MessageListConfiguration, delegate: MessageListDelegate, message: Message, index: Int, count: Int) {
        
        self.message = message
        
        if !isReady {
            
            isReady = true
            
            self.configuration = configuration
            self.delegate = delegate
            
            selectionStyle = .none
            backgroundColor = .clear
            
            create()
            
        }
        
        self.count = count
        self.index = index
        
        update()
        
    }
    
    func create() {
        
    }
    
    func update() {
        
    }
    
    func updateImageSize(width: Int, height: Int, widthConstraint: NSLayoutConstraint, heightConstraint: NSLayoutConstraint) {
        
        var imageWidth = CGFloat(width)
        var imageHeight = CGFloat(height)
        let imageRatio = imageWidth / imageHeight
        
        // 简单限制下最大和最小尺寸
        // 剩下的外部自由发挥
        let maxWidth = getContentMaxWidth()

        if imageWidth > maxWidth {
            imageWidth = maxWidth
            imageHeight = imageWidth / imageRatio
        }
        
        if imageHeight < configuration.userAvatarHeight {
            imageHeight = configuration.userAvatarHeight
            imageWidth = imageHeight * imageRatio
        }
        
        widthConstraint.constant = imageWidth
        heightConstraint.constant = imageHeight
        
        setNeedsLayout()
        
        
    }
    
    func showTimeView(timeView: UILabel, time: String, avatarView: UIView, avatarTopConstraint: NSLayoutConstraint) -> NSLayoutConstraint {
        
        let isHidden = timeView.isHidden
        
        if time != "" {
            timeView.text = time
            timeView.sizeToFit()
            timeView.isHidden = false
        }
        else {
            timeView.isHidden = true
        }
        
        // 更新头像的 top
        // 当没有时间时，头像置顶
        var constraint = avatarTopConstraint
        
        if isHidden != timeView.isHidden {
            contentView.removeConstraint(constraint)
            if isHidden {
                constraint = NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: timeView, attribute: .bottom, multiplier: 1, constant: configuration.messageMarginTop)
            }
            else {
                constraint = NSLayoutConstraint(item: avatarView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0)
            }
            contentView.addConstraint(constraint)
        }
        
        return constraint
        
    }
    
    func showStatusView(spinnerView: UIActivityIndicatorView, failureView: UIView) {
        
        if message.status == .sendIng {
            spinnerView.startAnimating()
        }
        else {
            spinnerView.stopAnimating()
        }
        
        failureView.isHidden = message.status != .sendFailure
        
    }
    
    func getContentMaxWidth() -> CGFloat {
        
        let screenWidth = UIScreen.main.bounds.size.width
        
        return screenWidth - 2 * (configuration.messagePaddingHorizontal + configuration.userAvatarWidth) - configuration.leftUserNameMarginLeft - configuration.rightUserNameMarginRight
        
    }
    
    func addClickHandler(view: UIView, selector: Selector) {
        
        view.isUserInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: selector)
        gesture.numberOfTapsRequired = 1
        
        view.addGestureRecognizer(gesture)
        
    }
    
    func addLongPressHandler(view: UIView, selector: Selector) {
        
        view.isUserInteractionEnabled = true
        
        let gesture = UILongPressGestureRecognizer(target: self, action: selector)
        gesture.numberOfTapsRequired = 1
        
        view.addGestureRecognizer(gesture)
        
    }
    
    @objc func onMessageClick() {
        delegate.messageListDidClickMessage(message: message)
    }
    
    @objc func onUserNameClick() {
        delegate.messageListDidClickUserName(message: message)
    }
    
    @objc func onUserAvatarClick() {
        delegate.messageListDidClickUserAvatar(message: message)
    }
    
    @objc func onContentClick() {
        delegate.messageListDidClickContent(message: message)
    }
    
    @objc func onContentLongPress() {
        delegate.messageListDidLongPressContent(message: message)
    }
    
    @objc func onFailureClick() {
        delegate.messageListDidClickFailure(message: message)
    }
    
}
