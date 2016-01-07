$(function() {
  $('input[type=file]').after('<span></span>');

  // アップロードするファイルを選択
  $("#prototype_photo_url_main").change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('span').html('');
      return;
    }

    // 画像表示
    var reader = new FileReader();
    reader.onload = function() {
      var main_src = $("#main_src").attr('src', reader.result);
      $('#main_src').html(main_src);
    }
    reader.readAsDataURL(file);
  });
});
