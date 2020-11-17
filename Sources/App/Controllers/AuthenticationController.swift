//
//  File.swift
//  
//
//  Created by Richard Robinson on 2020-11-17.
//

import Foundation
import Vapor

struct AuthenticationController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let auth = routes.grouped("auth")
        
        let callbackGroup = auth.grouped("callback")
        callbackGroup.get(use: callback)
        
        let requestGroup = auth.grouped("request")
        requestGroup.get(use: request)
    }
    
    func callback(req: Request) throws -> Response {
        return Response(status: .ok)
    }
    
    func request(req: Request) throws -> Response {
        return Response(status: .ok)
    }
}
