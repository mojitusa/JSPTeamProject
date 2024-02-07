<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <title>Like Button</title>
</head>
<body>

    <button id="likeButton" onclick="toggleLike()">Like</button>

    <script>
        function toggleLike() {
            $.ajax({
                type: "POST",
                url: "likeServlet",
                success: function(response) {
                    if (response.success) {
                        alert("Liked!");
                    } else {
                        alert("Unliked!");
                    }
                },
                error: function(error) {
                    alert("Error: " + error);
                }
            });
        }
    </script>

</body>
</html>