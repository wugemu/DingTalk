.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->reportOrTrustSpamMail(Ljava/lang/String;ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$report:Z

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1693
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->val$report:Z

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->val$serverId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1696
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 1698
    .local v1, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-boolean v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->val$report:Z

    if-eqz v3, :cond_0

    .line 1699
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/4 v3, 0x7

    invoke-interface {v1, v4, v5, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    .line 1703
    .local v2, "targetMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :goto_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 1734
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$2100(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->val$serverId:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$30;->val$report:Z

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->reportOrTrustSpamMail(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1735
    return-void

    .line 1701
    .end local v0    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Boolean;>;"
    .end local v2    # "targetMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    .restart local v2    # "targetMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    goto :goto_0
.end method
