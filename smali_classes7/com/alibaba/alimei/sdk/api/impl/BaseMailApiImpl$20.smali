.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->cancelOutgoingMail(JILxv;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

.field final synthetic val$cancelType:I

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;JI)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;->val$messageId:J

    iput p5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;->val$cancelType:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 13
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 516
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 518
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v1

    .line 519
    .local v1, "accountId":J
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;->val$messageId:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v10

    .line 520
    .local v10, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const/4 v9, 0x0

    .line 521
    .local v9, "folderThrowable":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    if-eqz v10, :cond_0

    .line 522
    iget v3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;->val$cancelType:I

    packed-switch v3, :pswitch_data_0

    .line 535
    iget-object v3, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$20;->val$messageId:J

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->deleteMailById(JLjava/lang/String;J)V

    .line 540
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 541
    iput-object v9, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->exception:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 545
    :goto_1
    return-void

    .line 524
    :pswitch_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v8

    .line 526
    .local v8, "draftMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v8, :cond_1

    .line 527
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v9

    goto :goto_0

    .line 529
    :cond_1
    iget-object v3, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-wide v4, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    aput-object v12, v7, v11

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .end local v8    # "draftMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_2
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    iput-object v3, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_1

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
