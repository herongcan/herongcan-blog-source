{# 客服插件（DaoVoice） #}
<script>
  (function(i,s,o,g,r,a,m){i["DaoVoiceObject"]=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;a.charset="utf-8";m.parentNode.insertBefore(a,m)})(window,document,"script",(location.protocol === "https:" ? "https:" : "http:") + "//widget.daovoice.io/widget/0f81ff2f.js","daovoice");
  daovoice('init', { app_id: "4640a03b" });
  daovoice('update');
</script>

{# 动态特效（点击爱心 + 背景粒子） #}
<script src="/js/src/love.js"></script>

{# Live2D 挂件 #}
<script src="/live2dw/lib/L2Dwidget.min.js"></script>
<script>
  window.addEventListener('load', function () {
    if (window.L2Dwidget) {
      L2Dwidget.init({
        model: { jsonPath: "/live2dw/assets/haruto.model.json" },
        display: { position: "right", width: 75, height: 150 },
        mobile: { show: false },
        log: false,
        pluginJsPath: "lib/",
        pluginModelPath: "assets/",
        pluginRootPath: "live2dw/",
        tagMode: false
      });
    }
  });
</script>

{# 百度分享（与旧静态站一致） #}
{% if is_post() %}
<script>
  window._bd_share_config = {
    common: { bdText: "", bdMini: "1", bdMiniList: false, bdPic: "" },
    image: {
      viewList: ["tsina", "douban", "sqq", "qzone", "weixin", "twi", "fbook"],
      viewText: "分享到：",
      viewSize: "16"
    },
    slide: { bdImg: "5", bdPos: "left", bdTop: "100" }
  };
</script>
<script src="/static/api/js/share.js"></script>
{% endif %}

{#
Custom head.
#}
