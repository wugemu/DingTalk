.class public Lcom/alibaba/lightapp/runtime/NuvaWebView;
.super Lcom/alibaba/lightapp/runtime/WebViewWrapper;
.source "NuvaWebView.java"

# interfaces
.implements Lhde;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/NuvaWebView$a;,
        Lcom/alibaba/lightapp/runtime/NuvaWebView$b;
    }
.end annotation


# static fields
.field private static g:Z

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/lightapp/runtime/PluginManager;

.field c:Ljava/lang/String;

.field d:Z

.field public e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

.field private i:Lhdh;

.field private j:Lhdg;

.field private k:Lcom/alibaba/lightapp/runtime/NuvaWebView$b;

.field private l:Lcom/alibaba/lightapp/runtime/INuvaContext;

.field private m:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->g:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    .line 80
    new-instance v0, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 85
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    .line 80
    new-instance v0, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 95
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    .line 80
    new-instance v0, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 100
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    .line 80
    new-instance v0, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 106
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSystemCore"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;-><init>(Landroid/content/Context;Z)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d:Z

    .line 80
    new-instance v0, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 90
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/NuvaWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/NuvaWebView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    return-object v0
.end method

.method static f()Z
    .locals 2

    .prologue
    .line 661
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 662
    const/4 v0, 0x0

    .line 664
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lhhr;->a()Lhhr;

    const-string/jumbo v0, "f_lightapp_use_uc_provider_inject_js"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 499
    new-instance v3, Lhdh;

    invoke-direct {v3, p0}, Lhdh;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i:Lhdh;

    .line 500
    new-instance v3, Lhdg;

    invoke-direct {v3, p0}, Lhdg;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->j:Lhdg;

    .line 502
    new-instance v3, Lhdr;

    invoke-direct {v3, p0}, Lhdr;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 506
    new-instance v3, Lcom/alibaba/lightapp/runtime/NuvaWebView$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a(Lhdq;)V

    .line 525
    new-instance v3, Lcom/alibaba/lightapp/runtime/NuvaWebView$2;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$2;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a(Lhdp;)V

    .line 608
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    .line 609
    .local v0, "settings":Lcom/uc/webview/export/WebSettings;
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0, v4}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 619
    :cond_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    .line 622
    .local v2, "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    if-eqz v2, :cond_1

    .line 623
    new-instance v3, Lcom/alibaba/lightapp/runtime/NuvaWebView$3;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$3;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/extension/UCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    .line 630
    const-string/jumbo v3, "JsApi"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c:Ljava/lang/String;

    const-string/jumbo v5, "NuvaWebView"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "inject nuvaJs in UC Provider"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitJsInject(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v2    # "ucExtension":Lcom/uc/webview/export/extension/UCExtension;
    :cond_1
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a()Lhde$a;
    .locals 1

    .prologue
    .line 46
    .line 8218
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 46
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "originUrl"    # Ljava/lang/String;

    .prologue
    .line 267
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "argsJson"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 231
    .local v6, "lastDot":I
    move-object v2, p1

    .line 232
    .local v2, "actionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 234
    .local v1, "serviceName":Ljava/lang/String;
    if-ltz v6, :cond_0

    .line 235
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "argsJson"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;
    .param p5, "async"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->c:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_1

    .line 388
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 6501
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

    .line 6502
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdl;

    .line 6503
    if-eqz v0, :cond_0

    .line 7016
    iget-object v0, v0, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 6505
    if-eqz v0, :cond_0

    .line 6506
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;Ljava/lang/String;)V
    .locals 1
    .param p1, "jsInterface"    # Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plugin"    # Lcom/alibaba/lightapp/runtime/Plugin;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 474
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 466
    :cond_0
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    const-string/jumbo v2, "accessibility"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "accessibilityTraversal"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v1, "hm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "error_desc"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v2, "category"

    const-string/jumbo v3, "NullPointerException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v2, "item"

    const-string/jumbo v3, "addJavascriptInterface"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgvi;->warn(Ljava/util/Map;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i:Lhdh;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i:Lhdh;

    .line 2038
    const/4 v1, 0x1

    iput-boolean v1, v0, Lhdh;->b:Z

    .line 336
    :cond_0
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->onPause()V

    .line 338
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 339
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->pauseTimers()V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_4

    .line 343
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 2348
    const-string/jumbo v0, "pause"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2351
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 2352
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2353
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->e:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2363
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2364
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdl;

    .line 2365
    if-eqz v0, :cond_3

    .line 3016
    iget-object v0, v0, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 2367
    if-eqz v0, :cond_3

    .line 2368
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Plugin;->onPause()V

    goto :goto_1

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 345
    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 183
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->onResume()V

    .line 350
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->resumeTimers()V

    .line 351
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i:Lhdh;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i:Lhdh;

    .line 3042
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhdh;->b:Z

    .line 3043
    invoke-virtual {v0}, Lhdh;->b()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_4

    .line 355
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 3376
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 3377
    new-instance v0, Lcom/alibaba/lightapp/runtime/PluginManager$2;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager$2;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->e:Landroid/content/BroadcastReceiver;

    .line 3399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3400
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 3401
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3405
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3454
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3455
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdl;

    .line 3456
    if-eqz v0, :cond_2

    .line 4016
    iget-object v0, v0, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 3458
    if-eqz v0, :cond_2

    .line 3459
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 3460
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Plugin;->onResume()V

    goto :goto_1

    .line 3406
    :catch_0
    move-exception v0

    .line 3407
    const-string/jumbo v2, "lightapp"

    const-string/jumbo v3, "H5"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3465
    :cond_3
    const-string/jumbo v0, "resume"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 357
    :cond_4
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsStatement"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i:Lhdh;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->i:Lhdh;

    invoke-virtual {v0, p1}, Lhdh;->a(Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 669
    sget-object v6, Lcom/alibaba/lightapp/runtime/NuvaWebView;->h:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/alibaba/lightapp/runtime/NuvaWebView;->h:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 671
    :cond_0
    const/4 v0, 0x0

    .line 673
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    .line 674
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 675
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 679
    .local v5, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 680
    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 685
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 686
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    if-eqz v0, :cond_1

    .line 691
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 698
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    sget-object v6, Lcom/alibaba/lightapp/runtime/NuvaWebView;->h:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6

    .line 683
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    :try_start_4
    sget-object v6, Lcom/alibaba/lightapp/runtime/NuvaWebView;->h:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 691
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 692
    :catch_1
    move-exception v2

    .line 693
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 692
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 693
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 689
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    .line 691
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 694
    :cond_3
    :goto_4
    throw v6

    .line 692
    :catch_3
    move-exception v2

    .line 693
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 689
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 685
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_3

    .line 368
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 4483
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

    .line 4484
    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdl;

    .line 4485
    if-eqz v0, :cond_0

    .line 5016
    iget-object v0, v0, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 4487
    if-eqz v0, :cond_0

    .line 4488
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    goto :goto_0

    .line 5754
    :cond_1
    const-string/jumbo v0, "runtime"

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/String;)V

    .line 5755
    const-string/jumbo v0, "runtime.message"

    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/String;)V

    .line 4493
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 4494
    iget-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->a:Landroid/content/Context;

    .line 4496
    :cond_2
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->h:Landroid/view/View;

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->destroy()V

    .line 371
    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 431
    const-string/jumbo v0, ""

    .line 432
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/WebBackForwardList;->getCurrentItem()Lcom/uc/webview/export/WebHistoryItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/WebBackForwardList;->getCurrentItem()Lcom/uc/webview/export/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7441
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->k:Lcom/alibaba/lightapp/runtime/NuvaWebView$b;

    if-eqz v1, :cond_1

    .line 7442
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->k:Lcom/alibaba/lightapp/runtime/NuvaWebView$b;

    invoke-interface {v1, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$b;->a(Ljava/lang/String;)V

    .line 438
    :cond_1
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->m:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->m:Landroid/app/Activity;

    .line 148
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const/16 v2, 0xa

    .line 130
    .local v2, "times":I
    const/4 v0, 0x0

    .line 131
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "ctx":Landroid/content/Context;
    move v3, v2

    .line 133
    .end local v2    # "times":I
    .local v3, "times":I
    :goto_1
    if-eqz v1, :cond_4

    .line 137
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 138
    check-cast v0, Landroid/app/Activity;

    move v2, v3

    .line 147
    .end local v3    # "times":I
    .restart local v2    # "times":I
    :cond_1
    :goto_2
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->m:Landroid/app/Activity;

    goto :goto_0

    .line 142
    .end local v2    # "times":I
    .restart local v3    # "times":I
    :cond_2
    instance-of v4, v1, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_3

    .line 143
    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1    # "ctx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 145
    .restart local v1    # "ctx":Landroid/content/Context;
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "times":I
    .restart local v2    # "times":I
    if-lez v3, :cond_1

    move v3, v2

    .end local v2    # "times":I
    .restart local v3    # "times":I
    goto :goto_1

    :cond_4
    move v2, v3

    .end local v3    # "times":I
    .restart local v2    # "times":I
    goto :goto_2
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->l:Lcom/alibaba/lightapp/runtime/INuvaContext;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "es"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 1184
    iput-object p1, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    .line 287
    :cond_0
    return-void
.end method

.method public setNuvaProvider(Lcom/alibaba/lightapp/runtime/INuvaContext;)V
    .locals 0
    .param p1, "nuva"    # Lcom/alibaba/lightapp/runtime/INuvaContext;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->l:Lcom/alibaba/lightapp/runtime/INuvaContext;

    .line 280
    return-void
.end method

.method public setPermissionService(Lhdk;)V
    .locals 1
    .param p1, "ps"    # Lhdk;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->b:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 1188
    iput-object p1, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->g:Lhdk;

    .line 294
    :cond_0
    return-void
.end method

.method public setWebViewBackListener(Lcom/alibaba/lightapp/runtime/NuvaWebView$b;)V
    .locals 0
    .param p1, "webViewBackListener"    # Lcom/alibaba/lightapp/runtime/NuvaWebView$b;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->k:Lcom/alibaba/lightapp/runtime/NuvaWebView$b;

    .line 703
    return-void
.end method
