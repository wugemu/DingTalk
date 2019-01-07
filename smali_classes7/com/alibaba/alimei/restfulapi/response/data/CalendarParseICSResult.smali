.class public Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;
.super Ljava/lang/Object;
.source "CalendarParseICSResult.java"


# instance fields
.field public eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field public itemId:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

.field public sequence:I

.field public timeZoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toCalendar()Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;-><init>()V

    .line 36
    .local v0, "result":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setMethod(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;->eventList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setEventList(Ljava/util/List;)V

    .line 38
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setItemId(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;->timeZoneList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setTimezoneList(Ljava/util/List;)V

    .line 40
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setRecurId(Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;)V

    .line 41
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/CalendarParseICSResult;->sequence:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->setSequence(I)V

    .line 43
    return-object v0
.end method
