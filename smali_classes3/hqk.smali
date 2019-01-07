.class public final Lhqk;
.super Ljava/lang/Object;
.source "WebViewPreloadImpl.java"

# interfaces
.implements Lhqh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhqh",
        "<",
        "Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhqk;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;)V
    .locals 5
    .param p0, "webViewPreloadModel"    # Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .prologue
    .line 333
    if-eqz p0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    .line 335
    .local v0, "view":Landroid/view/View;
    instance-of v2, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v2, :cond_0

    .line 336
    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v1

    .line 337
    .local v1, "webView":Lcom/uc/webview/export/WebView;
    instance-of v2, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v2, :cond_0

    .line 338
    check-cast v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 4374
    .end local v1    # "webView":Lcom/uc/webview/export/WebView;
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v2, :cond_0

    .line 4375
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 4474
    const-string/jumbo v3, "becomeActive"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 342
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 244
    if-eqz p0, :cond_2

    .line 245
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 265
    .end local p0    # "context":Landroid/content/Context;
    .local v1, "nextBaseContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return v2

    .line 249
    .end local v1    # "nextBaseContext":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    instance-of v3, p0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 250
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 251
    .local v0, "baseContext":Landroid/content/Context;
    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 255
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 256
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "baseContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 257
    .restart local v1    # "nextBaseContext":Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 265
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private d(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 6
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 137
    if-nez p1, :cond_0

    move-object v1, v3

    .line 149
    :goto_0
    return-object v1

    .line 140
    :cond_0
    iget-object v4, p0, Lhqk;->a:Ljava/util/Map;

    invoke-static {p1}, Lhqk;->e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .line 141
    .local v2, "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    if-eqz v2, :cond_1

    .line 143
    :try_start_0
    iget-object v1, v2, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    check-cast v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .local v1, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    goto :goto_0

    .line 145
    .end local v1    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    move-object v1, v3

    .line 149
    goto :goto_0
.end method

.method private static e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;
    .locals 6
    .param p0, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    const-string/jumbo v1, ""

    .line 317
    :goto_0
    return-object v1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "preloadUrl":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 310
    .local v0, "host":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 311
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 312
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 315
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getPreloadId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "preloadKey":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 69
    if-nez p2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 73
    :cond_1
    invoke-static {}, Lhqg;->a()Lhqg;

    move-result-object v5

    .line 3042
    iget-object v6, v5, Lhqg;->a:Lhqg$a;

    if-eqz v6, :cond_2

    .line 3043
    iget-object v6, v5, Lhqg;->a:Lhqg$a;

    invoke-virtual {v6}, Lhqg$a;->b()V

    .line 3044
    const/4 v6, 0x0

    iput-object v6, v5, Lhqg;->a:Lhqg$a;

    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getPreloadId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    const/16 v4, 0x64

    goto :goto_0

    .line 80
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v4, "micro_app"

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 84
    const/16 v4, 0x12c

    goto :goto_0

    .line 87
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v5, p0, Lhqk;->a:Ljava/util/Map;

    invoke-static {p2}, Lhqk;->e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .line 88
    .local v3, "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    if-eqz v3, :cond_0

    .line 89
    iget-object v0, v3, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->activity:Landroid/app/Activity;

    .line 90
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lhrf;->a(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    invoke-static {v3}, Lhqk;->a(Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;)V

    .line 93
    const/16 v4, 0x190

    goto :goto_0

    .line 96
    :cond_5
    iget-object v2, v3, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->preloadModel:Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .line 97
    .local v2, "preloadedModel":Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;
    if-eqz v2, :cond_0

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v4, "micro_app"

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v4, "intent_key_preload_id"

    invoke-static {p2}, Lhqk;->e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v4, "intent_key_preload_model"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 103
    const-string/jumbo v4, "intent_key_preload_switch"

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->isKeepLive()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 106
    invoke-static {v3}, Lhqk;->a(Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;)V

    .line 108
    const/16 v4, 0xc8

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)I
    .locals 8
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v2, -0x1

    .line 64
    :goto_0
    return v2

    .line 47
    :cond_0
    invoke-static {p1}, Lhqk;->e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "preloadKey":Ljava/lang/String;
    iget-object v2, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .line 50
    .local v1, "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    if-eqz v1, :cond_1

    .line 51
    const/16 v2, 0x130

    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 57
    new-instance v1, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .end local v1    # "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;-><init>()V

    .line 58
    .restart local v1    # "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    iput-object p1, v1, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->preloadModel:Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .line 1281
    new-instance v2, Landroid/content/MutableContextWrapper;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 1282
    new-instance v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-direct {v3, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;-><init>(Landroid/content/Context;)V

    .line 1283
    new-instance v2, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 1284
    invoke-virtual {v2, p1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setPreloadModel(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)V

    .line 1285
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v3, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1288
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f()V

    .line 1289
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a()V

    .line 59
    iput-object v3, v1, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    .line 60
    iget-object v2, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    invoke-static {}, Lhqg;->a()Lhqg;

    move-result-object v2

    new-instance v3, Lhqk$1;

    invoke-direct {v3, p0}, Lhqk$1;-><init>(Lhqk;)V

    .line 3026
    iget-object v4, v2, Lhqg;->a:Lhqg$a;

    if-eqz v4, :cond_2

    .line 3027
    iget-object v4, v2, Lhqg;->a:Lhqg$a;

    invoke-virtual {v4}, Lhqg$a;->b()V

    .line 3029
    :cond_2
    new-instance v4, Lhqg$a;

    new-instance v5, Lhqg$1;

    invoke-direct {v5, v2, v3}, Lhqg$1;-><init>(Lhqg;Lhqg$b;)V

    const-wide/32 v6, 0xea60

    invoke-direct {v4, v2, v5, v6, v7}, Lhqg$a;-><init>(Lhqg;Ljava/lang/Runnable;J)V

    iput-object v4, v2, Lhqg;->a:Lhqg$a;

    .line 3038
    iget-object v2, v2, Lhqg;->a:Lhqg$a;

    invoke-virtual {v2}, Lhqg$a;->a()V

    .line 64
    const/16 v2, 0xc8

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 9
    .param p1, "preloadInstance"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 170
    instance-of v7, p1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v7, :cond_4

    .line 171
    iget-object v7, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 172
    iget-object v7, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 173
    .local v2, "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 174
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "key":Ljava/lang/String;
    iget-object v8, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .line 176
    .local v5, "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    if-eqz v5, :cond_0

    .line 177
    iget-object v3, v5, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    .line 178
    .local v3, "view":Landroid/view/View;
    instance-of v8, v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v8, :cond_0

    .line 179
    check-cast v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v4

    .line 180
    .local v4, "webView":Lcom/uc/webview/export/WebView;
    if-ne p1, v4, :cond_0

    .line 181
    iget-object v7, v5, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_2

    .line 182
    const/4 v6, 0x3

    .line 203
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "webView":Lcom/uc/webview/export/WebView;
    .end local v5    # "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    .end local p1    # "preloadInstance":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v6

    .line 184
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "webView":Lcom/uc/webview/export/WebView;
    .restart local v5    # "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    .restart local p1    # "preloadInstance":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Lcom/uc/webview/export/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lhqk;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    const/4 v6, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "webView":Lcom/uc/webview/export/WebView;
    .end local v5    # "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    :cond_3
    check-cast p1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .end local p1    # "preloadInstance":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    .restart local v0    # "context":Landroid/content/Context;
    invoke-static {v0}, Lhqk;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 203
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 209
    iget-object v5, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 210
    .local v1, "preloadKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, "preloadKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    iget-object v6, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .line 213
    .local v4, "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    if-eqz v4, :cond_0

    .line 214
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    instance-of v6, v6, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v6, :cond_0

    .line 215
    iget-object v2, v4, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    check-cast v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 216
    .local v2, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v3

    .line 217
    .local v3, "webView":Lcom/uc/webview/export/WebView;
    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v3}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_0

    .line 224
    .end local v0    # "preloadKey":Ljava/lang/String;
    .end local v2    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .end local v3    # "webView":Lcom/uc/webview/export/WebView;
    .end local v4    # "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    :cond_1
    iget-object v5, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 226
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 154
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string/jumbo v3, "intent_key_preload_model"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .line 159
    .local v1, "preloadModel":Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;
    if-eqz v1, :cond_0

    .line 160
    invoke-static {v1}, Lhqk;->e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "preloadKey":Ljava/lang/String;
    iget-object v3, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .line 162
    .local v2, "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    if-eqz v2, :cond_0

    .line 163
    iput-object p1, v2, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->activity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string/jumbo v3, "intent_key_preload_model"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    .line 235
    .local v1, "preloadModel":Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;
    if-eqz v1, :cond_0

    .line 236
    invoke-static {v1}, Lhqk;->e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "preloadKey":Ljava/lang/String;
    iget-object v3, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;

    .line 3321
    .local v2, "webViewPreloadModel":Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;
    if-eqz v2, :cond_0

    .line 3322
    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/preload/WebViewPreloadModel;->view:Landroid/view/View;

    .line 3323
    instance-of v4, v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    if-eqz v4, :cond_0

    .line 3324
    check-cast v3, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v3

    .line 3325
    instance-of v4, v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v4, :cond_0

    .line 3326
    check-cast v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 3380
    iget-object v4, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v4, :cond_0

    .line 3381
    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 3478
    const-string/jumbo v4, "keepAlive"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Z
    .locals 3
    .param p1, "preloadModel"    # Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    invoke-static {p1}, Lhqk;->e(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "preloadKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v1, p0, Lhqk;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final synthetic c(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lhqk;->d(Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    return-object v0
.end method
