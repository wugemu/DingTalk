.class public Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "CalendarApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/api/CalendarApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarApiImpl"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "CalendarApiImpl"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->buildCalendarModel(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeUpload()V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildCalendarModel(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    .locals 8
    .param p1, "calendars"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 170
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;-><init>()V

    .line 171
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    .line 172
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->account_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->accountName:Ljava/lang/String;

    .line 173
    iget v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->visible:I

    if-ne v2, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->visible:Z

    .line 174
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->calendar_displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->displayName:Ljava/lang/String;

    .line 175
    iput-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->isSystem:Z

    .line 176
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->parentId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->sharedAccount:Z

    .line 177
    iget v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->calendar_access_level:I

    const/16 v4, 0x1f4

    if-lt v1, v4, :cond_3

    :goto_3
    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->canWrite:Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 173
    goto :goto_1

    :cond_2
    move v1, v3

    .line 176
    goto :goto_2

    :cond_3
    move v2, v3

    .line 177
    goto :goto_3
.end method

.method private buildCalendarModelList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    .local p1, "calendarList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 152
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    :cond_1
    return-object v2

    .line 155
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v2, "modelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 157
    .local v0, "cal":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->buildCalendarModel(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    move-result-object v1

    .line 158
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private executeUpload()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "accountName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;-><init>(Ljava/lang/String;)V

    .line 572
    .local v1, "updateCalendarCommand":Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;->executeCommand()V

    .line 573
    return-void
.end method


# virtual methods
.method public addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
    .locals 7
    .param p1, "calendarId"    # J
    .param p3, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;ZLxv;)V

    .line 321
    return-void
.end method

.method public addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;ZLxv;)V
    .locals 7
    .param p1, "calendarId"    # J
    .param p3, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p4, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Z",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$7;

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p4

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$7;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJLcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 346
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 347
    return-void
.end method

.method public addEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 276
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$5;

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$5;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 293
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 294
    return-void
.end method

.method public addEvent(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 298
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$6;

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$6;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 314
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 315
    return-void
.end method

.method public addMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
    .locals 2
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 578
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$14;

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$14;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 596
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Long;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 597
    return-void
.end method

.method public cancelAlarm()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 809
    invoke-static {}, Lxn;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 812
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$24;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$24;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V

    .line 824
    .local v0, "apiResultRunnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public createCalendarIfNotExist(Ljava/lang/String;)V
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v0

    .line 65
    .local v0, "account":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v3

    invoke-virtual {v3, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 69
    .local v2, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v2, :cond_0

    .line 72
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/16 v6, 0x41

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v1

    .line 73
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v1, :cond_0

    .line 74
    iget-object v3, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Laim;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method public deleteEvent(JJJILxv;)V
    .locals 11
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "deleteWhich"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p8, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->deleteEvent(JJJZILxv;)V

    .line 455
    return-void
.end method

.method public deleteEvent(JJJZILxv;)V
    .locals 13
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "isSystem"    # Z
    .param p8, "deleteWhich"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p9, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    .line 488
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$11;

    .line 465
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move/from16 v5, p7

    move-wide v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$11;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJJJI)V

    .line 487
    .local v2, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    move-object/from16 v0, p9

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public deleteEvent(JLxv;)V
    .locals 1
    .param p1, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->deleteEvent(JZLxv;)V

    .line 389
    return-void
.end method

.method public deleteEvent(JZLxv;)V
    .locals 7
    .param p1, "eventId"    # J
    .param p3, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;

    .line 394
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJ)V

    .line 420
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 421
    return-void
.end method

.method public deleteEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;ILxv;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "deleteWhich"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "I",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 425
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V

    .line 448
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public deleteMailReminder(JLxv;)V
    .locals 3
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$16;

    .line 625
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$16;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;J)V

    .line 641
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 642
    return-void
.end method

.method public deleteMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 602
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$15;

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$15;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 619
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 620
    return-void
.end method

.method public folderCanModify(Ljava/lang/String;JLxv;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "calendarId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$20;

    .line 709
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$20;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Ljava/lang/String;J)V

    .line 718
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 719
    return-void
.end method

.method public folderCanModify(Ljava/util/List;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 693
    .local p1, "folderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Ljava/lang/Boolean;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$19;

    .line 694
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$19;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 703
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 704
    return-void
.end method

.method public isOrganizer(JLjava/lang/String;Lxv;)V
    .locals 7
    .param p1, "calendarId"    # J
    .param p3, "organizer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;

    .line 836
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;JLjava/lang/String;)V

    .line 845
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 846
    return-void
.end method

.method public loadEventDetail(JJJLxv;)V
    .locals 11
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p7, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/EventDetailModel;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->loadEventDetail(JJJZLxv;)V

    .line 251
    return-void
.end method

.method public loadEventDetail(JJJZLxv;)V
    .locals 13
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J
    .param p7, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p8, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/EventDetailModel;>;"
    new-instance v3, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;

    move-object v4, p0

    move/from16 v5, p7

    move-wide v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;ZJJJ)V

    .line 272
    .local v3, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
    move-object/from16 v0, p8

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 273
    return-void
.end method

.method public notifyReload()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 780
    new-instance v1, Lyc;

    const-string/jumbo v2, "basic_UpdateAddCalendar"

    .line 781
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 782
    .local v1, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v0

    .line 783
    .local v0, "eventCenter":Lya;
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 784
    return-void
.end method

