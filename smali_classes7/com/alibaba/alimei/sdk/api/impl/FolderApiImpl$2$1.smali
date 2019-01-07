.class Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;
.super Ljava/lang/Object;
.source "FolderApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

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
    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 108
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    .prologue
    .line 98
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 103
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V
    .locals 7
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 93
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 94
    .local v1, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;->val$accountName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->handleSyncFoldersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;Z)Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V

    return-void
.end method
