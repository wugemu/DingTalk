.class public interface abstract Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
.super Ljava/lang/Object;
.source "CalendarDatasource.java"


# virtual methods
.method public abstract addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;)J
.end method

.method public abstract addEvent(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J
.end method

.method public abstract addMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J
.end method

.method public abstract cancelAlarm()V
.end method

.method public abstract deleteCalendarAccount(Ljava/lang/String;Z)I
.end method

.method public abstract deleteEvent(J)I
.end method

.method public abstract deleteEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
.end method

.method public abstract deleteMailReminder(J)I
.end method

.method public abstract deleteMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I
.end method

.method public abstract deleteSharedAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract folderCanModify(Ljava/lang/String;J)Ljava/lang/Boolean;
.end method

.method public abstract folderCanModify(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleCalendarSyncResults(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
.end method

.method public abstract handleSharedCalendarSyncResults(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
.end method

.method public abstract isOrganizer(JLjava/lang/String;)Z
.end method

.method public abstract loadEventDetail(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
.end method

.method public abstract obtainMailReminderTime(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
.end method

.method public abstract queryAccount(J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
.end method

.method public abstract queryAccountsWithShared(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllDirtyEvents(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllEvents(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalEvents(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalEvents(Ljava/lang/String;IIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalEvents(Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalEvents(Ljava/lang/String;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllLocalEvents(Ljava/lang/String;JJZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
.end method

.method public abstract queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySharedAccount(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
.end method

.method public abstract querySharedAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
.end method

.method public abstract querySharedAccount(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryTodayEvents(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scheduleAlarm()V
.end method

.method public abstract updateAttendeeStatus(JI)V
.end method

.method public abstract updateCalendarVisible(Ljava/util/List;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
.end method

.method public abstract updateMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I
.end method

.method public abstract updateReminder(JI)V
.end method
