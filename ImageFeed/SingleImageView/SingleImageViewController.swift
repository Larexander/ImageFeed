//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by  Александр  on 17.03.2023.
//

import UIKit

final class SingleImageViewController: UIViewController {
    
    var image: UIImage! {
          didSet {
              guard isViewLoaded else { return } // 1
              imageView.image = image // 2
          }
      }
      
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageView: UIImageView!
      
      override func viewDidLoad() {
          super.viewDidLoad()
          imageView.image = image
          scrollView.minimumZoomScale = 0.1
          scrollView.maximumZoomScale = 1.25
      }
    
    @IBAction private func didTapBackButton() {
           dismiss(animated: true, completion: nil)
       }
}

extension SingleImageViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        imageView
    }
}
