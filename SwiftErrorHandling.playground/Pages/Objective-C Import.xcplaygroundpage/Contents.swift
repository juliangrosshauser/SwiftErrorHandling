//: [Previous](@previous)

import Foundation

/*:
# Objective-C Import

Consider the method from before:

    - (void)cacheData:(NSData *)data error:(NSError **)error completionHandler:(BOOL (^)(void))completionHandler;

This Objective-C method gets imported into Swift as:
*/

func cacheData(data: NSData, completionHandler: () -> Bool) throws {}

/*:
If the last non-block parameter is of type `NSError **` it gets replaced by the `throws` keyword.
Further, if a Objective-C method returns `BOOL` to signal error or success, importing it into Swift changes the return type to `Void`.
Similarly, if the return type is `nil` to signal an error, Swift changes it to a non-optional type.

Methods consuming errors, like delegate methods or methods with a completion handler parameter that takes a `NSError` argument, do not get imported into Swift as throwing methods.
*/

//: [Next](@next)
