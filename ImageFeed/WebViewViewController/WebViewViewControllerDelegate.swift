//
//  WebViewViewControllerDelegate.swift
//  ImageFeed
//
//  Created by  Александр  on 02.04.2023.
//

import Foundation

import WebKit

protocol WebViewViewControllerDelegate {
    func webViewViewController(_ vc: WebViewViewController, didAuthenticateWithCode code: String)
    func webViewViewControllerDidCancel(_ vc: WebViewViewController)
}
