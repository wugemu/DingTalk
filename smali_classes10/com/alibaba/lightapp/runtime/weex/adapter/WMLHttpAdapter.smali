.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;
.super Ljava/lang/Object;
.source "WMLHttpAdapter.java"

# interfaces
.implements Ljpr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Ljava/util/Map;Ljpr$a;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "httpListener"    # Ljpr$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljpr$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    .local p2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v1}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 16
    .local v1, "request":Lcom/taobao/weex/common/WXRequest;
    iput-object p1, v1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 17
    const/16 v2, 0x3a98

    iput v2, v1, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    .line 18
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    .line 19
    .local v0, "httpAdapter":Lcom/taobao/weex/adapter/IWXHttpAdapter;
    if-eqz v0, :cond_1

    .line 20
    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;Ljpr$a;)V

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    if-eqz p3, :cond_0

    .line 56
    const-string/jumbo v2, "-1"

    const/4 v3, 0x0

    invoke-interface {p3, v2, v3}, Ljpr$a;->onHttpFinish(Ljava/lang/String;[B)V

    goto :goto_0
.end method
