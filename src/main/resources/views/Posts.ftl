<html lang="EN">
    <head>
        <link rel="stylesheet" href="/assets/style.css">
        <title>Posts</title>
    </head>
    <body>
        <h1>Hello!</h1>
        <p>These are the posts from today.</p>
        <div>
            <#list posts as post>
                <form action="/deletePost" method="post">
                    <p>Id: ${post.id}</p>
                    <p>Title: ${post.title}</p>
                    <p>Body: ${post.body}</p>
                    <input type="hidden" name="postId" value="${post.id}">
                    <button type="submit">Delete Post</button>
                </form>
            </#list>
        </div>
        <p></p>
        <div>
            <form action="/post" method="post">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title">
                <label for="body">Body:</label>
                <input type="text" id="body" name="body">
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>