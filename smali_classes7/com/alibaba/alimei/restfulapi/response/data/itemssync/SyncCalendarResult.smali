.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;
.source "SyncCalendarResult.java"


# instance fields
.field public addedCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public calendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public changedCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public deleteCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private folderAcl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getAddedCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->addedCalendars:Ljava/util/List;

    return-object v0
.end method

.method public getCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->calendars:Ljava/util/List;

    return-object v0
.end method

.method public getChangedCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->changedCalendars:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->calendars:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->calendars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeletedCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->deleteCalendars:Ljava/util/List;

    return-object v0
.end method

.method public getFolderAcl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->folderAcl:Ljava/lang/String;

    return-object v0
.end method

.method public setCalendars(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    .local p1, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->calendars:Ljava/util/List;

    .line 40
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->calendars:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->calendars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->addedCalendars:Ljava/util/List;

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->deleteCalendars:Ljava/util/List;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->changedCalendars:Ljava/util/List;

    .line 46
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->calendars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 47
    .local v1, "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v0

    .line 48
    .local v0, "action":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 49
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->addedCalendars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 51
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->changedCalendars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->deleteCalendars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v0    # "action":I
    .end local v1    # "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    :cond_3
    return-void
.end method
