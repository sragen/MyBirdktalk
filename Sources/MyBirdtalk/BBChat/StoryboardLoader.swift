//
//  File.swift
//  
//
//  Created by Adi Kurniawan on 19/01/25.
//

import UIKit

public class StoryboardLoader {
    public static func loadStoryboard() -> UIStoryboard {
        // Specify the name of the storyboard (without .storyboard extension)
        let storyboardName = "MainTinode"

        // Load the storyboard from the module's bundle
        return UIStoryboard(name: storyboardName, bundle: .module)
    }
}
