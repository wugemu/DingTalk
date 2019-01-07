.class Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FolderApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->refreshByIncrementWay(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderGroupModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;->this$0:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;->val$accountName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 6
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 110
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->getFolderSyncKey(J)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "syncKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$2;->this$0:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->access$100(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncFolders(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 113
    return-void
.end method
