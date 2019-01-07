.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;
.super Ljava/lang/Object;
.source "MailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;->handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;

.field final synthetic val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportspam fail, exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 1683
    return-void
.end method

.method public onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;

    .prologue
    .line 1671
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1646
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->onPostExecute(Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;)V

    return-void
.end method

.method public onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reportspam fail, exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 1677
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;)V
    .locals 17
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;

    .prologue
    .line 1649
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1650
    .local v12, "resResult":Ljava/lang/Boolean;
    if-eqz p1, :cond_0

    .line 1651
    move-object/from16 v0, p1

    iget v13, v0, Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;->resultCode:I

    .line 1652
    .local v13, "resultCode":I
    const/16 v3, 0xc8

    if-ne v3, v13, :cond_1

    .line 1653
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v11

    .line 1654
    .local v11, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/4 v3, 0x7

    invoke-interface {v11, v4, v5, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v14

    .line 1655
    .local v14, "spamBox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    .line 1656
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v5, v5, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-wide v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget-object v8, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;->val$serverId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v9, v15

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 1657
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1659
    new-instance v10, Lcom/alibaba/alimei/sdk/task/update/command/MailMoveCommand;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v3, v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$account:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v10, v3, v4, v5}, Lcom/alibaba/alimei/sdk/task/update/command/MailMoveCommand;-><init>(Ljava/lang/String;J)V

    .line 1660
    .local v10, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v10}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1665
    .end local v2    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v10    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    .end local v11    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .end local v13    # "resultCode":I
    .end local v14    # "spamBox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->val$apiResult:Lcom/alibaba/alimei/framework/api/ApiResult;

    iput-object v12, v3, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1666
    return-void

    .line 1662
    .restart local v13    # "resultCode":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reportspam fail, serverId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->this$1:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29;->val$serverId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1646
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$29$1;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/ReportResult;)V

    return-void
.end method
