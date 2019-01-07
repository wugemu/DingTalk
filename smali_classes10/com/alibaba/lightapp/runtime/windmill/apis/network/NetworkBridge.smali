.class public Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;
.super Lcom/taobao/windmill/module/base/JSBridge;
.source "NetworkBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/taobao/windmill/module/base/JSBridge;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Ljava/util/Map;Ljrh;)V
    .locals 6
    .param p2, "context"    # Ljrh;
    .annotation runtime Lcom/taobao/windmill/module/base/JSBridgeMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljrh;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/taobao/weex/http/WXStreamModule;

    invoke-direct {v0}, Lcom/taobao/weex/http/WXStreamModule;-><init>()V

    .line 20
    .local v0, "streamModule":Lcom/taobao/weex/http/WXStreamModule;
    const-string/jumbo v2, "stream"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/http/WXStreamModule;->setModuleName(Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 22
    .local v1, "paramsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "dataType"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v2, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;-><init>(Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;Ljrh;)V

    new-instance v3, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$2;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$2;-><init>(Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;)V

    const-string/jumbo v4, ""

    .line 57
    invoke-virtual {p2}, Ljrh;->b()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
