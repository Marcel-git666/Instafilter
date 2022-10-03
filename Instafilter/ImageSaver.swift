//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Marcel Mravec on 24.09.2022.
//

import SwiftUI

class ImageSaver: NSObject {
    var successHandler: (() -> Void)?
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }

    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        print("Save finished!")
    }
}
