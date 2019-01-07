.class public final Laic;
.super Lahq;
.source "UpdateCalendarTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lahq;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 26
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 27
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v2, p0, Laic;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 28
    .local v1, "mainAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    return-object v1
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V
    .locals 7
    .param p1, "calItem"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 33
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v4

    iget-object v5, p0, Laic;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    .line 34
    .local v0, "accountId":J
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "syncKey"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "accountKey"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "serverId"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "folderAcl"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 37
    const-string/jumbo v4, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v4, "type"

    const/16 v5, 0x41

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 40
    .local v2, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v2, :cond_0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "not found shared owner mailbox for accountName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laic;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->e(Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v4, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setMyFolderId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "UpdateCalendarTask"

    return-object v0
.end method

.method protected final f()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 51
    .local v1, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-object v3, p0, Laic;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->querySharedCalendarMailbox(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, "mailboxList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v2, :cond_1

    .line 59
    :cond_0
    return-void

    .line 56
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

    .line 57
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    new-instance v4, Lcom/alibaba/alimei/sdk/task/update/command/UpdateSharedCalendarCommand;

    iget-object v5, p0, Laic;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateSharedCalendarCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateSharedCalendarCommand;->executeCommand()V

    goto :goto_0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laic;->a:Ljava/lang/String;

    return-object v0
.end method
