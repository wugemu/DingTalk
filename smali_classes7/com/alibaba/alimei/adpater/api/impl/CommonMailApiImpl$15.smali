.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$15;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->resetFoldersSyncStatus(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$15;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

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
    .line 1048
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 1050
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v3, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-interface {v0, v4, v5, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->resetImapUid(JLjava/lang/String;)V

    .line 1052
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 1053
    .local v1, "folderDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-interface {v1, v4, v5, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    .line 1055
    .local v2, "inbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1056
    return-void
.end method
