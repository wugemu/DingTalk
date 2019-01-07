.class Lcom/taobao/weex/http/WXStreamModule$1;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/http/WXStreamModule;->sendHttp(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/http/WXStreamModule;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/http/WXStreamModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/http/WXStreamModule;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .locals 5
    .param p1, "response"    # Lcom/taobao/weex/common/WXResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v0, v0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v0, v0, Lcom/taobao/weex/http/WXStreamModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "{}"

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    return-void

    .line 93
    :cond_2
    iget-object v4, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz p2, :cond_3

    const-string/jumbo v0, "Content-Type"

    .line 96
    invoke-static {p2, v0}, Lcom/taobao/weex/http/WXStreamModule;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_1
    invoke-static {v4, v0}, Lcom/taobao/weex/http/WXStreamModule;->readAsString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method
