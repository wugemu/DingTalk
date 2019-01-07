.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->queryRevokeMailStatus(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21;->val$serverId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 823
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v1

    .line 824
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21;->val$serverId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->queryRevokeStatus(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 826
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 861
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;>;"
    iget-object v2, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$21;->val$serverId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->queryRevokeMailStatus(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 862
    return-void
.end method
