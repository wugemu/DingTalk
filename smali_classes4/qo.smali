.class public final Lqo;
.super Lqm;
.source "ChangeImapReadStatusTask.java"


# instance fields
.field protected i:Ljava/lang/String;

.field protected j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lqm;-><init>(Ljava/lang/String;J)V

    .line 1050
    iput-wide p2, p0, Lyr;->x:J

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 10
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;>;"
    const/4 v9, 0x0

    .line 66
    iget-object v1, p0, Lqo;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    iput-object v1, p0, Lqo;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 68
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    iput-object v1, p0, Lqo;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    .line 70
    iget-object v1, p0, Lqo;->i:Ljava/lang/String;

    invoke-static {v1}, Lair;->v(Ljava/lang/String;)J

    move-result-wide v4

    .line 72
    .local v4, "currentUid":J
    iget-object v1, p0, Lqo;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    iget-object v3, p0, Lqo;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    iget-object v3, p0, Lqo;->i:Ljava/lang/String;

    invoke-interface {v1, v6, v7, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v8

    .line 73
    .local v8, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v8, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1, v9}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 114
    .end local v4    # "currentUid":J
    .end local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v4    # "currentUid":J
    .restart local v8    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    iget-object v1, p0, Lqo;->e:Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    iget-wide v6, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-interface {v1, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 82
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v0, :cond_2

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1, v9}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_2
    const-string/jumbo v1, "ChangeImapReadStatusTask"

    const-string/jumbo v3, "MessageController.getInstance().changeMailReadStatus"

    invoke-static {v1, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    iget-object v3, p0, Lqo;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v2

    .line 92
    .local v2, "account":Lcom/alibaba/alimei/emailcommon/Account;
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v1

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-boolean v6, p0, Lqo;->j:Z

    new-instance v7, Lqo$1;

    invoke-direct {v7, p0, p1}, Lqo$1;-><init>(Lqo;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    invoke-virtual/range {v1 .. v7}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;)V
    .locals 1
    .param p1, "messageSync"    # Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .prologue
    .line 59
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    iput-object v0, p0, Lqo;->i:Ljava/lang/String;

    .line 60
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data1:Z

    iput-boolean v0, p0, Lqo;->j:Z

    .line 61
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "ChangeImapReadStatusTask"

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
    .line 42
    iget-object v0, p0, Lqo;->d:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 2046
    iget-wide v2, p0, Lyr;->x:J

    .line 42
    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryWaitingSyncReadStatusList(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lqo;->i:Ljava/lang/String;

    .line 51
    return-void
.end method
