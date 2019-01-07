.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->moveMailToNewFolder(JLxv;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$mailServerIds:[Ljava/lang/String;

.field final synthetic val$targetFolderId:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;->val$targetFolderId:J

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;->val$mailServerIds:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 10
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1336
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;->val$targetFolderId:J

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v9

    .line 1338
    .local v9, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v9, :cond_0

    .line 1340
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 1341
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-wide v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget-object v6, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$21;->val$mailServerIds:[Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 1344
    new-instance v8, Lcom/alibaba/alimei/sdk/task/update/command/MailMoveCommand;

    iget-object v1, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-direct {v8, v1, v2, v3}, Lcom/alibaba/alimei/sdk/task/update/command/MailMoveCommand;-><init>(Ljava/lang/String;J)V

    .line 1345
    .local v8, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v8}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1347
    .end local v0    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v8    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    :cond_0
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1348
    return-void
.end method
