.class Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;
.super Ljava/lang/Object;
.source "DDDefaultWXHttpAdapter.java"

# interfaces
.implements Lhpr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->requestByResourceLoader(Lcom/taobao/weex/common/WXRequest;Ljava/util/Map;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$wxResponse:Lcom/taobao/weex/common/WXResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXResponse;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    const-string/jumbo v1, "-1"

    iput-object v1, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    iput-object p2, v0, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    invoke-interface {v0, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onSuccess(Lhpg;)V
    .locals 2
    .param p1, "hydroResponse"    # Lhpg;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    iget v1, p1, Lhpg;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    iget-object v1, p1, Lhpg;->a:[B

    iput-object v1, v0, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    .line 180
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    invoke-interface {v0, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    const-string/jumbo v1, "-1"

    iput-object v1, v0, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    const-string/jumbo v1, "-1"

    iput-object v1, v0, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    const-string/jumbo v1, "hydroResponse is null"

    iput-object v1, v0, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$2;->val$wxResponse:Lcom/taobao/weex/common/WXResponse;

    invoke-interface {v0, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    goto :goto_0
.end method
