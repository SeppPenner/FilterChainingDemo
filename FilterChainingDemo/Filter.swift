//
//  Filter.swift
//  FilterChainingDemo
//
//  Created by Simon Gladman on 18/09/2014.
//  Copyright (c) 2014 Simon Gladman. All rights reserved.
//

import Foundation
import UIKit

class Filter
{
    let ciFilter : CIFilter
    
    let filterName: String
    let filterParameters : [FilterParameter]
    let ciFilterName: String
    let getValue: ((Int, Double) -> (AnyObject))?
    
    init(filterName: String, ciFilterName: String, filterParameters: [FilterParameter], getValue: ((Int, Double) -> (AnyObject))? = nil)
    {
        self.filterName = filterName
        self.ciFilterName = ciFilterName
        self.filterParameters = filterParameters
        self.getValue = getValue
        
        ciFilter = CIFilter(name: ciFilterName)
    }
    
    var parameterCount: Int
    {
        get
        {
            return filterParameters.count
        }
    }
}