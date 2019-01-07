.class Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;
.super Ljava/lang/Object;
.source "WMLHttpAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljpr$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;

.field final synthetic val$httpListener:Ljpr$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;Ljpr$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;->val$httpListener:Ljpr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .locals 3
    .param p1, "wxResponse"    # Lcom/taobao/weex/common/WXResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;->val$httpListener:Ljpr$a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;->val$httpListener:Ljpr$a;

    iget-object v1, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    invoke-interface {v0, v1, v2}, Ljpr$a;->onHttpFinish(Ljava/lang/String;[B)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;->val$httpListener:Ljpr$a;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLHttpAdapter$1;->val$httpListener:Ljpr$a;

    const-string/jumbo v1, "-1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljpr$a;->onHttpFinish(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onHttpResponseProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 39
    return-void
.end method

.method public onHttpStart()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 34
    return-void
.end method
