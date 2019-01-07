.class public final Lahn;
.super Lahf;
.source "SyncSharedCalendarTask.java"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "mainAccountName"    # Ljava/lang/String;
    .param p2, "sharedAccountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "fullForceSync"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p4}, Lahf;-><init>(Ljava/lang/String;Z)V

    .line 32
    iput-object p2, p0, Lahn;->g:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lahn;->h:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 38
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v1

    .line 39
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v9, p0, Lahn;->a:Ljava/lang/String;

    invoke-interface {v1, v9}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v4

    .line 40
    .local v4, "parentAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v4, :cond_2

    .line 41
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v9

    iget-object v10, p0, Lahn;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 42
    .local v0, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v0, :cond_1

    .line 59
    .end local v0    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v0    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v9

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    const/16 v12, 0x41

    invoke-interface {v9, v10, v11, v12}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v2

    .line 46
    .local v2, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v2, :cond_0

    .line 47
    iget-object v9, p0, Lahn;->a:Ljava/lang/String;

    iget-object v10, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    iget-object v11, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Laim;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0

    .line 52
    .end local v0    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v2    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_2
    iget-wide v6, v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    iput-wide v6, p0, Lahn;->i:J

    .line 53
    .local v6, "parentId":J
    iget-object v9, p0, Lahn;->g:Ljava/lang/String;

    iget-object v10, p0, Lahn;->h:Ljava/lang/String;

    invoke-interface {v1, v9, v10, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->querySharedAccount(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v5

    .line 54
    .local v5, "sharedAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v5, :cond_0

    .line 55
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    .line 56
    .local v3, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v9, p0, Lahn;->a:Ljava/lang/String;

    iget-object v10, p0, Lahn;->g:Ljava/lang/String;

    iget-object v11, p0, Lahn;->h:Ljava/lang/String;

    invoke-interface {v3, v9, v10, v11}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->querySharedCalendarMailbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v8

    .line 57
    .local v8, "sharedMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-object v9, p0, Lahn;->g:Ljava/lang/String;

    iget-object v10, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    iget-object v11, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    .line 1062
    invoke-static {v9, v10, v11}, Laim;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v9

    .line 1063
    iput-wide v6, v9, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->parentId:J

    .line 1064
    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->save()J

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
    .locals 8
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sync shared calendar success, mAccountName: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lahn;->a:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", sharedAccountName: "

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lahn;->g:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", serverId: "

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lahn;->h:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v1

    .line 88
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v2, p0, Lahn;->a:Ljava/lang/String;

    iget-object v3, p0, Lahn;->g:Ljava/lang/String;

    iget-wide v4, p0, Lahn;->i:J

    iget-object v6, p0, Lahn;->h:Ljava/lang/String;

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->handleSharedCalendarSyncResults(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V

    .line 89
    return-void
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;)V
    .locals 4
    .param p1, "service"    # Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "sync shared calendar, syncKey = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lahn;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lahn;->d:Ljava/lang/String;

    iget-object v1, p0, Lahn;->j:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-object v2, p0, Lahn;->j:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mFolderAcl:Ljava/lang/String;

    iget-object v3, p0, Lahn;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;->syncSharedCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 105
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "SyncSharedCalendarTask"

    return-object v0
.end method

.method protected final f()Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 68
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "syncKey"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "serverId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "accountKey"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "serverId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "folderAcl"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "accountKey"

    iget-object v3, p0, Lahn;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v2, "ownerEmail"

    iget-object v3, p0, Lahn;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v2, "type"

    .line 2063
    const/16 v3, 0x46

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v2, "serverId"

    iget-object v3, p0, Lahn;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iput-object v0, p0, Lahn;->j:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 76
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v0, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "not found shared owner mailbox for sharedAccountName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lahn;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", accountName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lahn;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    .line 80
    :cond_0
    return-object v0
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
