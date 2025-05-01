//
//  RMCharacterViewController.swift
//  RickandMorty
//
//  Created by Mansoor on 29/04/2025.
//

import UIKit
///Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    view.backgroundColor = .systemBackground
     title = "Characters"

        let request = RMRequest(
                   endpoint: .character,
                   queryParameters: [
                       URLQueryItem(name: "name", value: "Rick"),
                       URLQueryItem(name: "status", value: "alive")
                   ]
               )
               print (request.url)
        RMService.shared.execute( request, expecting: RMCharacter.self){ result in
        }
    }
 


}
