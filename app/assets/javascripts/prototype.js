$(function() {
  $('input[type=file]').after('<span></span>');

  // アップロードするファイルを選択
  $("#prototype_photo_url_main").change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('#prototype_photo_url_main').html('');
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

  $("#prototype_photo_url_sub_0").change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('#prototype_photo_url_main_0').html('');
      return;
    }

    // 画像表示
    var reader = new FileReader();
    reader.onload = function() {
      var main_src = $("#sub_src_0").attr('src', reader.result);
      $('#sub_src_0').html(main_src);
    }
    reader.readAsDataURL(file);
  });

  $("#prototype_photo_url_main_1").change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('#prototype_photo_url_main_1').html('');
      return;
    }

    // 画像表示
    var reader = new FileReader();
    reader.onload = function() {
      var main_src = $("#sub_src_1").attr('src', reader.result);
      $('#main_src').html(main_src);
    }
    reader.readAsDataURL(file);
  });
});


