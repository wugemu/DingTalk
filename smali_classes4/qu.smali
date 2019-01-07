.class public final Lqu;
.super Lqm;
.source "MailMoveImapFolderTask.java"


# instance fields
.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lqm;-><init>(Ljava/lang/String;J)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    const/16 v13, 0xc8

    .line 73
    iget-object v0, p0, Lqu;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    iput-object v0, p0, Lqu;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 75
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    iput-object v0, p0, Lqu;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    .line 77
    iget-object v0, p0, Lqu;->i:Ljava/lang/String;

    invoke-static {v0}, Lair;->v(Ljava/lang/String;)J

    move-result-wide v6

    .line 79
    .local v6, "currentUid":J
    iget-object v0, p0, Lqu;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iget-wide v2, p0, Lqu;->k:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v9

    .line 80
    .local v9, "srcMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-object v0, p0, Lqu;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iget-object v2, p0, Lqu;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v11, p0, Lqu;->j:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v11}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v8

    .line 82
    .local v8, "destMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-wide v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 1059
    new-instance v10, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    invoke-direct {v10}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;-><init>()V

    .line 1060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    new-instance v11, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-direct {v11}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;-><init>()V

    .line 1062
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v3, v12}, Lair;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->setItemId(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->setResultCode(I)V

    .line 1064
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-virtual {v10, v13}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->setResultCode(I)V

    .line 1066
    invoke-virtual {v10, v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->setMailResults(Ljava/util/List;)V

    .line 84
    .local v10, "successResult":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v5, Lqu$1;

    invoke-direct {v5, p0, p1, v10}, Lqu$1;-><init>(Lqu;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;)V

    .line 109
    .local v5, "listener":Luv;
    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 110
    const-string/jumbo v0, "MailMoveImapFolderTask"

    const-string/jumbo v2, "MessageController.getInstance().moveMessage"

    invoke-static {v0, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v2, p0, Lqu;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    .line 112
    .local v1, "account":Lcom/alibaba/alimei/emailcommon/Account;
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v0

    iget-object v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-object v3, p0, Lqu;->j:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Luv;)V

    .line 119
    .end local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v4    # "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "listener":Luv;
    .end local v6    # "currentUid":J
    .end local v8    # "destMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v9    # "srcMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v10    # "successResult":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v4    # "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "listener":Luv;
    .restart local v6    # "currentUid":J
    .restart local v8    # "destMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .restart local v9    # "srcMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .restart local v10    # "successResult":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "MailMoveImapFolderTask"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "srcMailbox:"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v11, ", destMailbox:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;)V
    .locals 2
    .param p1, "messageSync"    # Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    iput-object v0, p0, Lqu;->i:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    iput-object v0, p0, Lqu;->j:Ljava/lang/String;

    .line 55
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data2:J

    iput-wide v0, p0, Lqu;->k:J

    .line 56
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "MailMoveImapFolderTask"

    return-object v0
.end method

.method protected final f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lqu;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 1046
    iget-wide v2, p0, Lyr;->x:J

    .line 43
    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryWaitingSyncMoveList(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lqu;->i:Ljava/lang/String;

    .line 49
    return-void
.end method
