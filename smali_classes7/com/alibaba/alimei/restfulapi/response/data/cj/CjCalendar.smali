.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/CjCalendar;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;
.source "CjCalendar.java"


# instance fields
.field public event:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;",
            ">;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field public tagIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public timeZone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public toCalendar()Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 21
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;-><init>()V

    .line 22
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjCalendar;->event:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjCalendar;->event:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjCalendar;->event:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;

    .line 24
    .local v0, "aEvent":Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->toEvent()Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    .end local v0    # "aEvent":Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 26
    .restart local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    :cond_1
    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setEvent(Ljava/util/List;)V

    .line 28
    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjCalendar;->method:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setMethod(Ljava/lang/String;)V

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v4, "tzs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;>;"
    iget-object v5, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjCalendar;->timeZone:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;

    .line 32
    .local v3, "tz":Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->toDstTimeZone()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    .end local v3    # "tz":Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;
    :cond_2
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setTimezoneList(Ljava/util/List;)V

    .line 36
    return-object v1
.end method
