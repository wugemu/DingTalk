.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->changeMailAllReadStatus(JZLjava/lang/String;Lxv;)V
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

.field final synthetic val$mailboxId:J

.field final synthetic val$oldestSerId:Ljava/lang/String;

.field final synthetic val$readStatus:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$mailboxId:J

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$oldestSerId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$readStatus:Z

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
    .line 1585
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 1586
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$1800(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$mailboxId:J

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$oldestSerId:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$readStatus:Z

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changeMailReadStatus(JLjava/lang/String;JLjava/lang/String;Z)V

    .line 1588
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$mailboxId:J

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v9

    .line 1589
    .local v9, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v9, :cond_0

    .line 1590
    const-string/jumbo v1, "MailApiImpl "

    const-string/jumbo v3, "changeMailAllReadStatus fail for folderModel is null"

    invoke-static {v1, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1601
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSyncableFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1597
    new-instance v2, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;

    iget-object v3, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$mailboxId:J

    iget-boolean v8, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$26;->val$readStatus:Z

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;-><init>(Ljava/lang/String;JJZ)V

    .line 1598
    .local v2, "command":Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;->executeCommand()V

    .line 1600
    .end local v2    # "command":Lcom/alibaba/alimei/sdk/task/update/command/ChangeAllReadStatusCommand;
    :cond_1
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