.method public obtainMailReminderTime(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 671
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$18;

    .line 672
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$18;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 681
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 682
    return-void
.end method

.method public parseICSContent(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 850
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;

    .line 851
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$26;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 885
    return-void
.end method

.method public queryAccount(JLxv;)V
    .locals 1
    .param p1, "calId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->queryAccount(JZLxv;)V

    .line 87
    return-void
.end method

.method public queryAccount(JZLxv;)V
    .locals 7
    .param p1, "calId"    # J
    .param p3, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJ)V

    .line 109
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 110
    return-void
.end method

.method public queryAllLocalEvents(IILxv;)V
    .locals 1
    .param p1, "startJulianDay"    # I
    .param p2, "nums"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->queryAllLocalEvents(IIZLxv;)V

    .line 184
    return-void
.end method

.method public queryAllLocalEvents(IIZLxv;)V
    .locals 6
    .param p1, "startJulianDay"    # I
    .param p2, "nums"    # I
    .param p3, "includeSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 188
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->queryAllLocalEvents(IIZZLxv;)V

    .line 189
    return-void
.end method

.method public queryAllLocalEvents(IIZZLjava/util/List;Ljava/util/List;Lxv;)V
    .locals 10
    .param p1, "startJulianDay"    # I
    .param p2, "nums"    # I
    .param p3, "includeSelf"    # Z
    .param p4, "includeSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 222
    .local p5, "sharedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    new-instance v1, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;Z)V

    .line 244
    .local v1, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    move-object/from16 v0, p7

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 245
    return-void
.end method

.method public queryAllLocalEvents(IIZZLxv;)V
    .locals 7
    .param p1, "startJulianDay"    # I
    .param p2, "nums"    # I
    .param p3, "includeSystem"    # Z
    .param p4, "includeShared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 194
    .local p5, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$2;

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$2;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;IIZZ)V

    .line 216
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 217
    return-void
.end method

.method public queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 138
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 139
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 140
    .local v1, "mainCalendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->buildCalendarModel(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    move-result-object v2

    return-object v2
.end method

.method public queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->queryMainAccountWithShared(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryMainAccountWithShared(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "includeSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v2

    .line 120
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    invoke-interface {v2, p1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "calendarList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 123
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->buildCalendarModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    if-eqz p2, :cond_1

    .line 127
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    move-result-object v4

    .line 128
    .local v4, "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    invoke-interface {v4}, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;->querySystemCalendar()Ljava/util/List;

    move-result-object v3

    .line 129
    .local v3, "sysCalList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    .end local v3    # "sysCalList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    .end local v4    # "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    :cond_1
    return-object v0
.end method

.method public querySharedAccount(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 145
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 146
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->querySharedAccount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "shareAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->buildCalendarModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public queryToadyEvents(ZLxv;)V
    .locals 2
    .param p1, "filterExpired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 765
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$22;

    .line 766
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$22;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Z)V

    .line 775
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 776
    return-void
.end method

.method public removeCalendarAccount(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 889
    .local p1, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$27;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$27;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;)V

    .line 905
    .local v0, "apiResultRunnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 906
    return-void
.end method

.method public scheduleAlarm()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 788
    invoke-static {}, Lxn;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    :goto_0
    return-void

    .line 791
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$23;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$23;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V

    .line 804
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public startSyncCalendar(Z)V
    .locals 2
    .param p1, "fullForceSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    new-instance v0, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;-><init>(Ljava/lang/String;Z)V

    .line 81
    .local v0, "calendarCommand":Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncCalendarCommand;->executeCommand()V

    .line 82
    return-void
.end method

.method public updateAttendeeStatus(JILxv;)V
    .locals 7
    .param p1, "attendeeId"    # J
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->updateAttendeeStatus(JIZLxv;)V

    .line 532
    return-void
.end method

.method public updateAttendeeStatus(JIZLxv;)V
    .locals 7
    .param p1, "attendeeId"    # J
    .param p3, "status"    # I
    .param p4, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const-wide/16 v2, -0x1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 567
    :goto_0
    return-void

    .line 540
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;

    .line 541
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJI)V

    .line 566
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public updateCalendarStatusToServer(Ljava/lang/String;Ljava/lang/String;IILxv;)V
    .locals 1
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "calendarServerId"    # Ljava/lang/String;
    .param p3, "oldStatus"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 688
    .local v0, "updateCalendarStatusCommand":Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->executeCommand()V

    .line 689
    return-void
.end method

.method public updateCalendarVisible(Ljava/util/List;Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 723
    .local p1, "calendarList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;

    .line 724
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 760
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 761
    return-void
.end method

.method public updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;ILxv;)V
    .locals 6
    .param p1, "currentModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p3, "modifyWhich"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "I",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 352
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;IZLxv;)V

    .line 353
    return-void
.end method

.method public updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;IZLxv;)V
    .locals 7
    .param p1, "currentModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p3, "modifyWhich"    # I
    .param p4, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "IZ",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 358
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$8;

    .line 362
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$8;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZLcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V

    .line 383
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method

.method public updateEvents()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 829
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, "updateCommand":Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;->executeCommand()V

    .line 831
    return-void
.end method

.method public updateMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 647
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$17;

    .line 648
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$17;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 665
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 666
    return-void
.end method

.method public updateReminder(JILxv;)V
    .locals 7
    .param p1, "eventId"    # J
    .param p3, "minute"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p4, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->updateReminder(JIZLxv;)V

    .line 493
    return-void
.end method

.method public updateReminder(JIZLxv;)V
    .locals 7
    .param p1, "eventId"    # J
    .param p3, "minutes"    # I
    .param p4, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p5, "listener":Lxv;, "Lxv<Ljava/lang/Void;>;"
    const-wide/16 v2, -0x1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 527
    :goto_0
    return-void

    .line 501
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$12;

    .line 502
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$12;-><init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJI)V

    .line 526
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0, p5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    goto :goto_0
.end method
