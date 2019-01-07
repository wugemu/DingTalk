.class public final Lrd;
.super Ljava/lang/Object;
.source "CalendarModelConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "eventInstanceModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    const/4 v3, 0x0

    .line 110
    if-nez p0, :cond_0

    .line 119
    :goto_0
    return-object v3

    .line 113
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    .line 115
    .local v0, "eventInstanceModel":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    if-eqz v0, :cond_1

    .line 1072
    if-nez v0, :cond_2

    move-object v2, v3

    .line 116
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1075
    :cond_2
    new-instance v2, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;-><init>()V

    .line 1076
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setId(J)V

    .line 1077
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->color:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setColor(I)V

    .line 1078
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setTitle(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setLocation(Ljava/lang/CharSequence;)V

    .line 1080
    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setAllDay(Z)V

    .line 1081
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setOrganizer(Ljava/lang/String;)V

    .line 1082
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setOrganizerName(Ljava/lang/String;)V

    .line 1083
    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setGuestsCanModify(Z)V

    .line 1084
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setStartDay(I)V

    .line 1085
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setEndDay(I)V

    .line 1086
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setStartTime(I)V

    .line 1087
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setEndTime(I)V

    .line 1088
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setStartMillis(J)V

    .line 1089
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setEndMillis(J)V

    .line 1090
    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setHasAlarm(Z)V

    .line 1091
    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setRepeating(Z)V

    .line 1092
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setRrule(Ljava/lang/String;)V

    .line 1093
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setSelfAttendeeStatus(I)V

    .line 1094
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setCanOrganizerResponse(I)V

    .line 1095
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setOwerAccount(Ljava/lang/String;)V

    .line 1096
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setMessageServerId(Ljava/lang/String;)V

    .line 1097
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setMessageAccountId(J)V

    .line 1098
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageMailboxId:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setMessageMailboxId(J)V

    .line 1099
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setMessageThreadTopic(Ljava/lang/String;)V

    .line 1100
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setMessageThreadTopicNumber(I)V

    .line 1101
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setMessageType(I)V

    .line 1102
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->parentCalendarId:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setParentCalendarId(J)V

    .line 1103
    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setSystem(Z)V

    .line 1104
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setDisplayName(Ljava/lang/String;)V

    .line 1105
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->folderServerId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->setFolderServerId(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v0    # "eventInstanceModel":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    :cond_3
    move-object v3, v1

    .line 119
    goto/16 :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/ReminderModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "reminderModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    const/4 v3, 0x0

    .line 163
    if-nez p0, :cond_0

    .line 172
    :goto_0
    return-object v3

    .line 166
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    .line 168
    .local v0, "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    if-eqz v0, :cond_1

    .line 1151
    if-nez v0, :cond_2

    move-object v2, v3

    .line 169
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1154
    :cond_2
    new-instance v2, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;-><init>()V

    .line 1155
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->setId(J)V

    .line 1156
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->eventId:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->setEventId(J)V

    .line 1157
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->setMinutes(I)V

    .line 1158
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->method:I

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/calendar/ReminderObject;->setMethod(I)V

    goto :goto_2

    .end local v0    # "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    :cond_3
    move-object v3, v1

    .line 172
    goto :goto_0
.end method
