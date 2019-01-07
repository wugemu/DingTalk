.class final Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient$1;
.super Ljava/lang/Object;
.source "JsPreloadWebviewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient$1;->a:Lcom/alipay/mobile/nebulauc/impl/JsPreloadWebviewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    :try_start_0
    const-class v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 88
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->onLiteProcessPreloadComplete()V

    .line 91
    :cond_0
    const-string/jumbo v2, "JsPreloadWebviewClient"

    const-string/jumbo v3, "appx preload completed"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "thr":Ljava/lang/Throwable;
    const-string/jumbo v2, "JsPreloadWebviewClient"

    const-string/jumbo v3, "call LiteProcessClientManager.onLiteProcessPreloadComplete() error!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
