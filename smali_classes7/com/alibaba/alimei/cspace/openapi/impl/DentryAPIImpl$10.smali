.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->getSharedFile(Ljava/lang/String;Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ltk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->val$spaceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 570
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    .line 571
    .local v1, "syncReqeustData":Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 572
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setSpaceId(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ltk;

    invoke-direct {v0}, Ltk;-><init>()V

    .line 577
    .local v0, "dentryInfoResult":Ltk;
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$1500(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getDentryService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10$1;-><init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$10;Ltk;)V

    invoke-interface {v2, v1, v3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->syncDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1023
    iget-object v2, v0, Ltk;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 618
    if-nez v2, :cond_0

    .line 2015
    iget-object v2, v0, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    .line 618
    if-nez v2, :cond_0

    .line 619
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

    .line 2019
    iput-object v2, v0, Ltk;->b:Lcom/alibaba/alimei/framework/SDKError;

    .line 621
    :cond_0
    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 622
    return-void
.end method
