.class public final Lqt;
.super Lqm;
.source "MailDeleteImapTask.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lqm;-><init>(Ljava/lang/String;J)V

    .line 33
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
    const/4 v13, 0x6

    .line 57
    iget-object v0, p0, Lqt;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    iput-object v0, p0, Lqt;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 59
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    iput-object v0, p0, Lqt;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    .line 61
    iget-object v0, p0, Lqt;->i:Ljava/lang/String;

    invoke-static {v0}, Lair;->v(Ljava/lang/String;)J

    move-result-wide v6

    .line 63
    .local v6, "currentUid":J
    iget-object v0, p0, Lqt;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v2, p0, Lqt;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v12, p0, Lqt;->i:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v12}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 64
    iget-object v0, p0, Lqt;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iget-wide v2, p0, Lqt;->j:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v9

    .line 66
    .local v9, "srcMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-object v0, p0, Lqt;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iget-object v2, p0, Lqt;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v13}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v10

    .line 69
    .local v10, "trashBox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v8

    .line 70
    .local v8, "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    iget-object v0, p0, Lqt;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-interface {v8, v0, v13}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getFolderByUserDefineType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "userDefineTrashServerId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lqt;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iget-object v2, p0, Lqt;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v11}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v10

    .line 75
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v4, "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v2, p0, Lqt;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    .line 78
    .local v1, "account":Lcom/alibaba/alimei/emailcommon/Account;
    new-instance v5, Lqt$1;

    invoke-direct {v5, p0, p1}, Lqt$1;-><init>(Lqt;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 119
    .local v5, "listener":Luv;
    if-eqz v9, :cond_4

    .line 120
    if-eqz v10, :cond_1

    iget-object v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    iget-object v2, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    :cond_1
    const-string/jumbo v0, "MailDeleteImapTask"

    const-string/jumbo v2, "MessageController.getInstance().deleteMessage"

    invoke-static {v0, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v0

    iget-object v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v5}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V

    .line 134
    .end local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v4    # "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "listener":Luv;
    .end local v6    # "currentUid":J
    .end local v8    # "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .end local v9    # "srcMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v10    # "trashBox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v11    # "userDefineTrashServerId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 125
    .restart local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .restart local v4    # "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "listener":Luv;
    .restart local v6    # "currentUid":J
    .restart local v8    # "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .restart local v9    # "srcMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .restart local v10    # "trashBox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .restart local v11    # "userDefineTrashServerId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "MailDeleteImapTask"

    const-string/jumbo v2, "MessageController.getInstance().moveMessage"

    invoke-static {v0, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v0

    iget-object v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-object v3, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Luv;)V

    goto :goto_0

    .line 130
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "MailDeleteImapTask"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "srcMailbox == null"

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
    .line 50
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    iput-object v0, p0, Lqt;->i:Ljava/lang/String;

    .line 51
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data2:J

    iput-wide v0, p0, Lqt;->j:J

    .line 52
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string/jumbo v0, "MailDeleteImapTask"

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
    .line 40
    iget-object v0, p0, Lqt;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 1046
    iget-wide v2, p0, Lyr;->x:J

    .line 40
    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryAllWaitingDeleteList(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lqt;->i:Ljava/lang/String;

    .line 46
    return-void
.end method
