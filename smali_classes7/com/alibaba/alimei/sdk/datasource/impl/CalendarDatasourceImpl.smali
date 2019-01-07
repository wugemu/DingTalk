.class public Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "CalendarDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;
.implements Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_SELECTIONS:I = 0x1f4

.field private static final OR:Ljava/lang/String; = " OR "

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final SQL_TODAY_EVENT:Ljava/lang/String; = "((begin>? AND begin<?) OR (end>? AND end<?))"

.field private static final SQL_WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"

.field private static final SQL_WHERE_ID:Ljava/lang/String; = "_id=?"

.field private static final SQL_WHERE_MAIN_ACCOUNT:Ljava/lang/String; = "parentId=0 AND(account_name=? OR account_type=?)"

.field private static final SQL_WHERE_SYNC_ID:Ljava/lang/String; = "_sync_id=? AND calendar_id=?"

.field private static final TAG:Ljava/lang/String; = "CalendarDatasourceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private addCalendars(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Ljava/util/List;)V
    .locals 3
    .param p1, "calAccount"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1743
    .local p2, "addedCalendars":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1750
    :cond_0
    return-void

    .line 1747
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 1748
    .local v0, "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    goto :goto_0
.end method

.method private addEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J
    .locals 12
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 688
    const-string/jumbo v6, "CalendarDatasourceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "add user cal event model = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 690
    .local v1, "eventValues":Landroid/content/ContentValues;
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 691
    const-string/jumbo v6, "title"

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 695
    const-string/jumbo v6, "eventLocation"

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_1
    const-string/jumbo v7, "allDay"

    iget-boolean v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 701
    const-string/jumbo v6, "organizer"

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_2
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 705
    const-string/jumbo v6, "organizer_name"

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_3
    const-string/jumbo v6, "canSync"

    iget v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const-string/jumbo v7, "guestsCanModify"

    iget-boolean v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string/jumbo v6, "calendar_id"

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 714
    const-string/jumbo v6, "dtstart"

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 717
    :cond_4
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 718
    const-string/jumbo v6, "message_server_id"

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_5
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageAccountId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 722
    const-string/jumbo v6, "message_account_id"

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 725
    :cond_6
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageMailboxId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 726
    const-string/jumbo v6, "message_mailbox_id"

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageMailboxId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 729
    :cond_7
    iget-boolean v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v6, :cond_c

    .line 731
    const-string/jumbo v6, "eventTimezone"

    const-string/jumbo v7, "UTC"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string/jumbo v6, "sync_data1"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_2
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 740
    const-string/jumbo v6, "rrule"

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string/jumbo v6, "availability"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    iget-boolean v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v6, :cond_d

    .line 744
    const-string/jumbo v0, "P1D"

    .line 745
    .local v0, "duration":Ljava/lang/String;
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    invoke-direct {p0, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->formatAllDay(J)J

    move-result-wide v4

    .line 746
    .local v4, "start":J
    const-string/jumbo v6, "duration"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v6, "dtstart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 756
    .end local v0    # "duration":Ljava/lang/String;
    .end local v4    # "start":J
    :goto_3
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 757
    const-string/jumbo v6, "hasAttendeeData"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    :cond_8
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 761
    const-string/jumbo v6, "hasAlarm"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    :cond_9
    const-string/jumbo v6, "description"

    iget-object v7, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    new-instance v6, Lagp;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lagp;-><init>(Z)V

    invoke-virtual {v6, v1}, Lagp;->b(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 767
    .local v2, "eventId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_f

    .line 768
    const-string/jumbo v6, "\u4fdd\u5b58\u65e5\u5386\u5931\u8d25"

    invoke-static {v6}, Lzb;->d(Ljava/lang/String;)I

    .line 781
    :goto_4
    return-wide v2

    .line 698
    .end local v2    # "eventId":J
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 710
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 735
    :cond_c
    const-string/jumbo v6, "eventTimezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 749
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "P"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    iget-wide v10, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    .restart local v0    # "duration":Ljava/lang/String;
    const-string/jumbo v6, "duration"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 753
    .end local v0    # "duration":Ljava/lang/String;
    :cond_e
    const-string/jumbo v6, "dtend"

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 772
    .restart local v2    # "eventId":J
    :cond_f
    iput-wide v2, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    .line 774
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v2, v3, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->saveAttendees(Ljava/util/List;JZ)V

    .line 776
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v2, v3, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->saveReminder(Ljava/util/List;JZ)V

    goto :goto_4
.end method

.method private declared-synchronized addEvent(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V
    .locals 82
    .param p1, "account"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .param p2, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .param p3, "update"    # Z

    .prologue
    .line 1799
    monitor-enter p0

    if-nez p2, :cond_1

    .line 1800
    :try_start_0
    const-string/jumbo v77, "CalendarDatasourceImpl"

    const-string/jumbo v78, "addEvent error for calendar is null!!!"

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1804
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getItemId()Ljava/lang/String;

    move-result-object v71

    .line 1805
    .local v71, "syncId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getEvent()Ljava/util/List;

    move-result-object v31

    .line 1806
    .local v31, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    if-eqz v31, :cond_2

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v77

    if-eqz v77, :cond_3

    .line 1807
    :cond_2
    const-string/jumbo v77, "CalendarDatasourceImpl"

    const-string/jumbo v78, "addEvent error for eventList is null!!!"

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1799
    .end local v31    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    .end local v71    # "syncId":Ljava/lang/String;
    :catchall_0
    move-exception v77

    monitor-exit p0

    throw v77

    .line 1811
    .restart local v31    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Event;>;"
    .restart local v71    # "syncId":Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_4

    .line 1812
    :try_start_2
    const-string/jumbo v77, "CalendarDatasourceImpl"

    const-string/jumbo v78, "addEvent error for account is null!!!"

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1816
    :cond_4
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    .line 1818
    .local v4, "accountId":J
    new-instance v36, Lcom/alibaba/alimei/orm/query/Select;

    const-class v77, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v78

    const-string/jumbo v79, "Events"

    move-object/from16 v0, v36

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    move-object/from16 v3, v79

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    .local v36, "eventSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v77, 0x3

    move/from16 v0, v77

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v77, v0

    const/16 v78, 0x0

    const-string/jumbo v79, "_id"

    aput-object v79, v77, v78

    const/16 v78, 0x1

    const-string/jumbo v79, "_sync_id"

    aput-object v79, v77, v78

    const/16 v78, 0x2

    const-string/jumbo v79, "sync_data2"

    aput-object v79, v77, v78

    move-object/from16 v0, v36

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1820
    const-string/jumbo v77, "_sync_id=? AND calendar_id=?"

    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput-object v71, v78, v79

    const/16 v79, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    aput-object v80, v78, v79

    move-object/from16 v0, v36

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v45

    check-cast v45, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1822
    .local v45, "existModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-eqz v45, :cond_6

    .line 1823
    move-object/from16 v0, v45

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    move-wide/from16 v50, v0

    .line 1825
    .local v50, "id":J
    invoke-virtual/range {v45 .. v45}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->isBodySaveFile()Z

    move-result v77

    if-eqz v77, :cond_5

    .line 1826
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/alimei/orm/query/Select;->resetSelect()V

    .line 1827
    const/16 v77, 0x1

    move/from16 v0, v77

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v77, v0

    const/16 v78, 0x0

    const-string/jumbo v79, "description"

    aput-object v79, v77, v78

    move-object/from16 v0, v36

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v77, "_sync_id=? AND calendar_id=?"

    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput-object v71, v78, v79

    const/16 v79, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    aput-object v80, v78, v79

    move-object/from16 v0, v36

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    invoke-virtual/range {v36 .. v36}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v45

    .end local v45    # "existModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    check-cast v45, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1830
    .restart local v45    # "existModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-eqz v45, :cond_5

    .line 1831
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->description:Ljava/lang/String;

    move-object/from16 v77, v0

    invoke-static/range {v77 .. v77}, Lail;->b(Ljava/lang/String;)V

    .line 1834
    :cond_5
    new-instance v35, Lagp;

    const/16 v77, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v77

    invoke-direct {v0, v1}, Lagp;-><init>(Z)V

    .line 1835
    .local v35, "eventOperation":Lagp;
    move-object/from16 v0, v35

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lagp;->c(J)I

    move-result v25

    .line 1836
    .local v25, "count":I
    if-lez v25, :cond_6

    .line 1837
    const-string/jumbo v77, "CalendarDatasourceImpl"

    new-instance v78, Ljava/lang/StringBuilder;

    const-string/jumbo v79, "event exists, delete it, delete count is "

    invoke-direct/range {v78 .. v79}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v78

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .end local v25    # "count":I
    .end local v35    # "eventOperation":Lagp;
    .end local v50    # "id":J
    :cond_6
    const-string/jumbo v77, "CANCEL"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getMethod()Ljava/lang/String;

    move-result-object v78

    invoke-virtual/range {v77 .. v78}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v77

    if-eqz v77, :cond_7

    .line 1843
    const/16 v77, 0x2

    move/from16 v0, v77

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v77, v0

    const/16 v78, 0x0

    const-string/jumbo v79, "event has been cancelled, syncId = "

    aput-object v79, v77, v78

    const/16 v78, 0x1

    aput-object v71, v77, v78

    invoke-static/range {v77 .. v77}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v77 .. v77}, Lyx;->a(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1849
    :cond_7
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    .local v44, "exceptionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v70

    .line 1851
    .local v70, "size":I
    const/16 v48, 0x0

    .local v48, "i":I
    :goto_1
    move/from16 v0, v48

    move/from16 v1, v70

    if-ge v0, v1, :cond_0

    .line 1852
    move-object/from16 v0, v31

    move/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    .line 1854
    .local v30, "event":Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    new-instance v34, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-direct/range {v34 .. v34}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;-><init>()V

    .line 1856
    .local v34, "eventModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 1858
    .local v61, "reminderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    .local v15, "attendeeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    .local v13, "attachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;>;"
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    .local v65, "resourceAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;>;"
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->allDayEvent:Z

    move/from16 v77, v0

    if-eqz v77, :cond_12

    const/16 v77, 0x1

    :goto_2
    move/from16 v0, v77

    move-object/from16 v1, v34

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->allDay:I

    .line 1862
    move-object/from16 v0, v34

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->calendar_id:J

    .line 1863
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->location:Ljava/lang/String;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventLocation:Ljava/lang/String;

    .line 1864
    const/16 v52, 0x0

    .line 1865
    .local v52, "isLargeBody":Z
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1866
    .local v21, "body":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v77

    move-object/from16 v0, v77

    array-length v0, v0

    move/from16 v77, v0

    move/from16 v0, v77

    int-to-long v0, v0

    move-wide/from16 v78, v0

    const-wide/32 v80, 0x100000

    cmp-long v77, v78, v80

    if-lez v77, :cond_13

    .line 1867
    const/16 v52, 0x1

    .line 1868
    const/16 v77, 0x0

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->description:Ljava/lang/String;

    .line 1872
    :goto_3
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->startTime:J

    move-wide/from16 v78, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->checkTime(J)J

    move-result-wide v78

    move-wide/from16 v0, v78

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    .line 1873
    const/16 v77, 0x1

    move/from16 v0, v77

    move-object/from16 v1, v34

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->canSync:I

    .line 1874
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->endTime:J

    move-wide/from16 v78, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->checkTime(J)J

    move-result-wide v28

    .line 1875
    .local v28, "endTime":J
    move-object/from16 v0, v30

    iget-boolean v8, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->allDayEvent:Z

    .line 1876
    .local v8, "allDayEvent":Z
    if-eqz v8, :cond_14

    .line 1878
    const-string/jumbo v77, "UTC"

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventTimezone:Ljava/lang/String;

    .line 1879
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data1:Ljava/lang/String;

    .line 1889
    :goto_4
    if-eqz v48, :cond_8

    if-eqz v48, :cond_18

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    move-object/from16 v77, v0

    if-nez v77, :cond_18

    .line 1890
    :cond_8
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_17

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    move-object/from16 v77, v0

    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_17

    .line 1892
    const/16 v77, 0x2

    move/from16 v0, v77

    move-object/from16 v1, v34

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->availability:I

    .line 1893
    if-eqz v8, :cond_16

    .line 1895
    const-string/jumbo v77, "P1D"

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    .line 1896
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    move-wide/from16 v78, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->formatAllDay(J)J

    move-result-wide v78

    move-wide/from16 v0, v78

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    .line 1909
    :goto_5
    if-nez v48, :cond_19

    .line 1911
    const-string/jumbo v77, "CANCEL"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getMethod()Ljava/lang/String;

    move-result-object v78

    invoke-virtual/range {v77 .. v78}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v77

    if-eqz v77, :cond_9

    .line 1912
    const/16 v77, 0x2

    move/from16 v0, v77

    move-object/from16 v1, v34

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventStatus:I

    .line 1914
    :cond_9
    const/16 v77, 0x1

    move/from16 v0, v77

    move-object/from16 v1, v34

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->hasAttendeeData:I

    .line 1915
    move-object/from16 v0, v71

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    .line 1929
    :cond_a
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->getSubject()Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->title:Ljava/lang/String;

    .line 1930
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->getOrganizerEmail()Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer:Ljava/lang/String;

    .line 1931
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->getOrganizerName()Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer_name:Ljava/lang/String;

    .line 1933
    if-eqz v48, :cond_b

    if-eqz v48, :cond_23

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    move-object/from16 v77, v0

    if-nez v77, :cond_23

    .line 1934
    :cond_b
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_23

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    move-object/from16 v77, v0

    .line 1935
    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_23

    .line 1937
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurRuleList:Ljava/util/List;

    move-object/from16 v57, v0

    .line 1938
    .local v57, "recurList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    .local v27, "erList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;>;"
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_6
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_21

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;

    .line 1940
    .local v67, "rrule":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
    new-instance v58, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct/range {v58 .. v58}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 1941
    .local v58, "recurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getRuleFreq(Ljava/lang/String;)I

    move-result v47

    .line 1942
    .local v47, "freq":I
    if-ltz v47, :cond_c

    .line 1943
    move/from16 v0, v47

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    .line 1946
    :cond_c
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->interval:Ljava/lang/Integer;

    move-object/from16 v78, v0

    if-eqz v78, :cond_d

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->interval:Ljava/lang/Integer;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Integer;->intValue()I

    move-result v78

    if-lez v78, :cond_d

    .line 1947
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->interval:Ljava/lang/Integer;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Integer;->intValue()I

    move-result v78

    move/from16 v0, v78

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    .line 1950
    :cond_d
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->count:Ljava/lang/Integer;

    move-object/from16 v78, v0

    if-eqz v78, :cond_e

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->count:Ljava/lang/Integer;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Integer;->intValue()I

    move-result v78

    if-lez v78, :cond_e

    .line 1951
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->count:Ljava/lang/Integer;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Integer;->intValue()I

    move-result v78

    move/from16 v0, v78

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    .line 1954
    :cond_e
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->until:Ljava/lang/Long;

    move-object/from16 v78, v0

    if-eqz v78, :cond_10

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->until:Ljava/lang/Long;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Long;->longValue()J

    move-result-wide v78

    const-wide/16 v80, 0x0

    cmp-long v78, v78, v80

    if-lez v78, :cond_10

    .line 1955
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v72

    .line 1956
    .local v72, "timeZone":Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    move-object/from16 v78, v0

    if-eqz v78, :cond_f

    .line 1957
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->getTzId()Ljava/lang/String;

    move-result-object v72

    .line 1959
    :cond_f
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->until:Ljava/lang/Long;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Long;->longValue()J

    move-result-wide v78

    move-wide/from16 v0, v78

    move-object/from16 v2, v72

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->parseUntilTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    .line 1963
    .end local v72    # "timeZone":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->weekStart:Ljava/lang/String;

    move-object/from16 v78, v0

    .line 1964
    invoke-static/range {v78 .. v78}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/String;)I

    move-result v76

    .line 1965
    .local v76, "wkst":I
    if-lez v76, :cond_11

    .line 1966
    move/from16 v0, v76

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    .line 1969
    :cond_11
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    move-object/from16 v78, v0

    if-eqz v78, :cond_1c

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    move-object/from16 v78, v0

    .line 1970
    invoke-interface/range {v78 .. v78}, Ljava/util/List;->size()I

    move-result v78

    if-lez v78, :cond_1c

    .line 1971
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    move-object/from16 v75, v0

    .line 1972
    .local v75, "weekDayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;>;"
    invoke-interface/range {v75 .. v75}, Ljava/util/List;->size()I

    move-result v53

    .line 1973
    .local v53, "len":I
    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 1974
    .local v22, "byday":[I
    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1975
    .local v24, "bydayNum":[I
    move/from16 v23, v53

    .line 1976
    .local v23, "bydayCount":I
    const/16 v49, 0x0

    .line 1977
    .local v49, "index":I
    invoke-interface/range {v75 .. v75}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v78

    :goto_7
    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->hasNext()Z

    move-result v79

    if-eqz v79, :cond_1b

    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;

    .line 1978
    .local v74, "weekDay":Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;
    invoke-virtual/range {v74 .. v74}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;->getWeekday()Ljava/lang/String;

    move-result-object v73

    .line 1979
    .local v73, "wDay":Ljava/lang/String;
    move-object/from16 v0, v73

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->parseWday(Ljava/lang/String;[I[II)V

    .line 1980
    add-int/lit8 v49, v49, 0x1

    .line 1981
    goto :goto_7

    .line 1861
    .end local v8    # "allDayEvent":Z
    .end local v21    # "body":Ljava/lang/String;
    .end local v22    # "byday":[I
    .end local v23    # "bydayCount":I
    .end local v24    # "bydayNum":[I
    .end local v27    # "erList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;>;"
    .end local v28    # "endTime":J
    .end local v47    # "freq":I
    .end local v49    # "index":I
    .end local v52    # "isLargeBody":Z
    .end local v53    # "len":I
    .end local v57    # "recurList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;>;"
    .end local v58    # "recurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v67    # "rrule":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
    .end local v73    # "wDay":Ljava/lang/String;
    .end local v74    # "weekDay":Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;
    .end local v75    # "weekDayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;>;"
    .end local v76    # "wkst":I
    :cond_12
    const/16 v77, 0x0

    goto/16 :goto_2

    .line 1870
    .restart local v21    # "body":Ljava/lang/String;
    .restart local v52    # "isLargeBody":Z
    :cond_13
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->description:Ljava/lang/String;

    goto/16 :goto_3

    .line 1882
    .restart local v8    # "allDayEvent":Z
    .restart local v28    # "endTime":J
    :cond_14
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v72

    .line 1883
    .restart local v72    # "timeZone":Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    move-object/from16 v77, v0

    if-eqz v77, :cond_15

    .line 1884
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;

    move-object/from16 v77, v0

    invoke-virtual/range {v77 .. v77}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeDes;->getTzId()Ljava/lang/String;

    move-result-object v72

    .line 1886
    :cond_15
    move-object/from16 v0, v72

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventTimezone:Ljava/lang/String;

    goto/16 :goto_4

    .line 1898
    .end local v72    # "timeZone":Ljava/lang/String;
    :cond_16
    new-instance v77, Ljava/lang/StringBuilder;

    const-string/jumbo v78, "P"

    invoke-direct/range {v77 .. v78}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    move-wide/from16 v78, v0

    sub-long v78, v28, v78

    const-wide/32 v80, 0xea60

    div-long v78, v78, v80

    invoke-virtual/range {v77 .. v79}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string/jumbo v78, "M"

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    goto/16 :goto_5

    .line 1902
    :cond_17
    move-wide/from16 v0, v28

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    goto/16 :goto_5

    .line 1906
    :cond_18
    move-wide/from16 v0, v28

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    goto/16 :goto_5

    .line 1916
    :cond_19
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    move-object/from16 v77, v0

    if-eqz v77, :cond_a

    .line 1918
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->recurId:Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;

    move-object/from16 v77, v0

    invoke-virtual/range {v77 .. v77}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurId;->getDateTime()J

    move-result-wide v78

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->checkTime(J)J

    move-result-wide v54

    .line 1919
    .local v54, "originalInstanceTime":J
    move-wide/from16 v0, v54

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->originalInstanceTime:J

    .line 1920
    move-object/from16 v0, v71

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    .line 1922
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->generateExceptionSyncId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    .line 1923
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    move-object/from16 v0, v44

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v77

    if-eqz v77, :cond_a

    .line 1851
    .end local v54    # "originalInstanceTime":J
    :cond_1a
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_1

    .line 1982
    .restart local v22    # "byday":[I
    .restart local v23    # "bydayCount":I
    .restart local v24    # "bydayNum":[I
    .restart local v27    # "erList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;>;"
    .restart local v47    # "freq":I
    .restart local v49    # "index":I
    .restart local v53    # "len":I
    .restart local v57    # "recurList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;>;"
    .restart local v58    # "recurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .restart local v67    # "rrule":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
    .restart local v75    # "weekDayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;>;"
    .restart local v76    # "wkst":I
    :cond_1b
    move-object/from16 v0, v22

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    .line 1983
    move-object/from16 v0, v24

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    .line 1984
    move/from16 v0, v23

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    .line 1987
    .end local v22    # "byday":[I
    .end local v23    # "bydayCount":I
    .end local v24    # "bydayNum":[I
    .end local v49    # "index":I
    .end local v53    # "len":I
    .end local v75    # "weekDayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;>;"
    :cond_1c
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfMonth:Ljava/util/List;

    move-object/from16 v78, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    move-object/from16 v79, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v79

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->listToArray(Ljava/util/List;[I)[I

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    .line 1990
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfYear:Ljava/util/List;

    move-object/from16 v78, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    move-object/from16 v79, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v79

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->listToArray(Ljava/util/List;[I)[I

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    .line 1992
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byMonthListOfYear:Ljava/util/List;

    move-object/from16 v78, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    move-object/from16 v79, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v79

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->listToArray(Ljava/util/List;[I)[I

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    .line 1994
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byWeekListOfYear:Ljava/util/List;

    move-object/from16 v78, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    move-object/from16 v79, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v79

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->listToArray(Ljava/util/List;[I)[I

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    .line 1996
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->bySetPosList:Ljava/util/List;

    move-object/from16 v78, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    move-object/from16 v79, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v79

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->listToArray(Ljava/util/List;[I)[I

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    .line 1999
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    move-object/from16 v78, v0

    if-eqz v78, :cond_1d

    .line 2000
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    array-length v0, v0

    move/from16 v78, v0

    move/from16 v0, v78

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    .line 2003
    :cond_1d
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    move-object/from16 v78, v0

    if-eqz v78, :cond_1e

    .line 2004
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    array-length v0, v0

    move/from16 v78, v0

    move/from16 v0, v78

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->r:I

    .line 2007
    :cond_1e
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    move-object/from16 v78, v0

    if-eqz v78, :cond_1f

    .line 2008
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    array-length v0, v0

    move/from16 v78, v0

    move/from16 v0, v78

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    .line 2011
    :cond_1f
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    move-object/from16 v78, v0

    if-eqz v78, :cond_20

    .line 2012
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    array-length v0, v0

    move/from16 v78, v0

    move/from16 v0, v78

    move-object/from16 v1, v58

    iput v0, v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->x:I

    .line 2015
    :cond_20
    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2018
    .end local v47    # "freq":I
    .end local v58    # "recurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v67    # "rrule":Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
    .end local v76    # "wkst":I
    :cond_21
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    .line 2019
    .local v69, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_8
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_22

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 2020
    .local v68, "rule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    invoke-virtual/range {v68 .. v68}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v69

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    const-string/jumbo v78, "\n"

    move-object/from16 v0, v69

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 2023
    .end local v68    # "rule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    :cond_22
    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->length()I

    move-result v77

    add-int/lit8 v77, v77, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2024
    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rrule:Ljava/lang/String;

    .line 2028
    .end local v27    # "erList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;>;"
    .end local v57    # "recurList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;>;"
    .end local v69    # "sb":Ljava/lang/StringBuilder;
    :cond_23
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    .local v39, "exEventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->exceptionDateList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->exceptionDateList:Ljava/util/List;

    move-object/from16 v77, v0

    .line 2030
    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_24

    .line 2032
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->exceptionDateList:Ljava/util/List;

    move-object/from16 v41, v0

    .line 2033
    .local v41, "exList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_9
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_24

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2036
    .local v37, "exDate":Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;
    :try_start_3
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->clone()Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v40

    .line 2042
    .local v40, "exEventModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    const/16 v78, 0x0

    :try_start_4
    move-object/from16 v0, v78

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rrule:Ljava/lang/String;

    .line 2043
    const/16 v78, 0x0

    move-object/from16 v0, v78

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    .line 2044
    const/16 v78, 0x0

    move/from16 v0, v78

    move-object/from16 v1, v40

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->availability:I

    .line 2045
    move-wide/from16 v0, v28

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    .line 2046
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;->dateTime:J

    move-wide/from16 v78, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->checkTime(J)J

    move-result-wide v42

    .line 2047
    .local v42, "exTime":J
    move-wide/from16 v0, v42

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->originalInstanceTime:J

    .line 2048
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->generateExceptionSyncId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    .line 2049
    const/16 v78, 0x2

    move/from16 v0, v78

    move-object/from16 v1, v40

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventStatus:I

    .line 2050
    move-object/from16 v0, v71

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    .line 2051
    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2052
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    move-object/from16 v0, v44

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2037
    .end local v40    # "exEventModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    .end local v42    # "exTime":J
    :catch_0
    move-exception v26

    .line 2039
    .local v26, "e":Ljava/lang/CloneNotSupportedException;
    const-string/jumbo v78, "CalendarDatasourceImpl"

    new-instance v79, Ljava/lang/StringBuilder;

    const-string/jumbo v80, " eventExceptionDate exception e = "

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v79

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v78 .. v79}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2056
    .end local v26    # "e":Ljava/lang/CloneNotSupportedException;
    .end local v37    # "exDate":Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;
    .end local v41    # "exList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventExceptionDate;>;"
    :cond_24
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_26

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    move-object/from16 v77, v0

    .line 2057
    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_26

    .line 2058
    move-object/from16 v0, v30

    iget-object v9, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attendeeList:Ljava/util/List;

    .line 2059
    .local v9, "attList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    const/16 v77, 0x1

    move/from16 v0, v77

    move-object/from16 v1, v34

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->hasAttendeeData:I

    .line 2060
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_a
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_26

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;

    .line 2061
    .local v14, "attendee":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    new-instance v16, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;-><init>()V

    .line 2062
    .local v16, "attendeeModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    iget-object v0, v14, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2063
    .local v17, "attendeeName":Ljava/lang/String;
    iget-object v0, v14, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getAttendeeStatus(Ljava/lang/String;)I

    move-result v19

    .line 2064
    .local v19, "attendeeStatus":I
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeName:Ljava/lang/String;

    .line 2065
    iget-object v0, v14, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->address:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeEmail:Ljava/lang/String;

    .line 2066
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeStatus:I

    .line 2068
    iget-object v0, v14, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->role:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getAttendeeType(Ljava/lang/String;)I

    move-result v20

    .line 2069
    .local v20, "attendeeType":I
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeType:I

    .line 2071
    iget-object v0, v14, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->address:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->account_name:Ljava/lang/String;

    move-object/from16 v79, v0

    invoke-virtual/range {v78 .. v79}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_25

    const/16 v78, 0x1

    move/from16 v0, v19

    move/from16 v1, v78

    if-ne v0, v1, :cond_25

    const/16 v59, 0x2

    .line 2074
    .local v59, "relationShip":I
    :goto_b
    move/from16 v0, v59

    move-object/from16 v1, v16

    iput v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeRelationship:I

    .line 2075
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2071
    .end local v59    # "relationShip":I
    :cond_25
    const/16 v59, 0x1

    goto :goto_b

    .line 2079
    .end local v9    # "attList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    .end local v14    # "attendee":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    .end local v16    # "attendeeModel":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    .end local v17    # "attendeeName":Ljava/lang/String;
    .end local v19    # "attendeeStatus":I
    .end local v20    # "attendeeType":I
    :cond_26
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->alarmList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_27

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->alarmList:Ljava/util/List;

    move-object/from16 v77, v0

    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_27

    .line 2081
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->alarmList:Ljava/util/List;

    .line 2082
    .local v7, "alarmTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_c
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_27

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;

    .line 2083
    .local v6, "alarm":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;
    new-instance v60, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;

    invoke-direct/range {v60 .. v60}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;-><init>()V

    .line 2084
    .local v60, "reminder":Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;
    const-wide/16 v78, 0x1

    move-wide/from16 v0, v78

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->method:J

    .line 2085
    invoke-virtual {v6}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;->getSecond()J

    move-result-wide v78

    const-wide/16 v80, 0x3c

    div-long v78, v78, v80

    move-wide/from16 v0, v78

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->minutes:J

    .line 2086
    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2090
    .end local v6    # "alarm":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;
    .end local v7    # "alarmTimeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;>;"
    .end local v60    # "reminder":Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;
    :cond_27
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_28

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    move-object/from16 v77, v0

    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_28

    .line 2091
    move-object/from16 v0, v30

    iget-object v11, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    .line 2092
    .local v11, "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_d
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_28

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/restfulapi/data/Attach;

    .line 2093
    .local v10, "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    new-instance v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    invoke-direct {v12}, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;-><init>()V

    .line 2094
    .local v12, "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    iget-object v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iput-object v0, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->attachmentId:Ljava/lang/String;

    .line 2095
    iget-object v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iput-object v0, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->name:Ljava/lang/String;

    .line 2096
    iget v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move-wide/from16 v0, v78

    iput-wide v0, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->size:J

    goto :goto_d

    .line 2100
    .end local v10    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v11    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .end local v12    # "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    :cond_28
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_29

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    move-object/from16 v77, v0

    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_29

    .line 2101
    move-object/from16 v0, v30

    iget-object v11, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->attachList:Ljava/util/List;

    .line 2102
    .restart local v11    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_e
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_29

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/restfulapi/data/Attach;

    .line 2103
    .restart local v10    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    new-instance v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    invoke-direct {v12}, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;-><init>()V

    .line 2104
    .restart local v12    # "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    iget-object v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iput-object v0, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->attachmentId:Ljava/lang/String;

    .line 2105
    iget-object v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iput-object v0, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->name:Ljava/lang/String;

    .line 2106
    iget v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move-wide/from16 v0, v78

    iput-wide v0, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->size:J

    .line 2107
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 2111
    .end local v10    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v11    # "attachList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    .end local v12    # "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    :cond_29
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->resourceList:Ljava/util/List;

    move-object/from16 v77, v0

    if-eqz v77, :cond_2a

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->resourceList:Ljava/util/List;

    move-object/from16 v77, v0

    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v77

    if-lez v77, :cond_2a

    .line 2112
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->resourceList:Ljava/util/List;

    move-object/from16 v66, v0

    .line 2113
    .local v66, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_f
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_2a

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/restfulapi/data/Attach;

    .line 2114
    .restart local v10    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    new-instance v64, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    invoke-direct/range {v64 .. v64}, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;-><init>()V

    .line 2115
    .local v64, "resourceAtt":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    iget-object v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v64

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->attachmentId:Ljava/lang/String;

    .line 2116
    iget-object v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentId:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v64

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->contentId:Ljava/lang/String;

    .line 2117
    iget v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move-wide/from16 v0, v78

    move-object/from16 v2, v64

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->size:J

    .line 2118
    iget-object v0, v10, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v64

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->name:Ljava/lang/String;

    .line 2119
    move-object/from16 v0, v65

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2123
    .end local v10    # "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    .end local v64    # "resourceAtt":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    .end local v66    # "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    :cond_2a
    if-nez v48, :cond_2d

    .line 2124
    new-instance v35, Lagp;

    const/16 v77, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v77

    invoke-direct {v0, v1}, Lagp;-><init>(Z)V

    .line 2126
    .restart local v35    # "eventOperation":Lagp;
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lagp;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;)J

    move-result-wide v32

    .line 2127
    .local v32, "eventId":J
    const-wide/16 v78, 0x0

    cmp-long v77, v32, v78

    if-gez v77, :cond_2b

    .line 2128
    const-string/jumbo v77, "CalendarDatasourceImpl"

    const/16 v78, 0x4

    move/from16 v0, v78

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v78, v0

    const/16 v79, 0x0

    const-string/jumbo v80, "save event fail, syncId = "

    aput-object v80, v78, v79

    const/16 v79, 0x1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    move-object/from16 v80, v0

    aput-object v80, v78, v79

    const/16 v79, 0x2

    const-string/jumbo v80, ", title = "

    aput-object v80, v78, v79

    const/16 v79, 0x3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->title:Ljava/lang/String;

    move-object/from16 v80, v0

    aput-object v80, v78, v79

    invoke-static/range {v78 .. v78}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2131
    :cond_2b
    const-string/jumbo v77, "CalendarDatasourceImpl"

    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v78, v0

    const/16 v79, 0x0

    const-string/jumbo v80, "save event success, syncId = "

    aput-object v80, v78, v79

    const/16 v79, 0x1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    move-object/from16 v80, v0

    aput-object v80, v78, v79

    invoke-static/range {v78 .. v78}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :goto_10
    if-eqz v52, :cond_2c

    .line 2146
    const/16 v77, 0x2

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v78

    move/from16 v0, v77

    move-object/from16 v1, v78

    move-object/from16 v2, v21

    invoke-static {v4, v5, v0, v1, v2}, Lail;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 2147
    .local v46, "filePath":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v77

    if-nez v77, :cond_2c

    .line 2148
    new-instance v56, Lcom/alibaba/alimei/orm/query/Update;

    const-class v77, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v78

    const-string/jumbo v79, "Events"

    move-object/from16 v0, v56

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    move-object/from16 v3, v79

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    .local v56, "pathUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v77, "sync_data2"

    const-string/jumbo v78, "1"

    move-object/from16 v0, v56

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2150
    const-string/jumbo v77, "description"

    move-object/from16 v0, v56

    move-object/from16 v1, v77

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2151
    const-string/jumbo v77, "calendar_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    move-object/from16 v0, v56

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    const-string/jumbo v77, "_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    move-object/from16 v0, v56

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    invoke-virtual/range {v56 .. v56}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 2158
    .end local v46    # "filePath":Ljava/lang/String;
    .end local v56    # "pathUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_2c
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_11
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_2f

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;

    .line 2159
    .local v63, "reminders":Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;
    move-wide/from16 v0, v32

    move-object/from16 v2, v63

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->event_Id:J

    .line 2160
    new-instance v62, Lagq;

    const/16 v78, 0x1

    move-object/from16 v0, v62

    move/from16 v1, v78

    invoke-direct {v0, v1}, Lagq;-><init>(Z)V

    .line 2162
    .local v62, "reminderOperation":Lagq;
    invoke-virtual/range {v62 .. v63}, Lagq;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;)J

    goto :goto_11

    .line 2134
    .end local v32    # "eventId":J
    .end local v35    # "eventOperation":Lagp;
    .end local v62    # "reminderOperation":Lagq;
    .end local v63    # "reminders":Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;
    :cond_2d
    new-instance v35, Lagp;

    const/16 v77, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v77

    invoke-direct {v0, v1}, Lagp;-><init>(Z)V

    .line 2136
    .restart local v35    # "eventOperation":Lagp;
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lagp;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;)J

    move-result-wide v32

    .line 2137
    .restart local v32    # "eventId":J
    const-wide/16 v78, 0x0

    cmp-long v77, v32, v78

    if-gez v77, :cond_2e

    .line 2138
    const-string/jumbo v77, "CalendarDatasourceImpl"

    const/16 v78, 0x4

    move/from16 v0, v78

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v78, v0

    const/16 v79, 0x0

    const-string/jumbo v80, "save exception event fail, syncId = "

    aput-object v80, v78, v79

    const/16 v79, 0x1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    move-object/from16 v80, v0

    aput-object v80, v78, v79

    const/16 v79, 0x2

    const-string/jumbo v80, ", title = "

    aput-object v80, v78, v79

    const/16 v79, 0x3

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->title:Ljava/lang/String;

    move-object/from16 v80, v0

    aput-object v80, v78, v79

    invoke-static/range {v78 .. v78}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2141
    :cond_2e
    const-string/jumbo v77, "CalendarDatasourceImpl"

    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v78, v0

    const/16 v79, 0x0

    const-string/jumbo v80, "save rule event success, syncId = "

    aput-object v80, v78, v79

    const/16 v79, 0x1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    move-object/from16 v80, v0

    aput-object v80, v78, v79

    invoke-static/range {v78 .. v78}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v77 .. v78}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2166
    :cond_2f
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_12
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_30

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    .line 2167
    .local v14, "attendee":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    move-wide/from16 v0, v32

    iput-wide v0, v14, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->event_id:J

    .line 2168
    new-instance v18, Lago;

    const/16 v78, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v78

    invoke-direct {v0, v1}, Lago;-><init>(Z)V

    .line 2170
    .local v18, "attendeeOperation":Lago;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lago;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;)J

    goto :goto_12

    .line 2173
    .end local v14    # "attendee":Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;
    .end local v18    # "attendeeOperation":Lago;
    :cond_30
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_13
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_31

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    .line 2174
    .restart local v12    # "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    move-wide/from16 v0, v32

    iput-wide v0, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->eventKey:J

    .line 2175
    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->save()J

    goto :goto_13

    .line 2178
    .end local v12    # "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    :cond_31
    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_14
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_32

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    .line 2179
    .restart local v64    # "resourceAtt":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    move-wide/from16 v0, v32

    move-object/from16 v2, v64

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->eventKey:J

    .line 2180
    invoke-virtual/range {v64 .. v64}, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->save()J

    goto :goto_14

    .line 2184
    .end local v64    # "resourceAtt":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    :cond_32
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v77

    :goto_15
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v78

    if-eqz v78, :cond_1a

    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 2185
    .local v38, "exEvent":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    new-instance v35, Lagp;

    .end local v35    # "eventOperation":Lagp;
    const/16 v78, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v78

    invoke-direct {v0, v1}, Lagp;-><init>(Z)V

    .line 2187
    .restart local v35    # "eventOperation":Lagp;
    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lagp;->a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_15
.end method

.method private addMailReminderInner(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J
    .locals 7
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1371
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    .line 1373
    new-instance v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/ReminderModel;-><init>()V

    .line 1374
    .local v0, "reminder":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    iput v6, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    .line 1375
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->method:I

    .line 1376
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 1377
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    .end local v0    # "reminder":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    :cond_0
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1381
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 1384
    :cond_1
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Z)J

    move-result-wide v2

    return-wide v2
.end method

.method private checkTime(J)J
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 2241
    const-wide/16 v0, 0x3e8

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private deleteCalendars(JLjava/util/List;)V
    .locals 3
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1763
    .local p3, "deletedCalendars":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1770
    :cond_0
    return-void

    .line 1767
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 1768
    .local v0, "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->deleteEvent(JLcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V

    goto :goto_0
.end method

.method private declared-synchronized deleteEvent(JLcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .prologue
    .line 1773
    monitor-enter p0

    if-nez p3, :cond_0

    .line 1796
    :goto_0
    monitor-exit p0

    return-void

    .line 1777
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getItemId()Ljava/lang/String;

    move-result-object v5

    .line 1778
    .local v5, "syncId":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Events"

    invoke-direct {v4, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "sync_data2"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "description"

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1780
    const-string/jumbo v6, "calendar_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    const-string/jumbo v6, "_sync_id"

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 1783
    .local v3, "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1784
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1785
    .local v1, "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-eqz v1, :cond_1

    .line 1788
    iget-object v7, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data2:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->isBodySaveFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1789
    iget-object v7, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->description:Ljava/lang/String;

    invoke-static {v7}, Lail;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1773
    .end local v1    # "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    .end local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    .end local v4    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v5    # "syncId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1793
    .restart local v3    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    .restart local v4    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .restart local v5    # "syncId":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Events"

    invoke-direct {v2, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    .local v2, "eventDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v6, "_sync_id=? AND calendar_id=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/orm/query/Delete;

    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v0

    .line 1795
    .local v0, "count":I
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "calendar deleteEvent syncId = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", delete count: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private deleteMailReminderInner(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I
    .locals 8
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 1118
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 1119
    .local v1, "mainAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v1, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return v2

    .line 1122
    :cond_1
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    .line 1123
    .local v4, "serverId":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Events"

    invoke-direct {v3, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "_id"

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1125
    const-string/jumbo v5, "message_server_id"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string/jumbo v5, "calendar_id"

    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1128
    .local v0, "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-eqz v0, :cond_0

    .line 1131
    const-string/jumbo v5, "CalendarDatasourceImpl"

    const-string/jumbo v6, "delete mail reminder"

    invoke-static {v5, v6}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v5, Lagp;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lagp;-><init>(Z)V

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    invoke-virtual {v5, v6, v7}, Lagp;->c(J)I

    move-result v2

    .line 1134
    .local v2, "result":I
    goto :goto_0
.end method

.method private formatAllDay(J)J
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 2245
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private generateExceptionSyncId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "orginalSyncId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2322
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAttendeeStatus(Ljava/lang/String;)I
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2328
    const/4 v0, 0x0

    .line 2330
    .local v0, "attendeeStatus":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2331
    const/4 v1, 0x0

    .line 2343
    :goto_0
    return v1

    .line 2334
    :cond_0
    const-string/jumbo v1, "ACCEPTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2335
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 2343
    goto :goto_0

    .line 2336
    :cond_2
    const-string/jumbo v1, "DECLINED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2337
    const/4 v0, 0x2

    goto :goto_1

    .line 2338
    :cond_3
    const-string/jumbo v1, "TENTATIVE"

    .line 2339
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2340
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private getAttendeeType(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2347
    const/4 v0, 0x0

    .line 2349
    .local v0, "attendeeType":I
    const-string/jumbo v1, "REQ-PARTICIPANT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2350
    const/4 v0, 0x1

    .line 2355
    :cond_0
    :goto_0
    return v0

    .line 2351
    :cond_1
    const-string/jumbo v1, "OPT-PARTICIPANT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2352
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getContentValuesFromModel(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Landroid/content/ContentValues;
    .locals 18
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .prologue
    .line 1615
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v13, 0x0

    .line 1616
    .local v13, "title":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 1617
    .local v7, "isAllDay":Z
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 1618
    .local v8, "rrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 1619
    .local v12, "timezone":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 1620
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v12

    .line 1622
    :cond_0
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v9, "startTime":Landroid/text/format/Time;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v6, "endTime":Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1626
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1628
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1632
    .local v14, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 1633
    .local v2, "calendarId":J
    if-eqz v7, :cond_5

    .line 1636
    const-string/jumbo v12, "UTC"

    .line 1637
    const/4 v15, 0x0

    iput v15, v9, Landroid/text/format/Time;->hour:I

    .line 1638
    const/4 v15, 0x0

    iput v15, v9, Landroid/text/format/Time;->minute:I

    .line 1639
    const/4 v15, 0x0

    iput v15, v9, Landroid/text/format/Time;->second:I

    .line 1640
    iput-object v12, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1641
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 1643
    .local v10, "startMillis":J
    const/4 v15, 0x0

    iput v15, v6, Landroid/text/format/Time;->hour:I

    .line 1644
    const/4 v15, 0x0

    iput v15, v6, Landroid/text/format/Time;->minute:I

    .line 1645
    const/4 v15, 0x0

    iput v15, v6, Landroid/text/format/Time;->second:I

    .line 1646
    iput-object v12, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1647
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 1648
    .local v4, "endMillis":J
    const-wide/32 v16, 0x5265c00

    add-long v16, v16, v10

    cmp-long v15, v4, v16

    if-gez v15, :cond_1

    .line 1652
    const-wide/32 v16, 0x5265c00

    add-long v4, v10, v16

    .line 1659
    :cond_1
    :goto_1
    const-string/jumbo v15, "calendar_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1660
    const-string/jumbo v15, "eventTimezone"

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string/jumbo v15, "title"

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    const-string/jumbo v16, "allDay"

    if-eqz v7, :cond_6

    const/4 v15, 0x1

    :goto_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1663
    const-string/jumbo v15, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1664
    const-string/jumbo v15, "rrule"

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addRecurrenceRule(Landroid/content/ContentValues;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    .line 1671
    :goto_3
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 1672
    const-string/jumbo v15, "description"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :goto_4
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 1677
    const-string/jumbo v15, "eventLocation"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    :goto_5
    const-string/jumbo v15, "availability"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1682
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    if-eqz v15, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 1683
    const-string/jumbo v15, "hasAttendeeData"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    :cond_2
    const-string/jumbo v15, "eventStatus"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1687
    const-string/jumbo v15, "organizer"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1689
    const-string/jumbo v15, "organizer_name"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_3
    return-object v14

    .line 1615
    .end local v2    # "calendarId":J
    .end local v4    # "endMillis":J
    .end local v6    # "endTime":Landroid/text/format/Time;
    .end local v7    # "isAllDay":Z
    .end local v8    # "rrule":Ljava/lang/String;
    .end local v9    # "startTime":Landroid/text/format/Time;
    .end local v10    # "startMillis":J
    .end local v12    # "timezone":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 1655
    .restart local v2    # "calendarId":J
    .restart local v6    # "endTime":Landroid/text/format/Time;
    .restart local v7    # "isAllDay":Z
    .restart local v8    # "rrule":Ljava/lang/String;
    .restart local v9    # "startTime":Landroid/text/format/Time;
    .restart local v12    # "timezone":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 1656
    .restart local v10    # "startMillis":J
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .restart local v4    # "endMillis":J
    goto/16 :goto_1

    .line 1662
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1668
    :cond_7
    const-string/jumbo v15, "duration"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string/jumbo v15, "dtend"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 1674
    :cond_8
    const-string/jumbo v15, "description"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1679
    :cond_9
    const-string/jumbo v15, "eventLocation"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private getRuleFreq(Ljava/lang/String;)I
    .locals 2
    .param p1, "freq"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, -0x1

    .line 2193
    if-nez p1, :cond_1

    .line 2213
    :cond_0
    :goto_0
    return v0

    .line 2197
    :cond_1
    const-string/jumbo v1, "YEARLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2198
    const/4 v0, 0x7

    goto :goto_0

    .line 2199
    :cond_2
    const-string/jumbo v1, "MONTHLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2200
    const/4 v0, 0x6

    goto :goto_0

    .line 2201
    :cond_3
    const-string/jumbo v1, "WEEKLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2202
    const/4 v0, 0x5

    goto :goto_0

    .line 2203
    :cond_4
    const-string/jumbo v1, "DAILY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2204
    const/4 v0, 0x4

    goto :goto_0

    .line 2205
    :cond_5
    const-string/jumbo v1, "HOURLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2206
    const/4 v0, 0x3

    goto :goto_0

    .line 2207
    :cond_6
    const-string/jumbo v1, "MINUTELY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2208
    const/4 v0, 0x2

    goto :goto_0

    .line 2209
    :cond_7
    const-string/jumbo v1, "SECONDLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleCalendarSyncResults(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
    .locals 6
    .param p1, "calAccount"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "syncResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->handleCalendarSyncResults(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private declared-synchronized handleCalendarSyncResults(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p1, "calAccount"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "syncResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;
    .param p4, "sharedAccountName"    # Ljava/lang/String;
    .param p5, "serverId"    # Ljava/lang/String;

    .prologue
    .line 129
    monitor-enter p0

    if-nez p3, :cond_0

    .line 130
    :try_start_0
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const-string/jumbo v7, "handleCalendarSyncResults fail for syncResult is null!!!"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    :try_start_1
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "handleCalendarSyncResults fail for calAccount is null!!!, syncKey: "

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getSyncKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 140
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->beginTransaction()V

    .line 142
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    move-wide/from16 v18, v0

    .line 143
    .local v18, "accountId":J
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->isForceFullSync()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    new-instance v24, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "Events"

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v7, v9}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v24, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v6, "calendar_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v23

    .line 147
    .local v23, "count":I
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "accountName = "

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object p2, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", sharedAccountName = "

    aput-object v10, v7, v9

    const/4 v9, 0x3

    aput-object p4, v7, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ", force full sync, count = "

    aput-object v10, v7, v9

    const/4 v9, 0x5

    .line 149
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 147
    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v23    # "count":I
    .end local v24    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getCount()I

    move-result v6

    if-gtz v6, :cond_3

    .line 153
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "accountName = "

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object p2, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", sharedAccountName = "

    aput-object v10, v7, v9

    const/4 v9, 0x3

    aput-object p4, v7, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ", syncKey: "

    aput-object v10, v7, v9

    const/4 v9, 0x5

    .line 155
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getSyncKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x6

    const-string/jumbo v10, ", no new calendar synced"

    aput-object v10, v7, v9

    .line 153
    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 238
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->setTransactionSuccessful()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 160
    :cond_3
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getCalendars()Ljava/util/List;

    move-result-object v22

    .line 161
    .local v22, "calendarsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    if-eqz v22, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 162
    :cond_4
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "accountName = "

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object p2, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", sharedAccountName = "

    aput-object v10, v7, v9

    const/4 v9, 0x3

    aput-object p4, v7, v9

    const/4 v9, 0x4

    const-string/jumbo v10, ", calendarsList is null or empty"

    aput-object v10, v7, v9

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->setTransactionSuccessful()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 168
    :cond_5
    :try_start_6
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "sync calendar result: "

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 172
    .local v20, "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    if-nez v20, :cond_6

    .line 173
    const-string/jumbo v7, "CalendarDatasourceImpl"

    const-string/jumbo v9, "handleCalendarSyncResults calendarsList has null calendar!!!"

    invoke-static {v7, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 238
    .end local v18    # "accountId":J
    .end local v20    # "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .end local v22    # "calendarsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->setTransactionSuccessful()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->endTransaction()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 177
    .restart local v18    # "accountId":J
    .restart local v20    # "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .restart local v22    # "calendarsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    :cond_6
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;->getAction()I

    move-result v17

    .line 178
    .local v17, "action":I
    packed-switch v17, :pswitch_data_0

    goto :goto_1

    .line 180
    :pswitch_0
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    goto :goto_1

    .line 183
    :pswitch_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    goto :goto_1

    .line 186
    :pswitch_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->deleteEvent(JLcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)V

    goto :goto_1

    .line 198
    .end local v17    # "action":I
    .end local v20    # "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getSyncKey()Ljava/lang/String;

    move-result-object v14

    .line 199
    .local v14, "syncKey":Ljava/lang/String;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    .line 202
    .local v4, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v4, :cond_8

    .line 203
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const-string/jumbo v7, "can not save calendar synckey for accountModel is null"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 238
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->setTransactionSuccessful()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 206
    :cond_8
    :try_start_a
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v5

    .line 208
    .local v5, "boxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const/16 v8, 0x46

    .line 211
    .local v8, "calendarType":I
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v5 .. v10}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByTypeAndOwner(JILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v21

    .line 213
    .local v21, "calendarMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v21, :cond_a

    .line 214
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const-string/jumbo v7, "handleCalendarSyncResults query calendar folder failed, can not save syncKey!!!"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 238
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->setTransactionSuccessful()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 208
    .end local v8    # "calendarType":I
    .end local v21    # "calendarMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_9
    const/16 v8, 0x41

    goto :goto_2

    .line 217
    .restart local v8    # "calendarType":I
    .restart local v21    # "calendarMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_a
    :try_start_c
    const-string/jumbo v6, "CalendarDatasourceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "accountName : "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", calendarType = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", sharedAccountName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", for calendar sync key from server : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-static {v14, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 222
    const-string/jumbo v6, "CalendarDatasourceImpl"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "update calendar syncKey: "

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v14, v7, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", origin syncKey: "

    aput-object v10, v7, v9

    const/4 v9, 0x3

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object v9, v5

    invoke-interface/range {v9 .. v16}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->updateSyncKey(JJLjava/lang/String;J)I

    move-result v23

    .line 224
    .restart local v23    # "count":I
    if-gtz v23, :cond_b

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "save calendar syncKeyfail!!!!! accountModel = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->a(Ljava/lang/String;)I

    .line 229
    .end local v23    # "count":I
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;->getFolderAcl()Ljava/lang/String;

    move-result-object v25

    .line 230
    .local v25, "folderAcl":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mFolderAcl:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 231
    new-instance v26, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v9, "Mailbox"

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7, v9}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v26, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "folderAcl"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    const-string/jumbo v6, "accountKey"

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v6, "_id"

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 238
    .end local v26    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_c
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->setTransactionSuccessful()V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->endTransaction()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private listToArray(Ljava/util/List;[I)[I
    .locals 3
    .param p2, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)[I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2306
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    .line 2307
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2308
    .local v1, "size":I
    if-nez p2, :cond_0

    if-lez v1, :cond_0

    .line 2309
    new-array p2, v1, [I

    .line 2312
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2313
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v0

    .line 2312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2317
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-object p2
.end method

.method public static parseIntRange(Ljava/lang/String;IIZ)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "minVal"    # I
    .param p2, "maxVal"    # I
    .param p3, "allowZero"    # Z

    .prologue
    .line 2288
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 2291
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 2293
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2294
    .local v0, "val":I
    if-lt v0, p1, :cond_1

    if-gt v0, p2, :cond_1

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 2295
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Integer value out of range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2300
    .end local v0    # "val":I
    :catch_0
    move-exception v1

    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid integer value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2298
    .restart local v0    # "val":I
    :cond_2
    return v0
.end method

.method private static parseUntilTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "untilTimeMillis"    # J
    .param p2, "timezone"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2224
    const-wide/16 v4, -0x1

    cmp-long v3, p0, v4

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-nez v3, :cond_1

    .line 2237
    .end local p2    # "timezone":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2228
    .restart local p2    # "timezone":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v1, Landroid/text/format/Time;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo p2, "UTC"

    .end local p2    # "timezone":Ljava/lang/String;
    :cond_2
    invoke-direct {v1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2229
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 2230
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2231
    const-string/jumbo v3, "UTC"

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2233
    .end local v1    # "time":Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 2234
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CalendarDatasourceImpl, parseUntiTime error ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzb;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseWday(Ljava/lang/String;[I[II)V
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "byday"    # [I
    .param p2, "bydayNum"    # [I
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 2251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x2

    .line 2254
    .local v4, "wdayStrStart":I
    if-lez v4, :cond_0

    .line 2256
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2257
    .local v1, "numPart":Ljava/lang/String;
    const/16 v5, -0x35

    const/16 v6, 0x35

    invoke-static {v1, v5, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    .line 2258
    .local v0, "num":I
    aput v0, p2, p3

    .line 2259
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2264
    .end local v0    # "num":I
    .end local v1    # "numPart":Ljava/lang/String;
    .local v3, "wdayStr":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2265
    .local v2, "wday":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 2266
    new-instance v5, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid BYDAY value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2262
    .end local v2    # "wday":Ljava/lang/Integer;
    .end local v3    # "wdayStr":Ljava/lang/String;
    :cond_0
    move-object v3, p0

    .restart local v3    # "wdayStr":Ljava/lang/String;
    goto :goto_0

    .line 2269
    .restart local v2    # "wday":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, p1, p3

    .line 2270
    return-void
.end method

.method private saveReminder(Ljava/util/List;JZ)V
    .locals 6
    .param p2, "eventId"    # J
    .param p4, "isSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/ReminderModel;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 1388
    .local p1, "remindersList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1400
    :cond_0
    return-void

    .line 1392
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    .line 1393
    .local v0, "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1394
    .local v1, "reminderValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "minutes"

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    const-string/jumbo v3, "method"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1396
    const-string/jumbo v3, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1398
    new-instance v3, Lagq;

    invoke-direct {v3, p4}, Lagq;-><init>(Z)V

    invoke-virtual {v3, v1}, Lagq;->a(Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private setEventDirty(J)V
    .locals 5
    .param p1, "eventId"    # J

    .prologue
    const/4 v4, 0x1

    .line 2359
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Events"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    .local v0, "eventDirtyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2361
    const-string/jumbo v1, "_id=?"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2362
    return-void
.end method

.method private updateCalendars(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Ljava/util/List;)V
    .locals 3
    .param p1, "calAccount"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1753
    .local p2, "updatedCalendars":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1760
    :cond_0
    return-void

    .line 1757
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 1758
    .local v0, "calendar":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;Z)V

    goto :goto_0
.end method


# virtual methods
.method public addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;)J
    .locals 3
    .param p1, "calendarId"    # J
    .param p3, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .prologue
    .line 636
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;Z)J
    .locals 5
    .param p1, "calendarId"    # J
    .param p3, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p4, "canSync"    # Z

    .prologue
    .line 640
    iput-wide p1, p3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 641
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryAccount(J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v0

    .line 642
    .local v0, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "can not find calendar account for account id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->d(Ljava/lang/String;)I

    .line 644
    const-wide/16 v2, -0x1

    .line 650
    :goto_0
    return-wide v2

    .line 646
    :cond_0
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->ownerAccount:Ljava/lang/String;

    iput-object v1, p3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    .line 647
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->calendar_displayName:Ljava/lang/String;

    iput-object v1, p3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    .line 648
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->ownerAccount:Ljava/lang/String;

    iput-object v1, p3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    .line 649
    if-eqz p4, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, p3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    .line 650
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J

    move-result-wide v2

    goto :goto_0

    .line 649
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public addEvent(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addEvent(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Z)J
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p3, "canSync"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    .line 659
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 660
    .local v1, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 661
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "can not find calendar accounts for account name : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzb;->d(Ljava/lang/String;)I

    .line 683
    :goto_0
    return-wide v4

    .line 665
    :cond_1
    const/4 v0, 0x0

    .line 666
    .local v0, "cal":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 667
    .local v2, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    iget-object v6, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->account_name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->account_name:Ljava/lang/String;

    .line 668
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 669
    move-object v0, v2

    .line 674
    .end local v2    # "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    :cond_3
    if-nez v0, :cond_4

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "can not find calendar account for account name : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzb;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_4
    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    iput-wide v4, p2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 680
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->ownerAccount:Ljava/lang/String;

    iput-object v3, p2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    .line 681
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->ownerAccount:Ljava/lang/String;

    iput-object v3, p2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    .line 682
    if-eqz p3, :cond_5

    const/4 v3, 0x1

    :goto_1
    iput v3, p2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    .line 683
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J

    move-result-wide v4

    goto :goto_0

    .line 682
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public addMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J
    .locals 6
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1081
    if-nez p1, :cond_0

    .line 1082
    const-wide/16 v2, -0x1

    .line 1093
    :goto_0
    return-wide v2

    .line 1085
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Events"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "message_server_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1089
    .local v0, "existEvent":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-eqz v0, :cond_1

    .line 1090
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->deleteMailReminderInner(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I

    .line 1093
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addMailReminderInner(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J

    move-result-wide v2

    goto :goto_0
.end method

.method addRecurrenceRule(Landroid/content/ContentValues;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V
    .locals 18
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .prologue
    .line 1697
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 1699
    .local v8, "rrule":Ljava/lang/String;
    const-string/jumbo v9, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 1701
    .local v6, "end":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 1703
    .local v12, "start":J
    const/4 v4, 0x0

    .line 1705
    .local v4, "duration":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 1706
    .local v5, "isAllDay":Z
    cmp-long v9, v6, v12

    if-lez v9, :cond_2

    .line 1707
    if-eqz v5, :cond_1

    .line 1709
    sub-long v14, v6, v12

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    div-long v2, v14, v16

    .line 1711
    .local v2, "days":J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "P"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, "D"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1727
    .end local v2    # "days":J
    :cond_0
    :goto_0
    const-string/jumbo v9, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string/jumbo v9, "dtend"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1729
    return-void

    .line 1714
    :cond_1
    sub-long v14, v6, v12

    const-wide/16 v16, 0x3e8

    div-long v10, v14, v16

    .line 1715
    .local v10, "seconds":J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "P"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, "S"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1716
    goto :goto_0

    .line 1717
    .end local v10    # "seconds":J
    :cond_2
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1720
    if-eqz v5, :cond_3

    .line 1721
    const-string/jumbo v4, "P1D"

    goto :goto_0

    .line 1723
    :cond_3
    const-string/jumbo v4, "P3600S"

    goto :goto_0
.end method

.method public cancelAlarm()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1324
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    .line 3289
    .local v0, "calendarDbHelper":Lagj;
    iget-object v1, v0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a()V

    .line 1326
    return-void
.end method

.method checkTimeDependentFields(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;I)V
    .locals 25
    .param p1, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "modifyWhich"    # I

    .prologue
    .line 1440
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 1441
    .local v14, "oldBegin":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v16, v0

    .line 1442
    .local v16, "oldEnd":J
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 1443
    .local v11, "oldAllDay":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1444
    .local v18, "oldRrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1446
    .local v19, "oldTimezone":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 1447
    .local v6, "newBegin":J
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 1448
    .local v8, "newEnd":J
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 1449
    .local v4, "newAllDay":Z
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 1450
    .local v5, "newRrule":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 1453
    .local v10, "newTimezone":Ljava/lang/String;
    cmp-long v23, v14, v6

    if-nez v23, :cond_1

    cmp-long v23, v16, v8

    if-nez v23, :cond_1

    if-ne v11, v4, :cond_1

    .line 1454
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1455
    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1456
    const-string/jumbo v23, "dtstart"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1457
    const-string/jumbo v23, "dtend"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1458
    const-string/jumbo v23, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1459
    const-string/jumbo v23, "allDay"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1460
    const-string/jumbo v23, "rrule"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1461
    const-string/jumbo v23, "eventTimezone"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1476
    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 1477
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v20, v0

    .line 1478
    .local v20, "oldStartMillis":J
    cmp-long v23, v14, v6

    if-eqz v23, :cond_2

    .line 1480
    sub-long v12, v6, v14

    .line 1481
    .local v12, "offset":J
    add-long v20, v20, v12

    .line 1483
    .end local v12    # "offset":J
    :cond_2
    if-eqz v4, :cond_3

    .line 1484
    new-instance v22, Landroid/text/format/Time;

    const-string/jumbo v23, "UTC"

    invoke-direct/range {v22 .. v23}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v22, "time":Landroid/text/format/Time;
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1486
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1487
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1488
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1489
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 1491
    .end local v22    # "time":Landroid/text/format/Time;
    :cond_3
    const-string/jumbo v23, "dtstart"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public deleteCalendarAccount(Ljava/lang/String;Z)I
    .locals 12
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 423
    const-string/jumbo v8, "CalendarDatasourceImpl"

    const-string/jumbo v9, "deleteCalendarAccount fail for accountName is null"

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    :goto_0
    return v4

    .line 427
    :cond_1
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Calendars"

    invoke-direct {v7, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v7, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v8, "account_name"

    invoke-virtual {v7, v8, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 430
    .local v0, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_2

    .line 431
    const-string/jumbo v8, "CalendarDatasourceImpl"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "deleteCalendarAccount fail for has no account with accountName: "

    aput-object v10, v9, v4

    aput-object p1, v9, v11

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_2
    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    .line 436
    .local v2, "calendarId":J
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Calendars"

    invoke-direct {v1, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v8, "account_name"

    invoke-virtual {v1, v8, p1}, Lcom/alibaba/alimei/orm/query/Delete;->columnOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v8, "parentId"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/alimei/orm/query/Delete;->columnOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v4

    .line 446
    .local v4, "deleteCnt":I
    if-eqz p2, :cond_0

    .line 447
    new-instance v6, Lyc;

    const-string/jumbo v8, "basic_UpdateAddCalendar"

    invoke-direct {v6, v8, p1, v11}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    .local v6, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v5

    .line 450
    .local v5, "eventCenter":Lya;
    invoke-interface {v5, v6}, Lya;->a(Lyc;)V

    goto :goto_0
.end method

.method public deleteEvent(J)I
    .locals 3
    .param p1, "eventId"    # J

    .prologue
    .line 929
    new-instance v0, Lagp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lagp;-><init>(Z)V

    invoke-virtual {v0, p1, p2}, Lagp;->c(J)I

    move-result v0

    return v0
.end method

.method public deleteEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
    .locals 20
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "deleteWhich"    # I

    .prologue
    .line 935
    if-nez p1, :cond_1

    .line 936
    const-string/jumbo v15, "CalendarDatasourceImpl"

    const-string/jumbo v16, "[deleteEvent]eventDetailModel is null"

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const-string/jumbo v15, "CalendarDatasourceImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "user delete calendar event deleteWhich = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", model = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 944
    .local v10, "startMillis":J
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 945
    .local v8, "rrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    .line 947
    .local v7, "originalSyncId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 949
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 951
    const-string/jumbo v15, "CalendarDatasourceImpl"

    const-string/jumbo v16, "user delete none rrule calendar event"

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v15, Lagp;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lagp;-><init>(Z)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lagp;->c(J)I

    goto :goto_0

    .line 955
    :cond_2
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 956
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v15, "eventStatus"

    const/16 v16, 0x2

    .line 957
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 956
    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string/jumbo v15, "CalendarDatasourceImpl"

    const-string/jumbo v16, "user delete none rrule calendar event"

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v15, Lagp;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lagp;-><init>(Z)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v14}, Lagp;->a(JLandroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 963
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 971
    :pswitch_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 975
    .restart local v14    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    .line 976
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v15, "title"

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 979
    .local v12, "timezone":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 980
    .local v2, "calendarId":J
    const-string/jumbo v15, "eventTimezone"

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string/jumbo v16, "allDay"

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    :goto_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    const-string/jumbo v16, "originalAllDay"

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    const-string/jumbo v15, "calendar_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 984
    const-string/jumbo v15, "dtstart"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 985
    const-string/jumbo v15, "dtend"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 986
    const-string/jumbo v15, "original_sync_id"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string/jumbo v15, "original_id"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 988
    const-string/jumbo v15, "originalInstanceTime"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v16, v0

    .line 989
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 988
    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    const-string/jumbo v15, "eventStatus"

    const/16 v16, 0x2

    .line 991
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 990
    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const-string/jumbo v15, "CalendarDatasourceImpl"

    const-string/jumbo v16, "user delete rrule calendar event for save new Event"

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    new-instance v15, Lagp;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lagp;-><init>(Z)V

    invoke-virtual {v15, v14}, Lagp;->b(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 981
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 982
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 997
    .end local v2    # "calendarId":J
    .end local v12    # "timezone":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "values":Landroid/content/ContentValues;
    :pswitch_1
    const-string/jumbo v15, "CalendarDatasourceImpl"

    const-string/jumbo v16, "user delete all rule calendar event"

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v15, Lagp;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lagp;-><init>(Z)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lagp;->c(J)I

    goto/16 :goto_0

    .line 1004
    :pswitch_2
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v15, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "Events"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v9, v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    .local v9, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "dtstart"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "dtend"

    aput-object v17, v15, v16

    invoke-virtual {v9, v15}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v15, "_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1009
    .local v5, "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-eqz v5, :cond_0

    .line 1012
    iget-wide v0, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-nez v15, :cond_6

    .line 1013
    const-string/jumbo v15, "CalendarDatasourceImpl"

    const-string/jumbo v16, "user delete rrule event for all following"

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v15, Lagp;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lagp;-><init>(Z)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lagp;->c(J)I

    goto/16 :goto_0

    .line 1019
    :cond_6
    new-instance v6, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 1020
    .local v6, "eventRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    invoke-virtual {v6, v8}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 1021
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1022
    .local v4, "date":Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v15, :cond_7

    .line 1023
    const-string/jumbo v15, "UTC"

    iput-object v15, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1025
    :cond_7
    invoke-virtual {v4, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 1026
    iget v15, v4, Landroid/text/format/Time;->second:I

    add-int/lit8 v15, v15, -0x1

    iput v15, v4, Landroid/text/format/Time;->second:I

    .line 1027
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/text/format/Time;->normalize(Z)J

    .line 1031
    const-string/jumbo v15, "UTC"

    invoke-virtual {v4, v15}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    .line 1034
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1035
    .restart local v14    # "values":Landroid/content/ContentValues;
    const-string/jumbo v15, "dtstart"

    iget-wide v0, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1036
    const-string/jumbo v15, "rrule"

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string/jumbo v15, "CalendarDatasourceImpl"

    const-string/jumbo v16, "user delete rrule event for update event"

    invoke-static/range {v15 .. v16}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v15, Lagp;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lagp;-><init>(Z)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v14}, Lagp;->a(JLandroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 963
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public deleteMailReminder(J)I
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 1109
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 1110
    const/4 v1, -0x1

    .line 1114
    :goto_0
    return v1

    .line 1112
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Events"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "message_account_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v1

    goto :goto_0
.end method

.method public deleteMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I
    .locals 1
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .prologue
    .line 1098
    if-nez p1, :cond_0

    .line 1099
    const/4 v0, -0x1

    .line 1104
    :goto_0
    return v0

    .line 1102
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->deleteMailReminderInner(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I

    move-result v0

    .line 1104
    .local v0, "result":I
    goto :goto_0
.end method

.method public deleteSharedAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "sharedAccountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 404
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 405
    .local v1, "mainAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v1, :cond_1

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "no account found for accountName : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->e(Ljava/lang/String;)I

    .line 417
    :cond_0
    :goto_0
    return v3

    .line 410
    :cond_1
    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->querySharedAccount(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v2

    .line 411
    .local v2, "sharedAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-eqz v2, :cond_0

    .line 412
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Calendars"

    invoke-direct {v0, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v3, "_id"

    iget-wide v4, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v3

    goto :goto_0
.end method

.method public folderCanModify(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "calendarId"    # J

    .prologue
    const/4 v3, 0x0

    .line 1201
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryAccount(J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v0

    .line 1202
    .local v0, "calendars":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_0

    .line 1203
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1209
    :goto_0
    return-object v3

    .line 1205
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1206
    .local v1, "folderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->server_id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->folderCanModify(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1209
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1
.end method

.method public folderCanModify(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1167
    .local p1, "folderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "accountName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getCalendarService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    move-result-object v3

    .line 1170
    .local v3, "service":Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;
    new-instance v1, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl$1;-><init>(Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;Ljava/util/List;)V

    .line 1194
    .local v1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/FolderCanModifyResult;>;"
    invoke-interface {v3, p1, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;->folderCanModify(Ljava/util/List;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1196
    return-object v2
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    const-string/jumbo v0, "calendar.db"

    .line 1734
    .local v0, "databaseName":Ljava/lang/String;
    return-object v0
.end method

.method public handleCalendarSyncResults(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "syncResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v0

    .line 247
    .local v0, "account":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_0

    .line 248
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "not exisits calendar account for accountName : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->handleCalendarSyncResults(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V

    goto :goto_0
.end method

.method public handleSharedCalendarSyncResults(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;)V
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "sharedAccountName"    # Ljava/lang/String;
    .param p3, "parentId"    # J
    .param p5, "serverId"    # Ljava/lang/String;
    .param p6, "syncResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;

    .prologue
    .line 258
    invoke-virtual {p0, p2, p5, p3, p4}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->querySharedAccount(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 259
    .local v1, "sharedAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not found shared accunt for accountName : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", parentAccount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->a(Ljava/lang/String;)I

    .line 266
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p5

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->handleCalendarSyncResults(Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isFirstEventInSeries(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Z
    .locals 8
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1424
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Events"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "dtstart"

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1426
    const-string/jumbo v3, "_id"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1428
    .local v0, "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-nez v0, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOrganizer(JLjava/lang/String;)Z
    .locals 11
    .param p1, "calendarId"    # J
    .param p3, "organizer"    # Ljava/lang/String;

    .prologue
    .line 1330
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1331
    const/4 v7, 0x0

    .line 1367
    :goto_0
    return v7

    .line 1333
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryAccount(J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v3

    .line 1334
    .local v3, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v3, :cond_1

    .line 1335
    const/4 v7, 0x0

    goto :goto_0

    .line 1337
    :cond_1
    iget-object v0, v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->account_name:Ljava/lang/String;

    .line 1338
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1339
    const/4 v7, 0x1

    goto :goto_0

    .line 1341
    :cond_2
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    const-string/jumbo v8, "contacts2.db"

    const-string/jumbo v9, "contacts"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "serverId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "email"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "aliases"

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1343
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "aliases like \'%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 1344
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 1345
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/db/entry/ContactEntry;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1346
    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 1348
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    .line 1349
    .local v4, "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    iget-object v7, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->serverId:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1350
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1352
    :cond_6
    iget-object v7, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->email:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1353
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1355
    :cond_7
    iget-object v7, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->aliases:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 1356
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1358
    :cond_8
    iget-object v7, v4, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;->aliases:Ljava/lang/String;

    const-string/jumbo v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1359
    .local v2, "aliases":[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v7, v2

    if-lez v7, :cond_5

    .line 1360
    array-length v9, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v1, v2, v7

    .line 1361
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1362
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1360
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1367
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "aliases":[Ljava/lang/String;
    .end local v4    # "contact":Lcom/alibaba/alimei/contact/db/entry/ContactEntry;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public loadEventDetail(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .locals 9
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J

    .prologue
    .line 631
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lagj;->a(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public obtainMailReminderTime(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    .locals 6
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1151
    if-nez p1, :cond_1

    move-object v0, v2

    .line 1162
    :cond_0
    :goto_0
    return-object v0

    .line 1155
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Events"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "message_server_id"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1158
    .local v0, "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-nez v0, :cond_0

    move-object v0, v2

    .line 1159
    goto :goto_0
.end method

.method public queryAccount(J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    const/4 v2, 0x0

    .line 369
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_1

    move-object v0, v2

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 372
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Calendars"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 375
    .local v0, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_0

    move-object v0, v2

    .line 376
    goto :goto_0
.end method

.method public queryAccountsWithShared(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "includeSelf"    # Z
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 288
    .local p3, "sharedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 289
    .local v1, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v1, :cond_1

    .line 290
    const/4 v0, 0x0

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz p2, :cond_2

    .line 295
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_2
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 302
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 306
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Calendars"

    invoke-direct {v4, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "parentId"

    iget-wide v8, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 310
    .local v6, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_3

    .line 312
    const-string/jumbo v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v7, "account_name"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v7, "=\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v7, "\' and "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string/jumbo v7, "mailbox_server_id"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v7, "=\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string/jumbo v7, "\')"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string/jumbo v7, " or "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 329
    .local v5, "sharedCalList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz v5, :cond_0

    .line 330
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public queryAllAccounts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 337
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Calendars"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "parentId"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v0

    .line 340
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    :cond_0
    return-object v0
.end method

.method public queryAllDirtyEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    :cond_0
    :goto_0
    return-object v3

    .line 494
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 495
    .local v2, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 496
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 499
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    .local v1, "calIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 501
    .local v0, "cal":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 503
    .end local v0    # "cal":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    :cond_4
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Events"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .local v4, "eventSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "dirty"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string/jumbo v5, "calendar_id"

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 506
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 507
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    if-nez v3, :cond_0

    .line 508
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public queryAllEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 463
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
    :cond_0
    :goto_0
    return-object v3

    .line 466
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 467
    .local v2, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 468
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 471
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    .local v1, "calIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 473
    .local v0, "cal":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    .end local v0    # "cal":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    :cond_4
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Events"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .local v4, "eventSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "calendar_id"

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 477
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 478
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    if-nez v3, :cond_0

    .line 479
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;>;"
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public queryAllLocalEvents(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "startJulianDay"    # I
    .param p3, "nums"    # I
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

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryAllLocalEvents(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllLocalEvents(Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "startJulianDay"    # I
    .param p3, "nums"    # I
    .param p4, "includeShared"    # Z
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 525
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 526
    .local v8, "time":Landroid/text/format/Time;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    .line 527
    .local v9, "timeZone":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v8, p2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 529
    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 530
    .local v2, "begin":J
    add-int v7, p2, p3

    .line 531
    .local v7, "endDay":I
    invoke-virtual {v8, v7}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 532
    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 534
    .local v4, "end":J
    const-string/jumbo v0, "CalendarDatasourceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "translate to long begin = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", end = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    .line 536
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryAllLocalEvents(Ljava/lang/String;JJZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllLocalEvents(Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "startJulianDay"    # I
    .param p3, "nums"    # I
    .param p4, "includeSelf"    # Z
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

    .prologue
    .line 543
    .local p5, "sharedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "serverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 544
    .local v18, "time":Landroid/text/format/Time;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v19

    .line 545
    .local v19, "timeZone":Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 547
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 548
    .local v8, "begin":J
    add-int v15, p2, p3

    .line 549
    .local v15, "endDay":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 550
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 552
    .local v10, "end":J
    const-string/jumbo v7, "CalendarDatasourceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "translate to long begin = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", end = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lyx;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    if-ltz v7, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-gez v7, :cond_1

    .line 555
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    :goto_0
    return-object v16

    .line 558
    :cond_1
    const-string/jumbo v7, "CalendarDatasourceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "begin = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", end = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lyx;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryAccountsWithShared(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 562
    .local v6, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 563
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 566
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/16 v12, 0x1f4

    if-le v7, v12, :cond_4

    .line 567
    const/4 v7, 0x0

    const/16 v12, 0x1f4

    invoke-interface {v6, v7, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 570
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v17, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v7, " ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 574
    .local v14, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    const-string/jumbo v12, "calendar_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string/jumbo v12, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    iget-wide v12, v14, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    const-string/jumbo v12, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 579
    .end local v14    # "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    :cond_5
    const-string/jumbo v7, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 580
    const-string/jumbo v7, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v7

    .line 583
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lagj;->a(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 584
    .local v16, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    goto/16 :goto_0
.end method

.method public queryAllLocalEvents(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J
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

    .prologue
    .line 520
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryAllLocalEvents(Ljava/lang/String;JJZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllLocalEvents(Ljava/lang/String;JJZ)Ljava/util/List;
    .locals 14
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "includeShared"    # Z
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

    .prologue
    .line 589
    cmp-long v3, p2, p4

    if-gtz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-ltz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-gez v3, :cond_1

    .line 590
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 626
    :goto_0
    return-object v12

    .line 593
    :cond_1
    const-string/jumbo v3, "CalendarDatasourceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "begin = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v2, 0x0

    .line 596
    .local v2, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz p6, :cond_4

    .line 597
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 604
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 605
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 599
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v11

    .line 600
    .local v11, "calendars":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-eqz v11, :cond_2

    .line 601
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 608
    .end local v11    # "calendars":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_6

    .line 609
    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 612
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v13, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " ("

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 616
    .local v10, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    const-string/jumbo v4, "calendar_id"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string/jumbo v4, "="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 619
    const-string/jumbo v4, " OR "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 621
    .end local v10    # "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    :cond_7
    const-string/jumbo v3, " OR "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v3, ")"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v3

    .line 625
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v9}, Lagj;->a(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 626
    .local v12, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    goto/16 :goto_0
.end method

.method public queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 348
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calendars"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v1, "parentId"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    return-object v1
.end method

.method public queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 271
    .local v1, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v1, :cond_1

    .line 272
    const/4 v0, 0x0

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v0, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Calendars"

    invoke-direct {v2, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "parentId"

    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 280
    .local v3, "sharedCalList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz v3, :cond_0

    .line 281
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public querySharedAccount(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .locals 5
    .param p1, "sharedAccountName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "parentAccountId"    # J

    .prologue
    .line 384
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Calendars"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v1, "parentId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v1, "mailbox_server_id"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    return-object v1
.end method

.method public querySharedAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "sharedAccountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v0

    .line 394
    .local v0, "mainAccount":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v0, :cond_0

    .line 395
    const/4 v1, 0x0

    .line 398
    :goto_0
    return-object v1

    :cond_0
    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-virtual {p0, p2, p3, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->querySharedAccount(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    goto :goto_0
.end method

.method public querySharedAccount(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 357
    .local v1, "mainAcc":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-nez v1, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 361
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Calendars"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "parentId"

    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v0

    .line 364
    .local v0, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    goto :goto_0
.end method

.method public queryTodayEvents(Ljava/lang/String;Z)Ljava/util/List;
    .locals 23
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "filterExpired"    # Z
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

    .prologue
    .line 1267
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->queryMainAccountWithShared(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 1268
    .local v11, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1269
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1313
    :cond_1
    :goto_0
    return-object v16

    .line 1272
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/16 v8, 0x1f4

    if-le v3, v8, :cond_3

    .line 1273
    const/4 v3, 0x0

    const/16 v8, 0x1f4

    invoke-interface {v11, v3, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 1276
    :cond_3
    new-instance v19, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v19, "today":Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 1278
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v14

    .line 1280
    .local v14, "now":J
    const-wide/32 v8, 0x5265c00

    rem-long v8, v14, v8

    sub-long v20, v14, v8

    .line 1281
    .local v20, "todayStart":J
    const-wide/32 v8, 0x5265c00

    add-long v6, v20, v8

    .line 1282
    .local v6, "todayEnd":J
    const-wide/32 v8, 0x240c8400

    sub-long v4, v20, v8

    .line 1284
    .local v4, "begin":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    .local v17, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 1287
    .local v12, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    const-string/jumbo v8, "calendar_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    const-string/jumbo v8, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    iget-wide v8, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->_id:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1290
    const-string/jumbo v8, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1292
    .end local v12    # "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    :cond_4
    const-string/jumbo v3, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1293
    const-string/jumbo v3, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    const-string/jumbo v3, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string/jumbo v3, "((begin>? AND begin<?) OR (end>? AND end<?))"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 1298
    .local v10, "argStart":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1299
    .local v2, "argEnd":Ljava/lang/String;
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v3

    .line 1300
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/16 v22, 0x0

    aput-object v10, v9, v22

    const/16 v22, 0x1

    aput-object v2, v9, v22

    const/16 v22, 0x2

    aput-object v10, v9, v22

    const/16 v22, 0x3

    aput-object v2, v9, v22

    invoke-virtual/range {v3 .. v9}, Lagj;->a(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 1302
    .local v16, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    if-eqz p2, :cond_1

    .line 1303
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1304
    new-instance v18, Ljava/util/ArrayList;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1305
    .local v18, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    .line 1306
    .local v13, "event":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    iget-wide v8, v13, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    cmp-long v8, v8, v14

    if-lez v8, :cond_5

    .line 1307
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1310
    .end local v13    # "event":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    :cond_6
    move-object/from16 v16, v18

    goto/16 :goto_0
.end method

.method public saveAttendees(Ljava/util/List;JZ)V
    .locals 6
    .param p2, "eventId"    # J
    .param p4, "isSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttendeeModel;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 1403
    .local p1, "attendeesList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1418
    :cond_0
    return-void

    .line 1407
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 1408
    .local v0, "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1409
    .local v1, "attendeeValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "attendeeEmail"

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v3, "attendeeName"

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string/jumbo v3, "attendeeStatus"

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    const-string/jumbo v3, "attendeeRelationship"

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    const-string/jumbo v3, "attendeeType"

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    const-string/jumbo v3, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1416
    new-instance v3, Lago;

    invoke-direct {v3, p4}, Lago;-><init>(Z)V

    invoke-virtual {v3, v1}, Lago;->a(Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public scheduleAlarm()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1318
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    .line 1319
    .local v0, "calendarDbHelper":Lagj;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lagj;->a(ZZ)V

    .line 1320
    return-void
.end method

.method public updateAttendeeStatus(JI)V
    .locals 3
    .param p1, "attendeeId"    # J
    .param p3, "status"    # I

    .prologue
    .line 1070
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1071
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1073
    new-instance v1, Lago;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lago;-><init>(Z)V

    invoke-virtual {v1, p1, p2, v0}, Lago;->a(JLandroid/content/ContentValues;)I

    .line 1077
    return-void
.end method

.method public updateCalendarVisible(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 12
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    const/16 v7, 0x1f4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1214
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1215
    :cond_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1256
    :goto_0
    return-object v6

    .line 1218
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 1219
    invoke-interface {p1, v10, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 1222
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    .local v4, "visibleSb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    .local v1, "unVisibleSb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    .line 1226
    .local v0, "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->visible:Z

    .line 1227
    .local v3, "visible":Z
    if-eqz v3, :cond_3

    .line 1228
    const-string/jumbo v7, "_id"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1231
    const-string/jumbo v7, " OR "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1233
    :cond_3
    const-string/jumbo v7, "_id"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string/jumbo v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1236
    const-string/jumbo v7, " OR "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1240
    .end local v0    # "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    .end local v3    # "visible":Z
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1241
    const-string/jumbo v6, " OR "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1242
    new-instance v5, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Calendars"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .local v5, "visibleUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "visible"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1244
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 1245
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1248
    .end local v5    # "visibleUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1249
    const-string/jumbo v6, " OR "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1250
    new-instance v2, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Calendars"

    invoke-direct {v2, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    .local v2, "unVisibleUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "visible"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 1253
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1256
    .end local v2    # "unVisibleUpdate":Lcom/alibaba/alimei/orm/query/Update;
    :cond_6
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
    .locals 22
    .param p1, "currentModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p3, "modifyWhich"    # I

    .prologue
    .line 788
    if-nez p1, :cond_0

    .line 789
    const-string/jumbo v18, "CalendarDatasourceImpl"

    const-string/jumbo v19, "[upateEvent]currentModel is null"

    invoke-static/range {v18 .. v19}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :goto_0
    return-void

    .line 793
    :cond_0
    if-nez p2, :cond_1

    .line 794
    const-string/jumbo v18, "CalendarDatasourceImpl"

    const-string/jumbo v19, "[upateEvent]originModel is null"

    invoke-static/range {v18 .. v19}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_1
    const-string/jumbo v18, "CalendarDatasourceImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "user update event modifyWhich = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", currentModel = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", origianlModel = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getContentValuesFromModel(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Landroid/content/ContentValues;

    move-result-object v8

    .line 803
    .local v8, "curValues":Landroid/content/ContentValues;
    if-nez v8, :cond_2

    .line 804
    const-string/jumbo v18, "CalendarDatasourceImpl"

    const-string/jumbo v19, "[upateEvent]curValues is null"

    invoke-static/range {v18 .. v19}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_3

    .line 809
    const-string/jumbo v18, "hasAlarm"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 813
    const-string/jumbo v18, "hasAttendeeData"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    :cond_4
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    .line 817
    .local v14, "eventId":J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 818
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15, v8}, Lagp;->a(JLandroid/content/ContentValues;)I

    .line 912
    :cond_5
    :goto_1
    new-instance v17, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v18, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Reminders"

    invoke-direct/range {v17 .. v20}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .local v17, "reminderDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v18, "event_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 916
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->saveReminder(Ljava/util/List;JZ)V

    .line 918
    new-instance v5, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v18, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Attendees"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .local v5, "attendeeDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v18, "event_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 921
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->saveAttendees(Ljava/util/List;JZ)V

    goto/16 :goto_0

    .line 819
    .end local v5    # "attendeeDelete":Lcom/alibaba/alimei/orm/query/Delete;
    .end local v17    # "reminderDelete":Lcom/alibaba/alimei/orm/query/Delete;
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    .line 822
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 823
    .local v6, "begin":J
    const-string/jumbo v18, "original_sync_id"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string/jumbo v18, "originalInstanceTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    const-string/jumbo v18, "rrule"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_8

    .line 828
    const-string/jumbo v18, "dtstart"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    const-string/jumbo v18, "dtend"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 830
    const-string/jumbo v18, "duration"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 847
    :cond_7
    :goto_2
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 848
    .local v4, "allDay":Z
    const-string/jumbo v19, "originalAllDay"

    if-eqz v4, :cond_9

    const/16 v18, 0x1

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string/jumbo v18, "eventStatus"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lagp;->b(Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 852
    goto/16 :goto_1

    .line 831
    .end local v4    # "allDay":Z
    :cond_8
    const-string/jumbo v18, "duration"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 832
    const-string/jumbo v18, "duration"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 833
    .local v9, "duration":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 834
    new-instance v10, Lagg;

    invoke-direct {v10}, Lagg;-><init>()V

    .line 836
    .local v10, "durationParser":Lagg;
    :try_start_0
    invoke-virtual {v10, v9}, Lagg;->a(Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Lagg;->a()J

    move-result-wide v20

    add-long v12, v18, v20

    .line 838
    .local v12, "end":J
    const-string/jumbo v18, "duration"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 839
    const-string/jumbo v18, "dtend"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 840
    .end local v12    # "end":J
    :catch_0
    move-exception v11

    .line 841
    .local v11, "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    invoke-virtual {v11}, Lcom/alibaba/alimei/sdk/calendar/common/DateException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 842
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "CalendarDatasourceImpl, updateEvent exception e = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lzb;->e(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 848
    .end local v9    # "duration":Ljava/lang/String;
    .end local v10    # "durationParser":Lagg;
    .end local v11    # "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    .restart local v4    # "allDay":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 852
    .end local v4    # "allDay":Z
    .end local v6    # "begin":J
    :cond_a
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_f

    .line 853
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 858
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->isFirstEventInSeries(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 860
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lagp;->c(J)I

    .line 868
    :goto_4
    const-string/jumbo v18, "eventStatus"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lagp;->b(Landroid/content/ContentValues;)J

    move-result-wide v14

    goto/16 :goto_1

    .line 866
    :cond_b
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->updatePastEvents(Lcom/alibaba/alimei/sdk/model/EventDetailModel;J)Ljava/lang/String;

    goto :goto_4

    .line 871
    :cond_c
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->isFirstEventInSeries(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 872
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->checkTimeDependentFields(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;I)V

    .line 874
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v8}, Lagp;->a(JLandroid/content/ContentValues;)I

    goto/16 :goto_1

    .line 887
    :cond_d
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->updatePastEvents(Lcom/alibaba/alimei/sdk/model/EventDetailModel;J)Ljava/lang/String;

    move-result-object v16

    .line 889
    .local v16, "newRrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 890
    const-string/jumbo v18, "rrule"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_e
    const-string/jumbo v18, "eventStatus"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lagp;->b(Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 895
    goto/16 :goto_1

    .line 897
    .end local v16    # "newRrule":Ljava/lang/String;
    :cond_f
    const/16 v18, 0x3

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 899
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 903
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lagp;->c(J)I

    .line 904
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lagp;->b(Landroid/content/ContentValues;)J

    move-result-wide v14

    goto/16 :goto_1

    .line 906
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->checkTimeDependentFields(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;I)V

    .line 908
    new-instance v18, Lagp;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lagp;-><init>(Z)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v8}, Lagp;->a(JLandroid/content/ContentValues;)I

    goto/16 :goto_1
.end method

.method public updateMailReminder(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I
    .locals 6
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 1139
    if-nez p1, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return v2

    .line 1143
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->deleteMailReminderInner(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)I

    .line 1144
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->addMailReminderInner(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)J

    move-result-wide v0

    .line 1146
    .local v0, "result":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updatePastEvents(Lcom/alibaba/alimei/sdk/model/EventDetailModel;J)Ljava/lang/String;
    .locals 26
    .param p1, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "endTimeMillis"    # J

    .prologue
    .line 1512
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    move/from16 v16, v0

    .line 1513
    .local v16, "origAllDay":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1514
    .local v18, "origRrule":Ljava/lang/String;
    move-object/from16 v14, v18

    .line 1516
    .local v14, "newRrule":Ljava/lang/String;
    new-instance v17, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 1517
    .local v17, "origRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 1520
    new-instance v20, Lcom/alibaba/alimei/orm/query/Select;

    const-class v10, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v23, "Events"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v10, v11, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    .local v20, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v10, "dtstart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1522
    const-string/jumbo v10, "_id"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1524
    .local v12, "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    if-nez v12, :cond_0

    move-object v15, v14

    .line 1611
    .end local v14    # "newRrule":Ljava/lang/String;
    .local v15, "newRrule":Ljava/lang/String;
    :goto_0
    return-object v15

    .line 1528
    .end local v15    # "newRrule":Ljava/lang/String;
    .restart local v14    # "newRrule":Ljava/lang/String;
    :cond_0
    iget-wide v8, v12, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    .line 1529
    .local v8, "startTimeMillis":J
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1530
    .local v6, "dtstart":Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    iput-object v10, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1531
    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1533
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1535
    .local v22, "updateValues":Landroid/content/ContentValues;
    move-object/from16 v0, v17

    iget v10, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    if-lez v10, :cond_2

    .line 1551
    new-instance v7, Lagi;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v7, v10, v11, v0, v1}, Lagi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .local v7, "recurSet":Lagi;
    new-instance v5, Lagh;

    invoke-direct {v5}, Lagh;-><init>()V

    .local v5, "recurProc":Lagh;
    move-wide/from16 v10, p2

    .line 1556
    :try_start_0
    invoke-virtual/range {v5 .. v11}, Lagh;->a(Landroid/text/format/Time;Lagi;JJ)[J
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1562
    .local v19, "recurrences":[J
    move-object/from16 v0, v19

    array-length v10, v0

    if-nez v10, :cond_1

    .line 1563
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "can\'t use this method on first instance"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1558
    .end local v19    # "recurrences":[J
    :catch_0
    move-exception v4

    .line 1559
    .local v4, "de":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1567
    .end local v4    # "de":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    .restart local v19    # "recurrences":[J
    :cond_1
    new-instance v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 1568
    .local v13, "excepRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 1570
    iget v10, v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    move-object/from16 v0, v19

    array-length v11, v0

    sub-int/2addr v10, v11

    iput v10, v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    .line 1571
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1573
    move-object/from16 v0, v19

    array-length v10, v0

    move-object/from16 v0, v17

    iput v10, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    .line 1607
    .end local v5    # "recurProc":Lagh;
    .end local v7    # "recurSet":Lagi;
    .end local v13    # "excepRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v19    # "recurrences":[J
    :goto_1
    const-string/jumbo v10, "rrule"

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string/jumbo v10, "dtstart"

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1609
    new-instance v10, Lagp;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lagp;-><init>(Z)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Lagp;->a(JLandroid/content/ContentValues;)I

    move-object v15, v14

    .line 1611
    .end local v14    # "newRrule":Ljava/lang/String;
    .restart local v15    # "newRrule":Ljava/lang/String;
    goto/16 :goto_0

    .line 1581
    .end local v15    # "newRrule":Ljava/lang/String;
    .restart local v14    # "newRrule":Ljava/lang/String;
    :cond_2
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .line 1582
    .local v21, "untilTime":Landroid/text/format/Time;
    const-string/jumbo v10, "UTC"

    move-object/from16 v0, v21

    iput-object v10, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1586
    const-wide/16 v10, 0x3e8

    sub-long v10, p2, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 1588
    if-eqz v16, :cond_3

    .line 1589
    const/4 v10, 0x0

    move-object/from16 v0, v21

    iput v10, v0, Landroid/text/format/Time;->hour:I

    .line 1590
    const/4 v10, 0x0

    move-object/from16 v0, v21

    iput v10, v0, Landroid/text/format/Time;->minute:I

    .line 1591
    const/4 v10, 0x0

    move-object/from16 v0, v21

    iput v10, v0, Landroid/text/format/Time;->second:I

    .line 1592
    const/4 v10, 0x1

    move-object/from16 v0, v21

    iput-boolean v10, v0, Landroid/text/format/Time;->allDay:Z

    .line 1593
    const/4 v10, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 1598
    const/4 v10, 0x0

    iput v10, v6, Landroid/text/format/Time;->hour:I

    .line 1599
    const/4 v10, 0x0

    iput v10, v6, Landroid/text/format/Time;->minute:I

    .line 1600
    const/4 v10, 0x0

    iput v10, v6, Landroid/text/format/Time;->second:I

    .line 1601
    const/4 v10, 0x1

    iput-boolean v10, v6, Landroid/text/format/Time;->allDay:Z

    .line 1602
    const-string/jumbo v10, "UTC"

    iput-object v10, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1604
    :cond_3
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v17

    iput-object v10, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateReminder(JI)V
    .locals 7
    .param p1, "eventId"    # J
    .param p3, "minute"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1052
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Reminders"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "minutes"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1054
    const-string/jumbo v2, "event_id=?"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1057
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Events"

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .local v0, "eventDirtyUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "dirty"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1059
    const-string/jumbo v2, "_id=?"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1064
    return-void
.end method
