import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
//    router.get("movies/action/year/1994") { req in
//        return "Action Movie"
//    }

    let moviesGroup = router.grouped("api/movies")
//
//    moviesGroup.get("comedy") { req in
//        return "Comedy Movies"
//    }
//
//    moviesGroup.get("romance") { req in
//        return "Romance mavie"
//    }




//    // Example of configuring a controller
//    let todoController = TodoController()
//    router.get("todos", use: todoController.index)
//    router.post("todos", use: todoController.create)
//    router.delete("todos", Todo.parameter, use: todoController.delete)
//
//
//    // 9. Parameters
//
//    // /movies/comedy
//    // /movies/romance
//    // /movies/fiction
//    // /movies/horror
//
//    router.get("movies", String.parameter, "year", Int.parameter) { req -> String in
//
//        let genre = try req.parameters.next(String.self)
//        let year = try req.parameters.next(Int.self)
//
//        return "Genre is \(genre), year is \(year)"
//
//}



    // 10. QueryString
    router.get("movies") { req -> String in

        let search = try req.query.get(String.self, at: "search")
        let page = try req.query.get(Int.self, at: "page")
        let sort = try req.query.get(String.self, at: "sort")


        return "search is \(search), page is \(page), sort is \(sort)"


    }

}
