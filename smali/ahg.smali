.class public final Lahg;
.super Lahf;
.source "SyncCalendarTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "fullForceSync"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lahf;-><init>(Ljava/lang/String;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 29
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v2

    .line 30
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v4, p0, Lahg;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v0

    .line 31
    .local v0, "account":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v4

    iget-object v5, p0, Lahg;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    .line 33
    .local v1, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v1, :cond_1

    .line 42
    .end local v1    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v1    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    const/16 v5, 0x41

    invoke-interface {v4, v6, v7, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v3

    .line 37
    .local v3, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v3, :cond_0

    .line 38
    iget-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    .line 39
    iget-object v4, p0, Lahg;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    iget-object v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Laim;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
    .locals 4
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sync calendar success, mAccountName: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lahg;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 60
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v1, p0, Lahg;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v1, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->handleCalendarSyncResults(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V

    .line 61
    return-void
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;)V
    .locals 3
    .param p1, "service"    # Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sync calendar, syncKey = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lahg;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lahg;->d:Ljava/lang/String;

    iget-object v1, p0, Lahg;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;->syncCalendar(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 87
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "SyncCalendarTask"

    return-object v0
.end method

.method protected final f()Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    .line 52
    .local v0, "boxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v1, p0, Lahg;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 53
    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    .line 1046
    const/16 v1, 0x41

    .line 53
    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v1

    return-object v1
.end method

.method protected final g()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 65
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 66
    .local v1, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v3, p0, Lahg;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->querySharedCalendarMailbox(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "mailboxList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v2, :cond_1

    .line 68
    const-string/jumbo v3, "SyncCalendarTask"

    const-string/jumbo v4, "has no shared calendar"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 74
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    new-instance v4, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;

    iget-object v5, p0, Lahg;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncSharedCalendarCommand;->executeCommand()V

    goto :goto_0
.end method
