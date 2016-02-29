$(() ->
  $('#myEditor').markdownEditor();
  $(".post-form form").submit(() ->
    markdownContent = $('#myEditor').markdownEditor('content');
    $("#post_content").val(markdownContent)
  )
)
