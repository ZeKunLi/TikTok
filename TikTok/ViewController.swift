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
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var loadingView: NVActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.rowHeight = UIScreen.main.bounds.height
        loadingView.startAnimating()
    }

    
    
    

}


extension ViewController:  UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath)
        return cell as! VideoCell
        
    }
    
    
}


extension ViewController:  UITableViewDelegate {
    
}



