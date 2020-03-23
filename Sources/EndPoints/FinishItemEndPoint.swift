//
//  FinishItemEndPoint.swift
//  RPAgentSwiftXCTest
//
//  Created by Stas Kirichok on 23-08-2018.
//  Copyright © 2018 Windmill Smart Solutions. All rights reserved.
//

import Foundation

struct FinishItemEndPoint: EndPoint {
  
  let method: HTTPMethod = .put
  let relativePath: String
  let parameters: [String : Any]
  
  init(itemID: String, status: TestStatus) {
    relativePath = "item/\(itemID)"
	let issue = status == .failed ? [
		"comment": "",
		"issue_type": "ti001"
		] : nil
	var params: [String: Any] = [
		"end_time": TimeHelper.currentTimeAsString(),
		"status": status.rawValue
	]
	params["issue"] = issue
	
	parameters = params
  }
  
}
