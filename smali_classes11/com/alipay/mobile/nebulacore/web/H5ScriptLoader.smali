.class public Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
.super Ljava/lang/Object;
.source "H5ScriptLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ScriptLoader"

.field public static final startupParams:Ljava/lang/String; = "startupParams"


# instance fields
.field public bizLoaded:Z

.field public bridgeLoaded:Z

.field private bridgeParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private curAppId:Ljava/lang/String;

.field private curPublicId:Ljava/lang/String;

.field private curUrl:Ljava/lang/String;

.field private enableScan:Z

.field private h5Page:Liop;

.field private loaderLock:Ljava/lang/Object;

.field private startParam:Landroid/os/Bundle;

.field private tinyApp:Z

.field private webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 5
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    .line 63
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 64
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 65
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 66
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->startParam:Landroid/os/Bundle;

    .line 67
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->startParam:Landroid/os/Bundle;

    const-string/jumbo v3, "publicId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->curPublicId:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->startParam:Landroid/os/Bundle;

    const-string/jumbo v3, "appId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->curAppId:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->startParam:Landroid/os/Bundle;

    const-string/jumbo v3, "isTinyApp"

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->tinyApp:Z

    .line 71
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loaderLock:Ljava/lang/Object;

    .line 72
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->enableScan:Z

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeParams:Ljava/util/HashMap;

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->startParam:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 75
    .local v0, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "bizScenario"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "scenario":Ljava/lang/String;
    const-string/jumbo v2, "scanApp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->enableScanJS(Z)V

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->removeBridgeTimeParam(Lcom/alibaba/fastjson/JSONObject;)V

    .line 80
    const-string/jumbo v2, "startupParams"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private enableNativeKeyboard()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 415
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    if-nez v8, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v7

    .line 418
    :cond_1
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "isTinyApp"

    invoke-static {v8, v9, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 419
    .local v4, "isTinyApp":Z
    if-eqz v4, :cond_0

    .line 422
    const-string/jumbo v8, "h5_nativeInput4Android"

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "configStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 424
    .local v2, "configObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 427
    const-string/jumbo v8, "switch"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "switchStr":Ljava/lang/String;
    const-string/jumbo v8, "YES"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 429
    .local v5, "switchBool":Z
    if-eqz v5, :cond_0

    .line 432
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "appId"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v8, "blackList"

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 434
    .local v1, "blackList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 435
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 439
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private enableScanJS(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->enableScan:Z

    .line 85
    return-void
.end method

.method private getAllJsV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "js"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "(function(){if(window.HASINJECTDRNAMICSCRIPT){console.log(\"has load h5_dsRulesV2: \"+window.HASINJECTDRNAMICSCRIPT);return}window.HASINJECTDRNAMICSCRIPT=false;function onDOMReady(callback){var readyRE=/complete|loaded|interactive/;if(readyRE.test(document.readyState)){setTimeout(function(){callback()},1)}else{document.defaultView.addEventListener(\"DOMContentLoaded\",function(){callback()},false)}}onDOMReady(function(){if(!window.HASINJECTDRNAMICSCRIPT){"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "console.log(\"load h5_dsRulesV2 success\");window.HASINJECTDRNAMICSCRIPT=true}})})();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method private getCrossOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dynamicScript"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nebula-addcors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v0, "script.setAttribute(\'crossorigin\',\'\');"

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getDynamicScriptBuilder(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5_DynamicScript"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v4, "scriptBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 287
    :cond_0
    const-string/jumbo v7, "H5ScriptLoader"

    const-string/jumbo v8, "no config found for dynamic script"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_1
    :goto_0
    return-object v4

    .line 291
    :cond_2
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 292
    .local v2, "jaScripts":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 293
    :cond_3
    const-string/jumbo v7, "H5ScriptLoader"

    const-string/jumbo v8, "invalid dynamic script."

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_4
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 298
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 299
    .local v3, "joScript":Lcom/alibaba/fastjson/JSONObject;
    const/4 v5, 0x0

    .line 301
    .local v5, "scriptList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->parseDynamic(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 306
    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 310
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, "dynamicScript":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 314
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->getLoadJsStrV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 302
    .end local v0    # "dynamicScript":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 303
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5ScriptLoader"

    const-string/jumbo v8, "parse dynamic script exception."

    invoke-static {v7, v8, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 297
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getLoadJsStrV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dynamicScript"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    const-string/jumbo v1, "H5ScriptLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load dynamicV2 script "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "var script,head=document.head||document.documentElement;script=document.createElement(\"script\");script.async=true;script.charset=\"UTF-8\";script.src=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->getCrossOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "head.insertBefore(script,head.firstChild);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "js":Ljava/lang/String;
    return-object v0
.end method

.method private ifMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cond"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 399
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 400
    .local v1, "pattern":Ljava/util/regex/Pattern;
    if-nez v1, :cond_0

    .line 401
    const/4 v2, 0x0

    .line 404
    :goto_0
    return v2

    .line 403
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 404
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    goto :goto_0
.end method

.method private loadBridge(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 8
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 197
    .local v4, "enterTime":J
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->composeBridge()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "bridgeStr":Ljava/lang/String;
    const-string/jumbo v1, "H5ScriptLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "bridgeStr "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "javascript:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v6, "bridge data loaded!"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setBridgeReadyTime()V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 204
    .local v2, "deltaTime":J
    const-string/jumbo v1, "H5ScriptLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "load bridge delta time "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private loadDynamic(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 6
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    const-string/jumbo v1, "h5_dsRules"

    .line 226
    .local v1, "h5_dsRules":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->tinyApp:Z

    if-eqz v2, :cond_0

    .line 228
    const-string/jumbo v1, "h5_dsRulesForTinyApp"

    .line 231
    :cond_0
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "h5_DynamicScript":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "isTinyApp"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 246
    :goto_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 247
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs4Jsapi(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 249
    :cond_1
    return-void

    .line 243
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "javascript"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 408
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseDynamic(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;
    .locals 11
    .param p1, "joScript"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v10, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 350
    :cond_0
    const/4 v7, 0x0

    .line 395
    :cond_1
    return-object v7

    .line 353
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v7, "scriptList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 356
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 357
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 359
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 363
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 365
    .local v3, "jaConds":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 366
    :cond_4
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_5
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 373
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 375
    .local v4, "joCond":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "appId"

    invoke-static {v4, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "appIdCond":Ljava/lang/String;
    const-string/jumbo v10, "publicId"

    invoke-static {v4, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, "publicIdCond":Ljava/lang/String;
    const-string/jumbo v10, "url"

    invoke-static {v4, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "urlCond":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->curAppId:Ljava/lang/String;

    invoke-direct {p0, v10, v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->ifMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 382
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->curPublicId:Ljava/lang/String;

    invoke-direct {p0, v10, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->ifMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 384
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->curUrl:Ljava/lang/String;

    invoke-direct {p0, v10, v9}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->ifMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    const/4 v5, 0x1

    .line 387
    .local v5, "matches":Z
    :goto_2
    if-eqz v5, :cond_a

    .line 388
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v5    # "matches":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 372
    .restart local v5    # "matches":Z
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setBridgeReadyTime()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getPageData()Lior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getPageData()Lior;

    move-result-object v0

    const-string/jumbo v1, "bridgeReady"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lior;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public composeBridge()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 214
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v0, :cond_0

    .line 215
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v1, "bridge already loaded!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const-string/jumbo v0, "H5ScriptLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "composeBridge "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeParams:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    .line 221
    invoke-interface {v0}, Liop;->getWebViewId()I

    move-result v0

    .line 220
    :goto_1
    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->loadJsBridge(Ljava/util/HashMap;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public loadDynamicJs(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 9
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5_DynamicScript"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 253
    .local v2, "enterTime":J
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->getDynamicScriptBuilder(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    .local v5, "scriptBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "finalScript":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->getAllJsV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 261
    .local v0, "deltaTime":J
    const-string/jumbo v6, "H5ScriptLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "load dynamic delta time "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadDynamicJs4Jsapi(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "webView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p2, "h5_DynamicScript"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 266
    .local v2, "enterTime":J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    sget-object p2, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    .line 269
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    const-string/jumbo v5, "H5ScriptLoader"

    const-string/jumbo v6, "load loadDynamicJs4Jsapi none return"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->getDynamicScriptBuilder(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 274
    .local v4, "scriptBuilder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "(function(){function onDOMReady(callback){var readyRE=/complete|loaded|interactive/;if(readyRE.test(document.readyState)){setTimeout(function(){callback()},1);}else{document.defaultView.addEventListener(\"DOMContentLoaded\",function(){callback()},false);}}onDOMReady(function(){"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "console.log(\"load insertJS success\")});})();"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 280
    .local v0, "deltaTime":J
    const-string/jumbo v5, "H5ScriptLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "load dynamic4jsapi delta time "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadScript()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 94
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-nez v9, :cond_0

    .line 95
    const-string/jumbo v8, "H5ScriptLoader"

    const-string/jumbo v9, "invalid web view parameter!"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return v5

    .line 99
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->curUrl:Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 101
    .local v6, "time":J
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loaderLock:Ljava/lang/Object;

    monitor-enter v9

    .line 103
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamic(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 105
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v5, :cond_1

    .line 106
    monitor-exit v9

    move v5, v8

    goto :goto_0

    .line 108
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->startParam:Landroid/os/Bundle;

    const-string/jumbo v10, "isPrerender"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 109
    .local v1, "isPrerender":Z
    if-nez v1, :cond_2

    .line 110
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    if-eqz v5, :cond_2

    .line 111
    const-string/jumbo v5, "H5ScriptLoader"

    const-string/jumbo v10, "injectPageReady when normal window present"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    check-cast v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->injectPageReady()V

    .line 115
    :cond_2
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-nez v5, :cond_3

    .line 117
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadBridge(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 120
    :cond_3
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-nez v5, :cond_8

    .line 121
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 123
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->enableScan:Z

    if-eqz v5, :cond_4

    .line 124
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v10, Lcom/alipay/mobile/nebula/R$raw;->h5_scan:I

    invoke-static {v10}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 127
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v10, Lcom/alipay/mobile/nebula/R$raw;->share_new_min:I

    invoke-static {v10}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 130
    sget v5, Lcom/alipay/mobile/nebula/R$raw;->h5_keyboard:I

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "keyboardStr":Ljava/lang/String;
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 132
    const-string/jumbo v5, "/sdcard/h5_keyboard.js"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 133
    const-string/jumbo v5, "/sdcard/h5_keyboard.js"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    :cond_5
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/Nebula;->enableNativeKeyboard(Liop;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v10, "DEBUG_PANEL_PAGE_TAG"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 137
    const-string/jumbo v5, "H5ScriptLoader"

    const-string/jumbo v10, "inject native input js"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 144
    :cond_6
    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->tinyApp:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "yes"

    const-string/jumbo v10, "h5_loadJavascript_for_tiny"

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 146
    monitor-exit v9

    move v5, v8

    goto/16 :goto_0

    .line 150
    :cond_7
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v10, Lcom/alipay/mobile/nebula/R$raw;->h5_performance:I

    invoke-static {v10}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v10, Lcom/alipay/mobile/nebula/R$raw;->h5_bizlog_pre:I

    invoke-static {v10}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 154
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v10, Lcom/alipay/mobile/nebula/R$raw;->h5_startparam:I

    invoke-static {v10}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->h5Page:Liop;

    const-string/jumbo v10, "getLocation"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebulacore/Nebula;->supportJsaApi(Liop;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 158
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v10, Lcom/alipay/mobile/nebula/R$raw;->h5location_min:I

    invoke-static {v10}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadJavascript(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 165
    .end local v4    # "keyboardStr":Ljava/lang/String;
    :cond_8
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_9

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "debugTips":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "console.log(\'%cWelcome to NEBULA%c powered by UC\\n%cTips:\\n\', \'color:#1874CD;font-size:20px\',\'color:#FF7F24;font-size:15px\',\'color:red;font-size:13px\');"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v5, "console.log(\'%c1.ajax with get method may be cached, you can try to set \\\'Cache-control: no-cache\\\' in server side or add random param in request url\',\'color:red;font-size:13px\');"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "javascript:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    .end local v0    # "debugTips":Ljava/lang/StringBuilder;
    :cond_9
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v6

    .line 173
    .local v2, "elapse":J
    const-string/jumbo v5, "H5ScriptLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "load javascript elapse ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->curUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 174
    goto/16 :goto_0

    .line 171
    .end local v1    # "isPrerender":Z
    .end local v2    # "elapse":J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public resetBridge()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 88
    const-string/jumbo v0, "H5ScriptLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetBridge "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 90
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 91
    return-void
.end method

.method public setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v1, "invalid js parameters!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-nez v0, :cond_2

    .line 185
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v2, "bridge not loaded."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    monitor-exit v1

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 188
    :cond_2
    :try_start_1
    const-string/jumbo v0, "H5ScriptLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setParamsToWebPage [key] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [value] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->webView:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "javascript:if(typeof AlipayJSBridge === \'object\'){AlipayJSBridge."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 191
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
