//
//  VideoCell.swift
//  TikTok
//
//  Created by ZeKunLi on 2019/11/22.
//  Copyright © 2019 bytedance. All rights reserved.
//

import UIKit
import MarqueeLabel
import Kingfisher
class VideoCell: UITableViewCell {
    
    var aweme: AwemeList! {
        didSet {
            
            labelAuthor.text = aweme.author!.nickname
            labelDesc.text = aweme.desc
            
            // 设置视频封面图
            let cover = aweme.video!.cover!.urlList![0]
            let coverURL = URL(string:cover)!
            coverImageView.kf.setImage(with: coverURL)
            
            // 设置作者头像按钮
            let authorAvatar = aweme.author!.avatarThumb!.urlList![0]
            let authorURL = URL(string: authorAvatar)
            authorButton.kf.setImage(with: authorURL, for: .normal)
            
            
            // 设置音乐标题和作者
            labelMusic.text = aweme.music!.title! + "-" + aweme.music!.author!
            labelMusic.restartLabel()
            
            // 点赞、评论、转发
            labelLikeNum.text = aweme.statistics!.diggCount!.toWanStr
            labelCommentNum.text = aweme.statistics!.commentCount!.toWanStr
            labelShareNum.text = aweme.statistics!.shareCount!.toWanStr
            
            // 唱片音乐封面
            let musicCover = aweme.music!.coverThumb!.urlList![0]
            musicCoverImageView.kf.setImage(with: URL(string: musicCover)!)
            
            
            
        }
    }
    

    @IBOutlet weak var pauseImageView: UIImageView!
    @IBOutlet weak var coverImageView: UIImageView!
    
    @IBOutlet weak var labelAuthor: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet weak var labelMusic: MarqueeLabel!
    
    
    @IBOutlet weak var authorButton: UIButton!
    @IBOutlet weak var followButton: UIButton!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var labelLikeNum: UILabel!
    
    
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var labelCommentNum: UILabel!
    
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var labelShareNum: UILabel!
    
    @IBOutlet weak var diskView: UIView!
    @IBOutlet weak var subDiskView: UIView!
    @IBOutlet weak var musicCoverImageView: UIImageView!
    @IBOutlet weak var rotateDiskView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
