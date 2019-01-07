.class public Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
.super Lcom/alibaba/alimei/restfulapi/data/Item;
.source "Calendar.java"


# instance fields
.field private eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private eventStatus:I

.field private method:Ljava/lang/String;

.field private myFolderId:Ljava/lang/String;

.field private recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

.field private response:Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

.field private sequence:I

.field public timezoneList:Ljava/util/List;
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
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/data/Item;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->action:I

    return v0
.end method

.method public getEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->eventList:Ljava/util/List;

    return-object v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->eventList:Ljava/util/List;

    return-object v0
.end method

.method public getEventStatus()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->eventStatus:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMyFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->myFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurId()Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    return-object v0
.end method

.method public getResponse()Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->response:Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->sequence:I

    return v0
.end method

.method public getTimezoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->timezoneList:Ljava/util/List;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->action:I

    .line 101
    return-void
.end method

.method public setEvent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "event":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->eventList:Ljava/util/List;

    .line 93
    return-void
.end method

.method public setEventList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->eventList:Ljava/util/List;

    .line 147
    return-void
.end method

.method public setEventStatus(I)V
    .locals 0
    .param p1, "eventStatus"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->eventStatus:I

    .line 115
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->method:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMyFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "myFolderId"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->myFolderId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setRecurId(Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;)V
    .locals 0
    .param p1, "recurId"    # Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    .line 127
    return-void
.end method

.method public setResponse(Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;)V
    .locals 0
    .param p1, "reponse"    # Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->response:Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

    .line 105
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .param p1, "sequence"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->sequence:I

    .line 87
    return-void
.end method

.method public setTimezoneList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "timezoneList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->timezoneList:Ljava/util/List;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CalendarItem [action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", myFolderId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->myFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->eventList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->response:Lcom/alibaba/alimei/restfulapi/request/data/CalendarResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recurId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
