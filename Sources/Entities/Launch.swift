//
//  Launch.swift
//  RPAgentSwiftXCTest
//
//  Created by Stas Kirichok on 23-08-2018.
//  Copyright © 2018. All rights reserved.
//

import Foundation

struct StartLaunch: Decodable {
  let id: String
  let number: Int
}

struct LaunchResource: Decodable {
	let id: Int
	let uuid: String
	let status: String?
}

struct LaunchListInfo: Decodable {
  let content: [LaunchResource]
}
