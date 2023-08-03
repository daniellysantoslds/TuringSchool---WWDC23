//
//  TuringSchoolApp.swift
//  TuringSchool
//
//  Created by Danielly Santos Lopes da Silva on 27/07/23.
//

import SwiftUI

@main
struct TuringSchoolApp: App {
    
    init() {
        printFonts()
    }
    
    func printFonts() {
        let fontFamilyNames = UIFont.familyNames
        
        
        for familyName in fontFamilyNames {
            print("---------")
            print("Font Family Name -> [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font names -> [\(names)]")
        }
    }
    
    
    var body: some Scene {
        WindowGroup {
            HomeScreenView()
        }
    }
}
