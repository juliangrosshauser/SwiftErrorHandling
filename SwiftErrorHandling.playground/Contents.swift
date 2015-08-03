/*:
# Swift Error Handling

## Old Approach

Let's take a look at the following Objective-C method:

    - (void)cacheData:(NSData *)data error:(NSError **)error completionHandler:(BOOL (^)(void))completionHandler;

It uses an in-out parameter called `error` to signal any errors during execution.

You would use it like this:

    NSError *error = nil;

    [self cacheData:data error:&error completionHandler:completionHandler];

    if (error != nil) {
        // Handle error
    }

Looks okay, right? Why would they change this?

* You can just pass `NULL` as `error` parameter and completely ignore the error
* Even if you use the `error` in-out parameter you could forget to check it after calling the method
*/
