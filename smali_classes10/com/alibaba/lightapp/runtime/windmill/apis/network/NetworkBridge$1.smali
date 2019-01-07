.class final Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;
.super Ljava/lang/Object;
.source "NetworkBridge.java"

# interfaces
.implements Lcom/taobao/weex/bridge/JSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;->request(Ljava/util/Map;Ljrh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljrh;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;Ljrh;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;->b:Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;->a:Ljrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 26
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 27
    check-cast v1, Ljava/util/Map;

    .line 28
    .local v1, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "status"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 29
    .local v2, "status":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 30
    const-string/jumbo v3, "status"

    const-string/jumbo v4, "FAILED"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;->a:Ljrh;

    invoke-virtual {v3, v1}, Ljrh;->b(Ljava/lang/Object;)V

    .line 41
    .end local v1    # "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "status":I
    :goto_0
    return-void

    .line 33
    .restart local v1    # "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "status":I
    :cond_0
    const-string/jumbo v3, "status"

    const-string/jumbo v4, "SUCCESS"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;->a:Ljrh;

    invoke-virtual {v3, v1}, Ljrh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    .end local v1    # "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "status":I
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "status"

    const-string/jumbo v4, "PARSE_RESPONSE_FAILED"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$1;->a:Ljrh;

    invoke-virtual {v3, v0}, Ljrh;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final invokeAndKeepAlive(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    const-string/jumbo v0, "NetworkBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callbackAndKeepAlive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method
