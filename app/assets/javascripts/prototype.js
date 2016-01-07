$(function() {
  add_image("#prototype_photo_url_main", "#main_src");
  add_image("#prototype_photo_url_sub_0", "#sub_src_0")
  add_image("#prototype_photo_url_sub_1", "#sub_src_1")
});
  // アップロードするファイルを選択
  function add_image(photo_url, src){
    $(photo_url).change(function() {
      var file = $(this).prop('files')[0];

      // 画像以外は処理を停止
      if (! file.type.match('image.*')) {
        // クリア
        $(this).val('');
        $(photo_url).html('');
        return;
      }

      // 画像表示
      var reader = new FileReader();
      reader.onload = function() {
        var main_src = $(src).attr('src', reader.result);
        $(src).html(main_src);
      }
      reader.readAsDataURL(file);
    });
  };
