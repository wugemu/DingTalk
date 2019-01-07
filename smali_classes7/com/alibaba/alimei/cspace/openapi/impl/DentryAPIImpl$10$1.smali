.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;
.super Ljava/lang/Object;
.source "DentryAPIImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;

.field final synthetic val$dentryInfoResult:Ltk;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;Ltk;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;

    iput-object p2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 616
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    .prologue
    .line 606
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 577
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 0
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 611
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 6
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 580
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 581
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;

    iget-object v4, v4, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$1400(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;

    iget-object v5, v5, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->val$spaceId:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    .line 1027
    iput-object v0, v1, Ltk;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 601
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;->getErrorCode()J

    move-result-wide v2

    .line 585
    .local v2, "errorCode":J
    const-wide/32 v4, 0xc6ab63

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-wide/32 v4, 0xc6ab60

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-wide/32 v4, 0xc6ab61

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 586
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

    .line 2019
    iput-object v4, v1, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    .line 597
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    .line 7015
    iget-object v1, v1, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    .line 597
    if-nez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

    .line 7019
    iput-object v4, v1, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 587
    :cond_4
    const-wide/32 v4, 0xc6ab65

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 588
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->DentryNotAuth:Lcom/alibaba/alimei/framework/SDKError;

    .line 3019
    iput-object v4, v1, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_1

    .line 589
    :cond_5
    const-wide/32 v4, 0xc6bb02

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 590
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    .line 4019
    iput-object v4, v1, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_1

    .line 591
    :cond_6
    const-wide/32 v4, 0xc6b719

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    .line 592
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    .line 5019
    iput-object v4, v1, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_1

    .line 593
    :cond_7
    const-wide/32 v4, 0xc6b718

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 594
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->val$dentryInfoResult:Ltk;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    .line 6019
    iput-object v4, v1, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 577
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V

    return-void
.end method
