.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->queryMailParticipantsMap(Ljava/lang/String;ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$includeMailSender:Z

.field final synthetic val$mailServerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->val$mailServerId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->val$includeMailSender:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 9
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    .line 106
    .local v4, "accountId":J
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v3

    .line 107
    .local v3, "datasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->val$mailServerId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2, v8}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->loadMailRecipientIntoParticipants(JLjava/lang/String;Z)V

    .line 109
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;

    move-object v2, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;JLcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 126
    .local v1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->access$000(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v2

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->val$mailServerId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->queryMailReadlist(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 128
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->val$mailServerId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$3;->val$includeMailSender:Z

    invoke-interface {v3, v4, v5, v2, v6}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->queryMailParticipantsMap(JLjava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 129
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 130
    return-void
.end method
