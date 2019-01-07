.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;
.super Ljava/lang/Object;
.source "DentryAPIImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9;

    iput-object p2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 532
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;

    .prologue
    .line 523
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 506
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 527
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 528
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 509
    if-eqz p1, :cond_2

    .line 510
    const-string/jumbo v0, "000000"

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->getContent()Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->getContent()Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/PreviewUrlItemResult;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 520
    :goto_0
    return-void

    .line 512
    :cond_0
    const-string/jumbo v0, "200001"

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryPreviewFileTooLarge:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryPreviewDocError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryPreviewDocError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 506
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$9$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;)V

    return-void
.end method
