package webapp

import database.Post
import org.http4k.template.ViewModel

data class Posts(val posts: List<Post>) : ViewModel {
    override fun template() = "views/Posts.ftl"

}
