//
//  AuthViewControllerDelegate.swift
//  ImageFeed
//
//  Created by  Александр  on 02.04.2023.
//

import Foundation


protocol AuthViewControllerDelegate: AnyObject {
    func authViewController(_ vc: AuthViewController, didAuthenticateWithCode code: String)
} 
