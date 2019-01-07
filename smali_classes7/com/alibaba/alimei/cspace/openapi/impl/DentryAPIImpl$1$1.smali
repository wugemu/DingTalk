.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;
.super Ljava/lang/Object;
.source "DentryAPIImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

.field final synthetic val$ds:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

    iput-object p2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$ds:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

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
    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 112
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    .prologue
    .line 102
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 107
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;)V
    .locals 9
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorCode()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorMessage()Ljava/lang/String;

    invoke-static {v6, v7}, Ltr;->a(J)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 98
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

    iget-object v5, v5, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$200(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

    iget-object v6, v6, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;->val$spaceId:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v1, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 82
    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOverWrite(Z)V

    .line 83
    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAutoRename(Z)V

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setWifiOnly(Z)V

    .line 86
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const-string/jumbo v4, "folder"

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$ds:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

    iget-object v5, v5, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v5}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$300(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    move-result-wide v2

    .line 90
    .local v2, "id":J
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 91
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->this$1:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;

    iget-object v4, v4, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iget-object v5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$ds:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-static {v4, v5, v1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$400(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 92
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v1, v4, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v0, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->val$ds:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-interface {v4, v0, v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$1$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;)V

    return-void
.end method
