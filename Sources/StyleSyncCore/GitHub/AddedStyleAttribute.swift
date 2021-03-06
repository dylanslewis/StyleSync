//
//  stylesync
//  Created by Dylan Lewis
//  Licensed under the MIT license. See LICENSE file.
//

import Foundation

struct AddedStyleAttribute {
	let attributeName: String
	let attributeValue: String
}

extension AddedStyleAttribute: CodeTemplateReplacable {
	var declarationName: String {
		return "attributeDeclaration"
	}
	
	var replacementDictionary: [String : String] {
		return [
			"attributeName": attributeName,
			"attributeValue": attributeValue
		]
	}
}
