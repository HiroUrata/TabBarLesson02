//
//  ViewController.swift
//  TabBarLesson02
//
//  Created by UrataHiroki on 2021/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 41
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = String(indexPath.row)
        
        return cell
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if tableView.contentOffset.y < 0{

            UITabBar.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {self.tabBarController?.tabBar.frame.origin.y = self.view.frame.maxY - (self.tabBarController?.tabBar.frame.size.height)!}, completion: nil)

        }else if tableView.contentOffset.y > 0{

            UITabBar.animate(withDuration: 0.4, delay: 0, options: .curveEaseInOut, animations: {self.tabBarController?.tabBar.frame.origin.y = self.view.frame.maxY}, completion: nil)

        }
     }
    
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
        if decelerate == false{
            
            UITabBar.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {self.tabBarController?.tabBar.frame.origin.y = self.view.frame.maxY - (self.tabBarController?.tabBar.frame.size.height)!}, completion: nil)
            
        }
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        UITabBar.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {self.tabBarController?.tabBar.frame.origin.y = self.view.frame.maxY - (self.tabBarController?.tabBar.frame.size.height)!}, completion: nil)
        
    }
    
    
}
