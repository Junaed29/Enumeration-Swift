//
//  main.swift
//  Enumeration Swift
//
//  Created by Junaed Muhammad Chowdhury on 23/10/22.
//

import Foundation

func share(on platform: SocialPlatform) -> Void {
    switch platform {
    case .twitter:
        print("Opinios share on Twitter")
    case .faceBook:
        print("Post share on Twitter")
    case .instragram:
        print("Image share on Twitter")
    case .linkedin:
        print("Resume share on Twitter")
    }
}

func getJunaedsOpinion(on platform: SocialPlatform) {
    let opinion = platform.rawValue
    print(opinion)
}

share(on: .faceBook)

print(UrlConstasnt.otherUrl)

getJunaedsOpinion(on: .faceBook)

//MARK: - CaseIterable Example
print(SocialPlatform.allCases)

for platform in SocialPlatform.allCases{
    print(platform.rawValue)
}


//MARK: - Associated Value Example
func getSponsorshipEligibility(for platform: SocialMediaPlatform){
    switch platform {
    case .twitter(let followers) where followers >= 10_000:
        print("Eligable for sponsored Tweet")
        
    case .youtube(let subscriber) where subscriber >=  30_000 :
        print("Eligable for sponsored Video")
        
    case .instragram, .linkedIn, .twitter, .youtube:
        print("Not Eligable")
    }
}


getSponsorshipEligibility(for: .twitter(followers: 10000))


//MARK: - More Associated Value Example

let grGretting = Greeting.german(period: .morning).value
print(grGretting)
