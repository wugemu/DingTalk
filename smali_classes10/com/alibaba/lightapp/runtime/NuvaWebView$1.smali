.class final Lcom/alibaba/lightapp/runtime/NuvaWebView$1;
.super Lhdq;
.source "NuvaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/NuvaWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$1;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-direct {p0}, Lhdq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 516
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$1;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .line 2412
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v4, :cond_3

    move v0, v2

    .line 2310
    :goto_0
    if-eqz v0, :cond_7

    .line 2311
    iget-boolean v0, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    if-nez v0, :cond_5

    .line 2312
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    move v0, v1

    .line 2318
    :goto_1
    if-eqz v0, :cond_6

    .line 2319
    invoke-static {}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2320
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitJsInject(I)V

    .line 2641
    const-string/jumbo v0, "lightapp/js/nuva.js"

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c(Ljava/lang/String;)V

    .line 2322
    const-string/jumbo v0, "JsApi"

    iget-object v1, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c:Ljava/lang/String;

    const-string/jumbo v2, "NuvaWebView"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "inject nuvaJs after pagefinished"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2650
    :cond_0
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "f_lightapp_enable_inject_detector_js"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2651
    const-string/jumbo v0, "lightapp/js/detector.js"

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c(Ljava/lang/String;)V

    .line 2325
    :cond_1
    iget-object v0, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_6

    .line 2326
    iget-object v1, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 3335
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3336
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdl;

    .line 3337
    if-eqz v0, :cond_2

    .line 4016
    iget-object v0, v0, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 3339
    if-eqz v0, :cond_2

    .line 3340
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->onPageFinished(Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :catch_0
    move-exception v0

    :goto_3
    return-void

    .line 2416
    :cond_3
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v4, "dt_function"

    const-string/jumbo v5, "inject_js_check_page_finish"

    .line 2417
    invoke-interface {v0, v4, v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 2418
    if-eqz v0, :cond_4

    .line 2419
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2420
    const-string/jumbo v4, "H5"

    const/4 v5, 0x0

    const-string/jumbo v6, "checkJudgePageFinish"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "value ="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2421
    const-string/jumbo v4, "check"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 2422
    goto/16 :goto_0

    .line 2426
    :cond_4
    const-string/jumbo v0, "H5"

    const/4 v4, 0x0

    const-string/jumbo v5, "checkJudgePageFinish"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "no check"

    aput-object v8, v6, v7

    invoke-static {v0, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 2427
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 2314
    goto/16 :goto_1

    .line 517
    :cond_6
    invoke-super {p0, p1, p2}, Lhdq;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public final onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$1;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .line 1297
    iput-object p2, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c:Ljava/lang/String;

    .line 1298
    iput-boolean v2, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    .line 1302
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v1, :cond_1

    .line 1303
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 1319
    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Z)V

    .line 1321
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1322
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdl;

    .line 1323
    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, v0, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 1325
    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->onPageStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lhdq;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 511
    return-void
.end method
