.class Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$request:Lcom/taobao/weex/common/WXRequest;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->access$000(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;Lcom/taobao/weex/common/WXRequest;)Lcom/taobao/weex/common/WXResponse;

    move-result-object v0

    .line 46
    .local v0, "response":Lcom/taobao/weex/common/WXResponse;
    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpStart()V

    .line 49
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 50
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v1, v0}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;->access$100(Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter;)Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/HttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-interface {v1, v2, v3}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    goto :goto_0
.end method
