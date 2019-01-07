.class public interface abstract Lcom/alibaba/alimei/sdk/api/CalendarApi;
.super Ljava/lang/Object;
.source "CalendarApi.java"


# static fields
.field public static final DELETE_ALL:I = 0x2

.field public static final DELETE_ALL_FOLLOWING:I = 0x1

.field public static final DELETE_SELECTED:I = 0x0

.field public static final MODIFY_ALL:I = 0x3

.field public static final MODIFY_ALL_FOLLOWING:I = 0x2

.field public static final MODIFY_SELECTED:I = 0x1

.field public static final MODIFY_UNINITINALIZED:I


# virtual methods
.method public abstract addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
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
.end method

.method public abstract addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;ZLxv;)V
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
.end method

.method public abstract addEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
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
.end method

.method public abstract addEvent(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
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
.end method

.method public abstract addMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
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
.end method

.method public abstract cancelAlarm()V
.end method

.method public abstract createCalendarIfNotExist(Ljava/lang/String;)V
.end method

.method public abstract deleteEvent(JJJILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteEvent(JJJZILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteEvent(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteEvent(JZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;ILxv;)V
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
.end method

.method public abstract deleteMailReminder(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
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
.end method

.method public abstract folderCanModify(Ljava/lang/String;JLxv;)V
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
.end method

.method public abstract folderCanModify(Ljava/util/List;Lxv;)V
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
.end method

.method public abstract isOrganizer(JLjava/lang/String;Lxv;)V
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
.end method

.method public abstract loadEventDetail(JJJLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadEventDetail(JJJZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyReload()V
.end method

.method public abstract obtainMailReminderTime(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
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
.end method

.method public abstract parseICSContent(Ljava/lang/String;Lxv;)V
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
.end method

.method public abstract queryAccount(JLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAccount(JZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAllLocalEvents(IILxv;)V
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
.end method

.method public abstract queryAllLocalEvents(IIZLxv;)V
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
.end method

.method public abstract queryAllLocalEvents(IIZZLjava/util/List;Ljava/util/List;Lxv;)V
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
.end method

.method public abstract queryAllLocalEvents(IIZZLxv;)V
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
.end method

.method public abstract queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
.end method

.method public abstract queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract queryMainAccountWithShared(Ljava/lang/String;Z)Ljava/util/List;
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
.end method

.method public abstract querySharedAccount(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract queryToadyEvents(ZLxv;)V
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
.end method

.method public abstract removeCalendarAccount(Lxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleAlarm()V
.end method

.method public abstract startSyncCalendar(Z)V
.end method

.method public abstract updateAttendeeStatus(JILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAttendeeStatus(JIZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCalendarStatusToServer(Ljava/lang/String;Ljava/lang/String;IILxv;)V
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
.end method

.method public abstract updateCalendarVisible(Ljava/util/List;Lxv;)V
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
.end method

.method public abstract updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;ILxv;)V
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
.end method

.method public abstract updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;IZLxv;)V
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
.end method

.method public abstract updateEvents()V
.end method

.method public abstract updateMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
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
.end method

.method public abstract updateReminder(JILxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateReminder(JIZLxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
