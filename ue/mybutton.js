UE.registerUI('button', function(editor, uiName) {
  //注册按钮执行时的command命令，使用命令默认就会带有回退操作
  editor.registerCommand(uiName, {
      execCommand: function() {
          alert('execCommand:' + uiName)
      }
  });
  //创建一个button
  var btn = new UE.ui.Button({
      //按钮的名字
      name: uiName,
      //提示
      title: uiName,
      //添加额外样式，指定icon图标，这里默认使用一个重复的icon
      cssRules: 'background-position: -500px 0;',
      //点击时执行的命令
      onclick: function() {
          //这里可以不用执行命令,做你自己的操作也可
          // editor.execCommand(uiName);
          // editor: UEditor编辑器对象实例。

          let contentTxt = editor.getContentTxt();    // 获取编辑器中的纯文本。
          let about = contentTxt.substr(0, 100);
          // $('#txtabout').text(about);
          document.getElementById('txtabout').innerText = about;

          // 提取首张图像的URL
          let editContent = editor.getContent();
          let imgs = editContent.match(/<img[^>]*>/ig);
          // 获取首张图像的URL
          if(imgs) {
            let url = /src=['"]?([^'"]*)['"]?/i.exec(imgs[0])
            console.log(url);
            $('.coverimage').css('background-image', `url(${url[1]})`);
          }
      }
  });
  //当点到编辑内容上时，按钮要做的状态反射
  editor.addListener('selectionchange', function() {
      var state = editor.queryCommandState(uiName);
      if (state == -1) {
          btn.setDisabled(true);
          btn.setChecked(false);
      } else {
          btn.setDisabled(false);
          btn.setChecked(state);
      }
  });
  //因为你是添加button,所以需要返回这个button
  return btn;
});