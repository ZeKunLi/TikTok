//
//  ViewController.swift
//  TikTok
//
//  Created by ZeKunLi on 2019/11/22.
//  Copyright © 2019 bytedance. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {
    
    var page = 12
    var awemes = [AwemeList]()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var loadingView: NVActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.rowHeight = UIScreen.main.bounds.height
        loadingView.startAnimating()
        getList()
    }

    func getList() {
        let url = URL(string: TikTokURL.baseLocal + page.description + TikTokURL.feedFile)!
        getAwemeList(url: url)
    }
    
    func getAwemeList(url:URL) {
        do {
            let feed = try Feed(fromURL: url)
            if let awemes = feed.awemeList {
                self.awemes += awemes
                self.tableView.reloadData()
                loadingView.stopAnimating()
            }
            
        } catch {
               debugPrint("解析错误",error)
        }
    }
    

}


extension ViewController:  UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        awemes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        cell.aweme = awemes[indexPath.row]
        return cell
        
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        page -= 1
        getList()
    }
    
}


extension ViewController:  UITableViewDelegate {
    
}



