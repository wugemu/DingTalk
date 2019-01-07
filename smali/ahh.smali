.class public final Lahh;
.super Lyq;
.source "SyncCareOrdersTask.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lyq;-><init>()V

    .line 29
    iput-object p1, p0, Lahh;->a:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "SyncCareOrdersTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v2

    iget-object v3, p0, Lahh;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 35
    .local v0, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v0, :cond_0

    .line 36
    const-string/jumbo v2, "SyncCareOrdersTask"

    const-string/jumbo v3, "syncCareOrdersTask fail for account is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return v4

    .line 40
    :cond_0
    new-instance v1, Lahh$1;

    invoke-direct {v1, p0, v0}, Lahh$1;-><init>(Lahh;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 68
    .local v1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;>;"
    iget-object v2, p0, Lahh;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->getCareOrderResult(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_0
.end method
