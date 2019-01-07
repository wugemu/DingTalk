.class Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;
.super Ljava/lang/Object;
.source "FolderApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
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
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

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
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 75
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    .prologue
    .line 65
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 70
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V
    .locals 9
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 60
    .local v1, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;->val$accountName:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->handleSyncFoldersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;Z)Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;

    iget-boolean v7, v2, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;->val$includeVirtualFolders:Z

    new-array v8, v6, [Ljava/lang/String;

    move-object v3, v1

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryVisibleFolders(JZZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;)V

    return-void
.end method
