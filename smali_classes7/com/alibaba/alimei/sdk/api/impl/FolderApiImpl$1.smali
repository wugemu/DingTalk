.class Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "FolderApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->refreshByFullWay(Lxv;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$includeVirtualFolders:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;->val$accountName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;->val$includeVirtualFolders:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 3
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 78
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;->access$000(Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncFolders(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 79
    return-void
.end method
