.class public Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "ItemsUpdateRequestData.java"


# static fields
.field private static final DEFAULT_LIST_SIZE:I = 0x5


# instance fields
.field private calendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 30
    return-void
.end method

.method private declared-synchronized initCalendarList()V
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->calendars:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->calendars:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCalendar(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Calendar cannot move!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->initCalendarList()V

    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->calendars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->calendars:Ljava/util/List;

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public getMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->mails:Ljava/util/List;

    return-object v0
.end method

.method public isEmptyRequestData()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->mails:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->calendars:Ljava/util/List;

    .line 85
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->contacts:Ljava/util/List;

    .line 86
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCalendars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->calendars:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/contact/ContactItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->contacts:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setMails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ItemsUpdateRequestData;->mails:Ljava/util/List;

    .line 38
    return-void
.end method
