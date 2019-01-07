.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailAdditionApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->queryMailParticipantsMapFromCache(Ljava/lang/String;ZLxv;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;

.field final synthetic val$includeMailSender:Z

.field final synthetic val$mailServerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;->val$mailServerId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;->val$includeMailSender:Z

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
    .line 57
    if-nez p2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    .line 61
    .local v0, "accountId":J
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    move-result-object v2

    .line 62
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;->val$mailServerId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v0, v1, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->loadMailRecipientIntoParticipants(JLjava/lang/String;Z)V

    .line 63
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;->val$mailServerId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;->val$includeMailSender:Z

    invoke-interface {v2, v0, v1, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;->queryMailParticipantsMap(JLjava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 64
    .local v3, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    iput-object v3, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
