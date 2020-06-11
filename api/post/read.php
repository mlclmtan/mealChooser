<?php

// Headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../../config/Database.php';
include_once '../../models/Post.php';

// Instantiate DB & connect
$database = new Database();
$db = $database->connect();

// Instantiate blog post object
$post = new Post($db);

// Blog post query
$result = $post->read();
// Get row count
$num = $result->rowCount();

// Check if any posts
if ($num > 0) {
    $row = $result->fetchAll(PDO::FETCH_ASSOC);

    // Turn to JSON & output
    echo json_encode($row);

} else {
    // No Posts
    echo json_encode(
        array('message' => 'No Posts Found')
    );
}
