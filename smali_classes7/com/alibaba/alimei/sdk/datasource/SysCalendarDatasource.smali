.class public interface abstract Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
.super Ljava/lang/Object;
.source "SysCalendarDatasource.java"


# virtual methods
.method public abstract addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;)V
.end method

.method public abstract deleteEvent(J)V
.end method

.method public abstract deleteEvent(JJJI)V
.end method

.method public abstract loadEventDetail(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
.end method

.method public abstract querySystemCalendar(J)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
.end method

.method public abstract querySystemCalendar()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySystemEvents(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAttendeeStatus(JI)V
.end method

.method public abstract updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
.end method

.method public abstract updateReminder(JI)V
.end method

.method public abstract updateSystemCalVisible(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;)Z"
        }
    .end annotation
.end method
