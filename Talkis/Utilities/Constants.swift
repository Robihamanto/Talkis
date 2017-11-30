//
//  Constants.swift
//  Talkis
//
//  Created by Robihamanto on 22/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ success: Bool) -> ()

//URLConstants
let BASE_URL = "https://talkischat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND_TO_CHANNEL = "unwindToChannel"

//User Defaults
let TOKEN_KEY = "userToken"
let LOGGED_IN_KEY = "loggenInKey"
let USER_EMAIL = "userEmail"

//Headers

let HEADER = [
"Content-Type": "application/json; charset=utf-8"
]
