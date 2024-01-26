package webapp

import database.Post
import database.PostsDatabase
import org.http4k.core.HttpHandler
import org.http4k.core.Method.GET
import org.http4k.core.Response
import org.http4k.core.Status.Companion.FOUND
import org.http4k.core.Status.Companion.OK
import org.http4k.core.body.form
import org.http4k.routing.ResourceLoader
import org.http4k.routing.bind
import org.http4k.routing.routes
import org.http4k.routing.static
import org.http4k.server.Jetty
import org.http4k.server.asServer
import org.http4k.template.FreemarkerTemplates

val app: HttpHandler = routes(

    "/index" bind GET to {
        val renderer = FreemarkerTemplates().HotReload("src/main/resources")
        val viewModel = IndexPage("World")
//      bind GET to provides a list of value definitions that is to be passed into the renderer for all GET requests
        Response(OK).body(renderer(viewModel))
//      I'd assume this checks if input to viewModel is valid first before running the renderer
    },


    "/results" bind org.http4k.core.Method.POST to { request ->
        val renderer = FreemarkerTemplates().HotReload("src/main/resources")
        val colour = Math.random()
        val viewModel = Results(colour)
        Response(OK).body(renderer(viewModel))
    },
//
//    "/post" bind GET to {
//      val renderer = FreemarkerTemplates().HotReload("src/main/resources")
//
//      val update = PostsDatabase()
//
//      val allPosts = update.loadAllPosts()
//
//      val viewModel = Posts(allPosts)
////      bind GET to provides a list of value definitions that is to be passed into the renderer for all GET requests
//      Response(OK).body(renderer(viewModel))
//    },
//
//    "/post" bind org.http4k.core.Method.POST to { request ->
//
//      val update = PostsDatabase()
//
//      val title = request.form("title")?.takeIf { it.isNotBlank() } ?: "[No title]"
//
//      val body = request.form("body")?.takeIf { it.isNotBlank() } ?: "[Empty Body]"
//
//        val newPost = Post(0, title, body)
//
//        update.addPost(newPost)
//  //      bind GET to provides a list of value definitions that is to be passed into the renderer for all GET requests
//        Response(FOUND).header("Location","/post")
//  //      I'd assume this checks if input to viewModel is valid first before running the renderer
//    },
//
//    "/deletePost" bind org.http4k.core.Method.POST to { request ->
//
//      val id = request.form("postId")?.takeIf { it.isNotBlank() } ?: 1
//
//      val update = PostsDatabase()
//
//      update.deletePost(id)
//      //      bind GET to provides a list of value definitions that is to be passed into the renderer for all GET requests
//      Response(FOUND).header("Location","/post")
//      //      I'd assume this checks if input to viewModel is valid first before running the renderer
//    },

    "/assets" bind static(ResourceLoader.Directory("src/main/resources/assets")),
)

fun main() {
    val server = app.asServer(Jetty(9000)).start()
    println("Server started on http://localhost:" + server.port())
}
