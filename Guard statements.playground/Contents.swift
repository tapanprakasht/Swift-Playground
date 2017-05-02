//: Playground - noun: a place where people can play


// Guard statements


struct Blog {
    var name: String?
    var author: String?
    var URL: String?
}

var myBlog = Blog(name: "My Blog", author: "Tapan" , URL: "url")

func getBlogInfo(blog: Blog) {
    
    if let blogName = myBlog.name, let blogAuthor = myBlog.author, let blogUrl = myBlog.URL {
        print("Blog name: \(blogName)")
        print("Blog author: \(blogAuthor)")
        print("Blog name: \(blogUrl)")
    } else {
        print("Unwrapping failed")
    }
    
}


getBlogInfo(blog: myBlog)


func getBlogInfoWithGuard(blog: Blog) {
    
    guard let blogName = myBlog.name, let blogAuthor = myBlog.author, let blogUrl = myBlog.URL else {
        print("Unwrapping failed")
        return
    }
    
    print("Blog name: \(blogName)")
    print("Blog author: \(blogAuthor)")
    print("Blog name: \(blogUrl)")
}


getBlogInfoWithGuard(blog: myBlog)



