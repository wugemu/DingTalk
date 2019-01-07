.class public Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public alarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;",
            ">;"
        }
    .end annotation
.end field

.field public allDayEvent:Z

.field public attachList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation
.end field

.field public attendeeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;",
            ">;"
        }
    .end annotation
.end field

.field public body:Ljava/lang/String;

.field public dtEnd:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

.field public dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

.field public endTime:J

.field public eventClass:Ljava/lang/String;

.field public exceptionDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;",
            ">;"
        }
    .end annotation
.end field

.field public location:Ljava/lang/String;

.field public organizerEmail:Ljava/lang/String;

.field public organizerName:Ljava/lang/String;

.field public recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

.field public recurRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;",
            ">;"
        }
    .end annotation
.end field

.field public resourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation
.end field

.field public sequence:I

.field public startTime:J

.field public status:Ljava/lang/String;

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getAlarmList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->alarmList:Ljava/util/List;

    return-object v0
.end method

.method public getAllDayEvent()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->allDayEvent:Z

    return v0
.end method

.method public getAttachList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    return-object v0
.end method

.method public getAttendeeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDtEnd()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtEnd:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    return-object v0
.end method

.method public getDtStart()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->endTime:J

    return-wide v0
.end method

.method public getEventClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->eventClass:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionDateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->exceptionDateList:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurId()Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    return-object v0
.end method

.method public getRecurRuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    return-object v0
.end method

.method public getResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->resourceList:Ljava/util/List;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->sequence:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->startTime:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isAllDayEvent()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->allDayEvent:Z

    return v0
.end method

.method public setAlarmList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "alarmList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->alarmList:Ljava/util/List;

    .line 199
    return-void
.end method

.method public setAllDayEvent(Z)V
    .locals 0
    .param p1, "allDayEvent"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->allDayEvent:Z

    .line 151
    return-void
.end method

.method public setAttachList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    .line 231
    return-void
.end method

.method public setAttendeeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    .line 207
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setDtEnd(Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;)V
    .locals 0
    .param p1, "dtEnd"    # Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtEnd:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    .line 267
    return-void
.end method

.method public setDtStart(Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;)V
    .locals 0
    .param p1, "dtStart"    # Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    .line 259
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->endTime:J

    .line 143
    return-void
.end method

.method public setEventClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventClass"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->eventClass:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setExceptionDateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "exceptionDateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->exceptionDateList:Ljava/util/List;

    .line 223
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->location:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setOrganizerEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizerEmail"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerEmail:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setOrganizerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizerName"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerName:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setRecurId(Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;)V
    .locals 0
    .param p1, "recurId"    # Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    .line 119
    return-void
.end method

.method public setRecurRuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "recurRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    .line 215
    return-void
.end method

.method public setResourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->resourceList:Ljava/util/List;

    .line 239
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .param p1, "sequence"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->sequence:I

    .line 111
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->startTime:J

    .line 135
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->status:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->subject:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Event [sequence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recurId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->eventClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", allDayEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->allDayEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", organizerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", organizerEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recurRuleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", exceptionDateList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->exceptionDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", attachList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resourceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->resourceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
