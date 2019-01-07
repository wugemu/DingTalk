.class public Lcom/taobao/windmill/bundle/container/jsbridge/ContainerBaseBridge;
.super Lcom/taobao/windmill/module/base/JSBridge;
.source "ContainerBaseBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/windmill/module/base/JSBridge;-><init>()V

    return-void
.end method


# virtual methods
.method protected callError(Ljrh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jsInvokeContext"    # Ljrh;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 15
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, v0}, Ljrh;->b(Ljava/lang/Object;)V

    .line 18
    return-void
.end method
