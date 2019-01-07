.class public Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "SysCalendarDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;
.implements Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;


# static fields
.field private static final EVENT_ID_SQL:Ljava/lang/String; = "event_id=?"

.field private static final ID_SQL:Ljava/lang/String; = "_id=?"

.field private static final INSTANCES_SORT_ORDER:Ljava/lang/String; = "startDay,startMinute,title"

.field private static final INSTANCE_DETAIL_SQL:Ljava/lang/String; = "event_id=? AND begin>=? AND begin<? AND end>=? AND end<?"

.field private static final QUERY_EVENT_SQL:Ljava/lang/String; = "visible=1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private buildCalendarModel(Landroid/database/Cursor;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    new-instance v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;-><init>()V

    .line 132
    .local v1, "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    const-string/jumbo v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    .line 133
    const-string/jumbo v2, "account_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->accountName:Ljava/lang/String;

    .line 134
    const-string/jumbo v2, "calendar_displayName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->displayName:Ljava/lang/String;

    .line 135
    const-string/jumbo v2, "visible"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v3, v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->visible:Z

    .line 136
    iput-boolean v3, v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->isSystem:Z

    .line 137
    iput-boolean v4, v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->sharedAccount:Z

    .line 138
    const-string/jumbo v2, "calendar_access_level"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 139
    .local v0, "accessLevel":I
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1

    :goto_1
    iput-boolean v3, v1, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->canWrite:Z

    .line 140
    return-object v1

    .end local v0    # "accessLevel":I
    :cond_0
    move v2, v4

    .line 135
    goto :goto_0

    .restart local v0    # "accessLevel":I
    :cond_1
    move v3, v4

    .line 139
    goto :goto_1
.end method

.method private formatAllDay(J)J
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 774
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private static generateEventDetailFromCursor(Landroid/database/Cursor;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .locals 12
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 865
    new-instance v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;-><init>()V

    .line 866
    .local v4, "eventDetail":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    .line 867
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    .line 868
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    .line 869
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 870
    const/4 v6, 0x2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 871
    const/16 v6, 0x10

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    .line 872
    const/16 v6, 0x11

    .line 873
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    iput-boolean v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    .line 874
    const/4 v6, 0x5

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 875
    .local v2, "eStart":J
    const/4 v6, 0x6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 876
    .local v0, "eEnd":J
    iput-wide v2, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 877
    const/16 v6, 0xa

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    .line 878
    const/16 v6, 0x8

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    .line 879
    iput-wide v0, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 880
    const/16 v6, 0xb

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endTime:I

    .line 881
    const/16 v6, 0x9

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    .line 882
    const/16 v6, 0xc

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    move v8, v7

    :cond_0
    iput-boolean v8, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->hasAlarm:Z

    .line 885
    const/16 v6, 0xd

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 886
    .local v5, "rrule":Ljava/lang/String;
    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 887
    const/16 v6, 0xf

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    .line 888
    const/16 v6, 0x13

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    .line 889
    const/16 v6, 0x14

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    .line 890
    const/16 v6, 0x15

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    .line 891
    const/16 v6, 0x16

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    .line 892
    const/16 v6, 0x17

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 893
    const/16 v6, 0x18

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    .line 894
    const/16 v6, 0x19

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    .line 895
    iput-boolean v7, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSystem:Z

    .line 897
    return-object v4

    .end local v0    # "eEnd":J
    .end local v2    # "eStart":J
    .end local v5    # "rrule":Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 870
    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 873
    goto/16 :goto_1
.end method

.method private static generateEventFromCursor(Landroid/database/Cursor;)Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    .locals 12
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 823
    new-instance v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;-><init>()V

    .line 824
    .local v4, "eventInstance":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    const/4 v7, 0x4

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    .line 825
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    .line 826
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    .line 827
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    .line 828
    const/16 v7, 0x10

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    .line 829
    const/16 v7, 0x11

    .line 830
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    :goto_1
    iput-boolean v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    .line 832
    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 833
    .local v2, "eStart":J
    const/4 v7, 0x6

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 835
    .local v0, "eEnd":J
    iput-wide v2, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    .line 836
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    .line 837
    const/16 v7, 0x8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    .line 839
    iput-wide v0, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    .line 840
    const/16 v7, 0xb

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    .line 841
    const/16 v7, 0x9

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    .line 843
    const/16 v7, 0xc

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    iput-boolean v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    .line 846
    const/16 v7, 0xd

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "rrule":Ljava/lang/String;
    const/16 v7, 0xe

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 848
    .local v5, "rdate":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 849
    :cond_0
    iput-boolean v8, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    .line 854
    :goto_3
    iput-object v6, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    .line 855
    const/16 v7, 0xf

    .line 856
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    .line 857
    const/16 v7, 0x13

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    .line 859
    iput-boolean v8, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    .line 861
    return-object v4

    .end local v0    # "eEnd":J
    .end local v2    # "eStart":J
    .end local v5    # "rdate":Ljava/lang/String;
    .end local v6    # "rrule":Ljava/lang/String;
    :cond_1
    move v7, v9

    .line 827
    goto :goto_0

    :cond_2
    move v7, v9

    .line 830
    goto :goto_1

    .restart local v0    # "eEnd":J
    .restart local v2    # "eStart":J
    :cond_3
    move v7, v9

    .line 843
    goto :goto_2

    .line 851
    .restart local v5    # "rdate":Ljava/lang/String;
    .restart local v6    # "rrule":Ljava/lang/String;
    :cond_4
    iput-boolean v9, v4, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    goto :goto_3
.end method

.method private getAttendeeUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 805
    sget-object v0, Lags;->e:Landroid/net/Uri;

    .line 806
    .local v0, "contentUri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 807
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 810
    :cond_0
    return-object v0
.end method

.method private getCalendarUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 778
    sget-object v0, Lags;->a:Landroid/net/Uri;

    .line 779
    .local v0, "contentUri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 780
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 783
    :cond_0
    return-object v0
.end method

.method private getEventContentValues(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 725
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 726
    .local v1, "eventValues":Landroid/content/ContentValues;
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 727
    const-string/jumbo v5, "title"

    iget-object v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_0
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 730
    const-string/jumbo v5, "eventLocation"

    iget-object v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_1
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 733
    const-string/jumbo v5, "description"

    iget-object v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_2
    const-string/jumbo v8, "allDay"

    iget-boolean v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v5, :cond_8

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 737
    const-string/jumbo v5, "organizer"

    iget-object v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_3
    const-string/jumbo v5, "guestsCanModify"

    iget-boolean v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    if-eqz v8, :cond_4

    move v7, v6

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 741
    const-string/jumbo v5, "hasAttendeeData"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    :cond_5
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    if-eqz v5, :cond_6

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 744
    const-string/jumbo v5, "hasAlarm"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    :cond_6
    const-string/jumbo v5, "calendar_id"

    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 747
    const-string/jumbo v5, "dtstart"

    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 749
    const-string/jumbo v5, "dtend"

    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 765
    :goto_1
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 766
    .local v4, "timezone":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 767
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    .line 769
    :cond_7
    const-string/jumbo v5, "eventTimezone"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-object v1

    .end local v4    # "timezone":Ljava/lang/String;
    :cond_8
    move v5, v7

    .line 735
    goto/16 :goto_0

    .line 752
    :cond_9
    const-string/jumbo v5, "rrule"

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string/jumbo v5, "availability"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    iget-boolean v5, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v5, :cond_a

    .line 756
    const-string/jumbo v0, "P1D"

    .line 757
    .local v0, "duration":Ljava/lang/String;
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    invoke-direct {p0, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->formatAllDay(J)J

    move-result-wide v2

    .line 758
    .local v2, "start":J
    const-string/jumbo v5, "duration"

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v5, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 761
    .end local v0    # "duration":Ljava/lang/String;
    .end local v2    # "start":J
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "P"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    .restart local v0    # "duration":Ljava/lang/String;
    const-string/jumbo v5, "duration"

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getEventUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 814
    sget-object v0, Lags;->b:Landroid/net/Uri;

    .line 815
    .local v0, "contentUri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 816
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 819
    :cond_0
    return-object v0
.end method

.method private getInstanceUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 787
    sget-object v0, Lags;->c:Landroid/net/Uri;

    .line 788
    .local v0, "contentUri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 789
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    .line 792
    :cond_0
    return-object v0
.end method

.method private getReminderUri()Landroid/net/Uri;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 796
    sget-object v0, Lags;->d:Landroid/net/Uri;

    .line 797
    .local v0, "contentUri":Landroid/net/Uri;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 798
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 801
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addEvent(JLcom/alibaba/alimei/sdk/model/EventDetailModel;)V
    .locals 21
    .param p1, "calendarId"    # J
    .param p3, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .prologue
    .line 421
    if-nez p3, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v11, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getEventContentValues(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Landroid/content/ContentValues;

    move-result-object v10

    .line 428
    .local v10, "eventValues":Landroid/content/ContentValues;
    const-string/jumbo v17, "calendar_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 430
    .local v9, "eventIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getEventUri()Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    .line 434
    .local v13, "reminderModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 435
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 437
    .local v15, "reminderValues":Landroid/content/ContentValues;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getReminderUri()Landroid/net/Uri;

    move-result-object v14

    .line 438
    .local v14, "reminderUri":Landroid/net/Uri;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    .line 439
    .local v12, "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 440
    const-string/jumbo v18, "minutes"

    iget v0, v12, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string/jumbo v18, "method"

    iget v0, v12, Lcom/alibaba/alimei/sdk/model/ReminderModel;->method:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 443
    .local v6, "b":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v18, "event_id"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 444
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    .end local v6    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v12    # "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    .end local v14    # "reminderUri":Landroid/net/Uri;
    .end local v15    # "reminderValues":Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 450
    .local v3, "attendeeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 451
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v5, "attendeeValues":Landroid/content/ContentValues;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getAttendeeUri()Landroid/net/Uri;

    move-result-object v4

    .line 454
    .local v4, "attendeeUri":Landroid/net/Uri;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 455
    .local v2, "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 456
    const-string/jumbo v18, "attendeeRelationship"

    iget v0, v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string/jumbo v18, "attendeeEmail"

    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string/jumbo v18, "attendeeName"

    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string/jumbo v18, "attendeeStatus"

    iget v0, v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string/jumbo v18, "attendeeType"

    iget v0, v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 462
    .restart local v6    # "b":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v18, "event_id"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 463
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 466
    .end local v2    # "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    .end local v4    # "attendeeUri":Landroid/net/Uri;
    .end local v5    # "attendeeValues":Landroid/content/ContentValues;
    .end local v6    # "b":Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 467
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v7

    .line 469
    .local v7, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "com.android.calendar"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v16

    .line 470
    .local v16, "results":[Landroid/content/ContentProviderResult;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 471
    const-string/jumbo v17, "\u4fdd\u5b58\u7cfb\u7edf\u65e5\u5386\u6210\u529f\u201c"

    invoke-static/range {v17 .. v17}, Lzb;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 473
    .end local v16    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v8

    .line 474
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 475
    const-string/jumbo v17, "\u4fdd\u5b58\u7cfb\u7edf\u65e5\u5386\u5931\u8d25"

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 476
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 477
    .local v8, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 478
    const-string/jumbo v17, "\u4fdd\u5b58\u7cfb\u7edf\u65e5\u5386\u5931\u8d25"

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method checkTimeDependentFields(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;I)V
    .locals 25
    .param p1, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "modifyWhich"    # I

    .prologue
    .line 1011
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 1012
    .local v14, "oldBegin":J
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v16, v0

    .line 1013
    .local v16, "oldEnd":J
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 1014
    .local v11, "oldAllDay":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1015
    .local v18, "oldRrule":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1017
    .local v19, "oldTimezone":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 1018
    .local v6, "newBegin":J
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 1019
    .local v8, "newEnd":J
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 1020
    .local v4, "newAllDay":Z
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 1021
    .local v5, "newRrule":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 1024
    .local v10, "newTimezone":Ljava/lang/String;
    cmp-long v23, v14, v6

    if-nez v23, :cond_1

    cmp-long v23, v16, v8

    if-nez v23, :cond_1

    if-ne v11, v4, :cond_1

    .line 1025
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1026
    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1027
    const-string/jumbo v23, "dtstart"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v23, "dtend"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v23, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v23, "allDay"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v23, "rrule"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1032
    const-string/jumbo v23, "eventTimezone"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1047
    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 1048
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v20, v0

    .line 1049
    .local v20, "oldStartMillis":J
    cmp-long v23, v14, v6

    if-eqz v23, :cond_2

    .line 1051
    sub-long v12, v6, v14

    .line 1052
    .local v12, "offset":J
    add-long v20, v20, v12

    .line 1054
    .end local v12    # "offset":J
    :cond_2
    if-eqz v4, :cond_3

    .line 1055
    new-instance v22, Landroid/text/format/Time;

    const-string/jumbo v23, "UTC"

    invoke-direct/range {v22 .. v23}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v22, "time":Landroid/text/format/Time;
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1057
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1058
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1059
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1060
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 1062
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

.method public deleteEvent(J)V
    .locals 7
    .param p1, "eventId"    # J

    .prologue
    .line 308
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v0

    .line 312
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getEventUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteEvent(JJJI)V
    .locals 25
    .param p1, "eventId"    # J
    .param p3, "startMs"    # J
    .param p5, "endMs"    # J
    .param p7, "which"    # I

    .prologue
    .line 317
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->loadEventDetail(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    move-result-object v16

    .line 318
    .local v16, "model":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    if-nez v16, :cond_0

    .line 417
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v9

    .line 323
    .local v9, "context":Landroid/content/Context;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 324
    .local v17, "originalSyncId":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getEventUri()Landroid/net/Uri;

    move-result-object v3

    .line 325
    .local v3, "eventUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_1
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_2
    packed-switch p7, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .restart local v22    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 351
    .local v19, "title":Ljava/lang/String;
    const-string/jumbo v2, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 354
    .local v18, "timezone":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 355
    .local v10, "calendarId":J
    const-string/jumbo v2, "eventTimezone"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v4, "allDay"

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string/jumbo v4, "originalAllDay"

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string/jumbo v2, "calendar_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    const-string/jumbo v2, "dtstart"

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string/jumbo v2, "dtend"

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string/jumbo v2, "original_sync_id"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v2, "original_id"

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string/jumbo v2, "originalInstanceTime"

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 364
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 363
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    const-string/jumbo v2, "eventStatus"

    const/4 v4, 0x2

    .line 366
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 365
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 356
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 357
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 370
    .end local v10    # "calendarId":J
    .end local v18    # "timezone":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v22    # "values":Landroid/content/ContentValues;
    :pswitch_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :pswitch_2
    const/4 v8, 0x0

    .line 374
    .local v8, "c":Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 376
    .local v14, "dtStart":J
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "dtstart"

    aput-object v6, v4, v5

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 378
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    const/4 v7, 0x0

    .line 376
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 379
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 385
    :cond_5
    if-eqz v8, :cond_6

    .line 386
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_6
    :goto_3
    cmp-long v2, v14, p3

    if-nez v2, :cond_8

    .line 391
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    :catch_0
    move-exception v20

    .line 383
    .local v20, "tr":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8bfb\u53d6\u7cfb\u7edf\u65e5\u5386\u5931\u8d25, eventId = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    if-eqz v8, :cond_6

    .line 386
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 385
    .end local v20    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    .line 386
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 394
    :cond_8
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v21, "updateValues":Landroid/content/ContentValues;
    new-instance v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 397
    .local v13, "eventRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 398
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 399
    .local v12, "date":Landroid/text/format/Time;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v2, :cond_9

    .line 400
    const-string/jumbo v2, "UTC"

    iput-object v2, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 402
    :cond_9
    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 403
    iget v2, v12, Landroid/text/format/Time;->second:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v12, Landroid/text/format/Time;->second:I

    .line 404
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 408
    const-string/jumbo v2, "UTC"

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v12}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    .line 411
    const-string/jumbo v2, "dtstart"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    const-string/jumbo v2, "rrule"

    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadEventDetail(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .locals 29
    .param p1, "eventId"    # J
    .param p3, "startMs"    # J
    .param p5, "endMs"    # J

    .prologue
    .line 218
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v16

    .line 219
    .local v16, "context":Landroid/content/Context;
    const/16 v22, 0x0

    .line 220
    .local v22, "eventDetailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    const/16 v17, 0x0

    .line 221
    .local v17, "detailCursor":Landroid/database/Cursor;
    const-wide/16 v8, 0x1

    sub-long v14, p3, v8

    .line 222
    .local v14, "begin":J
    const-wide/16 v8, 0x1

    add-long v18, p5, v8

    .line 223
    .local v18, "end":J
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getInstanceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 224
    .local v13, "builder":Landroid/net/Uri$Builder;
    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 225
    move-wide/from16 v0, v18

    invoke-static {v13, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 226
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 227
    .local v3, "uri":Landroid/net/Uri;
    const-wide/16 v8, 0x3e8

    add-long v26, p3, v8

    .line 228
    .local v26, "startMax":J
    const-wide/16 v8, 0x3e8

    add-long v20, p5, v8

    .line 230
    .local v20, "endMax":J
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lags;->g:[Ljava/lang/String;

    const-string/jumbo v5, "event_id=? AND begin>=? AND begin<? AND end>=? AND end<?"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 232
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v7, 0x0

    .line 230
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 234
    if-eqz v17, :cond_0

    .line 235
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->generateEventDetailFromCursor(Landroid/database/Cursor;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    .line 243
    :cond_0
    if-eqz v17, :cond_1

    .line 244
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_1
    if-eqz v22, :cond_c

    .line 250
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getReminderUri()Landroid/net/Uri;

    move-result-object v5

    .line 251
    .local v5, "reminderUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string/jumbo v7, "event_id=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 252
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x0

    .line 251
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 253
    if-eqz v17, :cond_6

    .line 254
    new-instance v24, Ljava/util/ArrayList;

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v24, "reminderModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 256
    new-instance v23, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/alimei/sdk/model/ReminderModel;-><init>()V

    .line 257
    .local v23, "model":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    const-string/jumbo v2, "event_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v23

    iput-wide v8, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->eventId:J

    .line 258
    const-string/jumbo v2, "minutes"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    .line 259
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v23

    iput-wide v8, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->id:J

    .line 260
    const-string/jumbo v2, "method"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->method:I

    .line 261
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 265
    .end local v5    # "reminderUri":Landroid/net/Uri;
    .end local v23    # "model":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    .end local v24    # "reminderModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    :catch_0
    move-exception v25

    .line 266
    .local v25, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, "\u8bfb\u53d6\u7cfb\u7edf\u65e5\u5386reminder\u5931\u8d25"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    if-eqz v17, :cond_2

    .line 270
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object/from16 v2, v22

    .line 303
    .end local v25    # "tr":Ljava/lang/Throwable;
    :goto_1
    return-object v2

    .line 239
    :catch_1
    move-exception v25

    .line 240
    .restart local v25    # "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "\u8bfb\u53d6\u7cfb\u7edf\u65e5\u5386\u8be6\u60c5\u51fa\u9519"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    if-eqz v17, :cond_3

    .line 244
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 243
    .end local v25    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_4

    .line 244
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 263
    .restart local v5    # "reminderUri":Landroid/net/Uri;
    .restart local v24    # "reminderModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    :cond_5
    :try_start_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    .end local v24    # "reminderModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    :cond_6
    if-eqz v17, :cond_7

    .line 270
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_7
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getAttendeeUri()Landroid/net/Uri;

    move-result-object v7

    .line 276
    .local v7, "attendeeUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string/jumbo v9, "event_id=?"

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 277
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v2

    const/4 v11, 0x0

    .line 276
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 278
    if-eqz v17, :cond_b

    .line 279
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .local v12, "attendeeModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 281
    new-instance v23, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/alimei/sdk/model/AttendeeModel;-><init>()V

    .line 282
    .local v23, "model":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    const-string/jumbo v2, "attendeeEmail"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    .line 283
    const-string/jumbo v2, "attendeeName"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    .line 284
    const-string/jumbo v2, "attendeeRelationship"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    .line 285
    const-string/jumbo v2, "attendeeStatus"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    .line 286
    const-string/jumbo v2, "attendeeType"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    .line 287
    const-string/jumbo v2, "event_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v23

    iput-wide v8, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->eventId:J

    .line 288
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v23

    iput-wide v8, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->id:J

    .line 289
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_2

    .line 293
    .end local v7    # "attendeeUri":Landroid/net/Uri;
    .end local v12    # "attendeeModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    .end local v23    # "model":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    :catch_2
    move-exception v25

    .line 294
    .restart local v25    # "tr":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v2, "\u8bfb\u53d6\u7cfb\u7edf\u65e5\u5386attendee\u5931\u8d25"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 297
    if-eqz v17, :cond_8

    .line 298
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v2, v22

    goto/16 :goto_1

    .line 269
    .end local v5    # "reminderUri":Landroid/net/Uri;
    .end local v25    # "tr":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    if-eqz v17, :cond_9

    .line 270
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 291
    .restart local v5    # "reminderUri":Landroid/net/Uri;
    .restart local v7    # "attendeeUri":Landroid/net/Uri;
    .restart local v12    # "attendeeModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    :cond_a
    :try_start_7
    move-object/from16 v0, v22

    iput-object v12, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 297
    .end local v12    # "attendeeModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    :cond_b
    if-eqz v17, :cond_c

    .line 298
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .end local v5    # "reminderUri":Landroid/net/Uri;
    .end local v7    # "attendeeUri":Landroid/net/Uri;
    :cond_c
    move-object/from16 v2, v22

    .line 303
    goto/16 :goto_1

    .line 297
    .restart local v5    # "reminderUri":Landroid/net/Uri;
    :catchall_2
    move-exception v2

    if-eqz v17, :cond_d

    .line 298
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method public querySystemCalendar(J)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    .locals 11
    .param p1, "calId"    # J

    .prologue
    const/4 v7, 0x0

    .line 109
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v8

    .line 110
    .local v8, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 111
    .local v6, "c":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getCalendarUri()Landroid/net/Uri;

    move-result-object v1

    .line 113
    .local v1, "contentUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    if-eqz v6, :cond_1

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->buildCalendarModel(Landroid/database/Cursor;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 123
    .local v7, "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    if-eqz v6, :cond_0

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v7    # "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    :cond_0
    :goto_0
    return-object v7

    .line 123
    :cond_1
    if-eqz v6, :cond_0

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v9

    .line 121
    .local v9, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v0, "read system calendar account fail"

    invoke-static {v0, v9}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    if-eqz v6, :cond_0

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 123
    .end local v9    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public querySystemCalendar()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 85
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v9

    .line 86
    .local v9, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 87
    .local v6, "c":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getCalendarUri()Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, "contentUri":Landroid/net/Uri;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v8, "calList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    if-eqz v6, :cond_1

    .line 92
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->buildCalendarModel(Landroid/database/Cursor;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    move-result-object v7

    .line 94
    .local v7, "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    .end local v7    # "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    :catch_0
    move-exception v10

    .line 98
    .local v10, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v0, "read system calendar account fail"

    invoke-static {v0, v10}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    if-eqz v6, :cond_0

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 104
    .end local v10    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-object v8

    .line 100
    :cond_1
    if-eqz v6, :cond_0

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public querySystemEvents(II)Ljava/util/List;
    .locals 20
    .param p1, "startDay"    # I
    .param p2, "numDays"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v10

    .line 186
    .local v10, "context":Landroid/content/Context;
    const/4 v9, 0x0

    .line 187
    .local v9, "c":Landroid/database/Cursor;
    new-instance v18, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 188
    .local v18, "time":Landroid/text/format/Time;
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 189
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 190
    .local v16, "startMs":J
    add-int v11, p1, p2

    .line 191
    .local v11, "endDay":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 192
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 193
    .local v12, "endMs":J
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getInstanceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 194
    .local v8, "builder":Landroid/net/Uri$Builder;
    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 195
    invoke-static {v8, v12, v13}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 196
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 197
    .local v3, "uri":Landroid/net/Uri;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lags;->f:[Ljava/lang/String;

    const-string/jumbo v5, "visible=1"

    const/4 v6, 0x0

    const-string/jumbo v7, "startDay,startMinute,title"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 200
    if-eqz v9, :cond_1

    .line 201
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-static {v9}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->generateEventFromCursor(Landroid/database/Cursor;)Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    move-result-object v14

    .line 203
    .local v14, "instanceModel":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    .end local v14    # "instanceModel":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    :catch_0
    move-exception v19

    .line 207
    .local v19, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "query system calendar failed"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-eqz v9, :cond_0

    .line 210
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 213
    .end local v19    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-object v15

    .line 209
    :cond_1
    if-eqz v9, :cond_0

    .line 210
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 209
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_2

    .line 210
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public updateAttendeeStatus(JI)V
    .locals 9
    .param p1, "attendeeId"    # J
    .param p3, "attendeeStatus"    # I

    .prologue
    .line 714
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 721
    :goto_0
    return-void

    .line 717
    :cond_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v0

    .line 718
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 719
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getAttendeeUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
    .locals 42
    .param p1, "currentModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p3, "modifyWhich"    # I

    .prologue
    .line 485
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v12

    .line 486
    .local v12, "context":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    .line 487
    .local v35, "resolver":Landroid/content/ContentResolver;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v24, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getEventContentValues(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Landroid/content/ContentValues;

    move-result-object v22

    .line 489
    .local v22, "eventValues":Landroid/content/ContentValues;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getEventUri()Landroid/net/Uri;

    move-result-object v21

    .line 490
    .local v21, "eventUri":Landroid/net/Uri;
    const/16 v20, -0x1

    .line 491
    .local v20, "eventIndex":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v18, v0

    .line 492
    .local v18, "eventId":J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 494
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 495
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 496
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 497
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 494
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :goto_0
    const/16 v37, -0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-eq v0, v1, :cond_a

    .line 607
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    move-object/from16 v32, v0

    .line 608
    .local v32, "reminderModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    if-eqz v32, :cond_9

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v37

    if-lez v37, :cond_9

    .line 609
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 611
    .local v34, "reminderValues":Landroid/content/ContentValues;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getReminderUri()Landroid/net/Uri;

    move-result-object v33

    .line 612
    .local v33, "reminderUri":Landroid/net/Uri;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_9

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    .line 613
    .local v31, "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    invoke-virtual/range {v34 .. v34}, Landroid/content/ContentValues;->clear()V

    .line 614
    const-string/jumbo v38, "minutes"

    move-object/from16 v0, v31

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    const-string/jumbo v38, "method"

    move-object/from16 v0, v31

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->method:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 617
    .local v11, "b":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v38, "event_id"

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 618
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    .end local v11    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v31    # "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    .end local v32    # "reminderModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    .end local v33    # "reminderUri":Landroid/net/Uri;
    .end local v34    # "reminderValues":Landroid/content/ContentValues;
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 502
    :pswitch_0
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v28, v0

    .line 503
    .local v28, "originalTime":J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 504
    .local v25, "originalSyncId":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    move-wide/from16 v26, v0

    .line 505
    .local v26, "originalId":J
    const-string/jumbo v37, "originalInstanceTime"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_1

    .line 507
    const-string/jumbo v37, "original_sync_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_1
    const-string/jumbo v37, "original_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    const-string/jumbo v37, "rrule"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 511
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v37, v38, v40

    if-lez v37, :cond_3

    .line 512
    const-string/jumbo v37, "dtend"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 513
    const-string/jumbo v37, "duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 528
    :cond_2
    :goto_2
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 529
    .local v6, "allDay":Z
    const-string/jumbo v38, "originalAllDay"

    if-eqz v6, :cond_4

    const/16 v37, 0x1

    :goto_3
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string/jumbo v37, "eventStatus"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 532
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 514
    .end local v6    # "allDay":Z
    :cond_3
    const-string/jumbo v37, "duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 515
    const-string/jumbo v37, "duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 516
    .local v14, "durationStr":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 517
    new-instance v13, Lagg;

    invoke-direct {v13}, Lagg;-><init>()V

    .line 519
    .local v13, "durationParser":Lagg;
    :try_start_0
    invoke-virtual {v13, v14}, Lagg;->a(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v38, v0

    invoke-virtual {v13}, Lagg;->a()J

    move-result-wide v40

    add-long v16, v38, v40

    .line 521
    .local v16, "end":J
    const-string/jumbo v37, "duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v37, "dtend"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 523
    .end local v16    # "end":J
    :catch_0
    move-exception v15

    .line 524
    .local v15, "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    invoke-virtual {v15}, Lcom/alibaba/alimei/sdk/calendar/common/DateException;->printStackTrace()V

    goto/16 :goto_2

    .line 529
    .end local v13    # "durationParser":Lagg;
    .end local v14    # "durationStr":Ljava/lang/String;
    .end local v15    # "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    .restart local v6    # "allDay":Z
    :cond_4
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 535
    .end local v6    # "allDay":Z
    .end local v25    # "originalSyncId":Ljava/lang/String;
    .end local v26    # "originalId":J
    .end local v28    # "originalTime":J
    :pswitch_1
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 536
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 537
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 538
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 535
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 541
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 546
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    move-wide/from16 v40, v0

    cmp-long v37, v38, v40

    if-nez v37, :cond_5

    .line 548
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 549
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 550
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 548
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :goto_4
    const-string/jumbo v37, "eventStatus"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 565
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 556
    :cond_5
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v30, "originalValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->updatePastEvents(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;J)Ljava/lang/String;

    .line 558
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 559
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 560
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 561
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 558
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 567
    .end local v30    # "originalValues":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    move-wide/from16 v40, v0

    cmp-long v37, v38, v40

    if-nez v37, :cond_7

    .line 568
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->checkTimeDependentFields(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;I)V

    .line 570
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 571
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 572
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 573
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 570
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 586
    :cond_7
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .restart local v30    # "originalValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->updatePastEvents(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;J)Ljava/lang/String;

    move-result-object v23

    .line 589
    .local v23, "newRrule":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 590
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 591
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 592
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 589
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_8

    .line 594
    const-string/jumbo v37, "rrule"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_8
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 597
    const-string/jumbo v37, "eventStatus"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 623
    .end local v23    # "newRrule":Ljava/lang/String;
    .end local v30    # "originalValues":Landroid/content/ContentValues;
    .restart local v32    # "reminderModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    :cond_9
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 624
    .local v8, "attendeeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v37

    if-lez v37, :cond_c

    .line 625
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 627
    .local v10, "attendeeValues":Landroid/content/ContentValues;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getAttendeeUri()Landroid/net/Uri;

    move-result-object v9

    .line 628
    .local v9, "attendeeUri":Landroid/net/Uri;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_c

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 629
    .local v7, "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 630
    const-string/jumbo v38, "attendeeRelationship"

    iget v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    const-string/jumbo v38, "attendeeEmail"

    iget-object v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string/jumbo v38, "attendeeName"

    iget-object v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string/jumbo v38, "attendeeStatus"

    iget v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string/jumbo v38, "attendeeType"

    iget v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 636
    .restart local v11    # "b":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v38, "event_id"

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 637
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 642
    .end local v7    # "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    .end local v8    # "attendeeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    .end local v9    # "attendeeUri":Landroid/net/Uri;
    .end local v10    # "attendeeValues":Landroid/content/ContentValues;
    .end local v11    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v32    # "reminderModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getReminderUri()Landroid/net/Uri;

    move-result-object v33

    .line 643
    .restart local v33    # "reminderUri":Landroid/net/Uri;
    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "event_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 644
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 645
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 643
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    move-object/from16 v32, v0

    .line 648
    .restart local v32    # "reminderModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/ReminderModel;>;"
    if-eqz v32, :cond_b

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v37

    if-lez v37, :cond_b

    .line 649
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 651
    .restart local v34    # "reminderValues":Landroid/content/ContentValues;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_6
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_b

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    .line 652
    .restart local v31    # "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    invoke-virtual/range {v34 .. v34}, Landroid/content/ContentValues;->clear()V

    .line 653
    const-string/jumbo v38, "minutes"

    move-object/from16 v0, v31

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string/jumbo v38, "method"

    move-object/from16 v0, v31

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->method:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string/jumbo v38, "event_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    invoke-static/range {v33 .. v33}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 657
    .restart local v11    # "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 662
    .end local v11    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v31    # "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    .end local v34    # "reminderValues":Landroid/content/ContentValues;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getAttendeeUri()Landroid/net/Uri;

    move-result-object v9

    .line 663
    .restart local v9    # "attendeeUri":Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    const-string/jumbo v38, "event_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 664
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v37

    .line 665
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v37

    .line 663
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 668
    .restart local v8    # "attendeeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v37

    if-lez v37, :cond_c

    .line 669
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 671
    .restart local v10    # "attendeeValues":Landroid/content/ContentValues;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_7
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_c

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 672
    .restart local v7    # "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 673
    const-string/jumbo v38, "attendeeRelationship"

    iget v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string/jumbo v38, "attendeeEmail"

    iget-object v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string/jumbo v38, "attendeeName"

    iget-object v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string/jumbo v38, "attendeeStatus"

    iget v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    const-string/jumbo v38, "attendeeType"

    iget v0, v7, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string/jumbo v38, "event_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 680
    .restart local v11    # "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 685
    .end local v7    # "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    .end local v9    # "attendeeUri":Landroid/net/Uri;
    .end local v10    # "attendeeValues":Landroid/content/ContentValues;
    .end local v11    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v33    # "reminderUri":Landroid/net/Uri;
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_d

    .line 687
    :try_start_1
    const-string/jumbo v37, "com.android.calendar"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v36

    .line 688
    .local v36, "results":[Landroid/content/ContentProviderResult;
    if-eqz v36, :cond_d

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v37, v0

    if-lez v37, :cond_d

    .line 689
    const-string/jumbo v37, "\u66f4\u65b0\u7cfb\u7edf\u65e5\u5386\u6210\u529f"

    invoke-static/range {v37 .. v37}, Lzb;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 699
    .end local v36    # "results":[Landroid/content/ContentProviderResult;
    :cond_d
    :goto_8
    return-void

    .line 691
    :catch_1
    move-exception v15

    .line 692
    .local v15, "e":Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    .line 693
    const-string/jumbo v37, "\u66f4\u65b0\u7cfb\u7edf\u65e5\u5386\u5931\u8d25"

    move-object/from16 v0, v37

    invoke-static {v0, v15}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 694
    .end local v15    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v15

    .line 695
    .local v15, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 696
    const-string/jumbo v37, "\u66f4\u65b0\u7cfb\u7edf\u65e5\u5386\u5931\u8d25"

    move-object/from16 v0, v37

    invoke-static {v0, v15}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 500
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updatePastEvents(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Landroid/content/ContentValues;J)Ljava/lang/String;
    .locals 21
    .param p1, "originalModel"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "updateValues"    # Landroid/content/ContentValues;
    .param p3, "endTimeMillis"    # J

    .prologue
    .line 916
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 917
    .local v12, "origAllDay":Z
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 918
    .local v14, "origRrule":Ljava/lang/String;
    move-object v11, v14

    .line 920
    .local v11, "newRrule":Ljava/lang/String;
    new-instance v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v13}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 921
    .local v13, "origRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    invoke-virtual {v13, v14}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 923
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    .line 924
    .local v6, "startTimeMillis":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 925
    .local v4, "dtstart":Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    iput-object v8, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 926
    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 928
    iget v8, v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    if-lez v8, :cond_1

    .line 944
    new-instance v5, Lagi;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v8, v9, v0, v1}, Lagi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .local v5, "recurSet":Lagi;
    new-instance v3, Lagh;

    invoke-direct {v3}, Lagh;-><init>()V

    .local v3, "recurProc":Lagh;
    move-wide/from16 v8, p3

    .line 949
    :try_start_0
    invoke-virtual/range {v3 .. v9}, Lagh;->a(Landroid/text/format/Time;Lagi;JJ)[J
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 955
    .local v15, "recurrences":[J
    array-length v8, v15

    if-nez v8, :cond_0

    .line 956
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "can\'t use this method on first instance"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 951
    .end local v15    # "recurrences":[J
    :catch_0
    move-exception v2

    .line 952
    .local v2, "de":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 960
    .end local v2    # "de":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    .restart local v15    # "recurrences":[J
    :cond_0
    new-instance v10, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v10}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 961
    .local v10, "excepRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    invoke-virtual {v10, v14}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V

    .line 963
    iget v8, v10, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    array-length v9, v15

    sub-int/2addr v8, v9

    iput v8, v10, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    .line 964
    invoke-virtual {v10}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 966
    array-length v8, v15

    iput v8, v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    .line 1000
    .end local v3    # "recurProc":Lagh;
    .end local v5    # "recurSet":Lagi;
    .end local v10    # "excepRecurrence":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v15    # "recurrences":[J
    :goto_0
    const-string/jumbo v8, "rrule"

    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v8, "dtstart"

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1003
    return-object v11

    .line 974
    :cond_1
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 975
    .local v16, "untilTime":Landroid/text/format/Time;
    const-string/jumbo v8, "UTC"

    move-object/from16 v0, v16

    iput-object v8, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 979
    const-wide/16 v8, 0x3e8

    sub-long v8, p3, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 981
    if-eqz v12, :cond_2

    .line 982
    const/4 v8, 0x0

    move-object/from16 v0, v16

    iput v8, v0, Landroid/text/format/Time;->hour:I

    .line 983
    const/4 v8, 0x0

    move-object/from16 v0, v16

    iput v8, v0, Landroid/text/format/Time;->minute:I

    .line 984
    const/4 v8, 0x0

    move-object/from16 v0, v16

    iput v8, v0, Landroid/text/format/Time;->second:I

    .line 985
    const/4 v8, 0x1

    move-object/from16 v0, v16

    iput-boolean v8, v0, Landroid/text/format/Time;->allDay:Z

    .line 986
    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 991
    const/4 v8, 0x0

    iput v8, v4, Landroid/text/format/Time;->hour:I

    .line 992
    const/4 v8, 0x0

    iput v8, v4, Landroid/text/format/Time;->minute:I

    .line 993
    const/4 v8, 0x0

    iput v8, v4, Landroid/text/format/Time;->second:I

    .line 994
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/text/format/Time;->allDay:Z

    .line 995
    const-string/jumbo v8, "UTC"

    iput-object v8, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 997
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v13, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateReminder(JI)V
    .locals 9
    .param p1, "eventId"    # J
    .param p3, "minutes"    # I

    .prologue
    .line 703
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 710
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v0

    .line 707
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 708
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "minutes"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getReminderUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSystemCalVisible(Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "calList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 146
    :cond_0
    const/4 v8, 0x1

    .line 180
    :goto_0
    return v8

    .line 149
    :cond_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    .line 150
    .local v2, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;->getCalendarUri()Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, "calendarUri":Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    .line 154
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v7, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    .line 156
    .local v0, "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    .line 157
    .local v4, "id":J
    iget-boolean v12, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->visible:Z

    if-eqz v12, :cond_2

    const/4 v10, 0x1

    .line 158
    .local v10, "visible":I
    :goto_2
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string/jumbo v13, "visible"

    .line 159
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string/jumbo v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 160
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 161
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 162
    .local v6, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    .end local v6    # "op":Landroid/content/ContentProviderOperation;
    .end local v10    # "visible":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 165
    .end local v0    # "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    .end local v4    # "id":J
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "com.android.calendar"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v9

    .line 166
    .local v9, "results":[Landroid/content/ContentProviderResult;
    if-eqz v9, :cond_4

    array-length v11, v9

    if-lez v11, :cond_4

    .line 167
    const-string/jumbo v11, "update system calendar visible success"

    invoke-static {v11}, Lzb;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :cond_4
    const/4 v8, 0x1

    .local v8, "result":Z
    goto :goto_0

    .line 170
    .end local v8    # "result":Z
    .end local v9    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    const/4 v8, 0x0

    .line 173
    .restart local v8    # "result":Z
    const-string/jumbo v11, "update system calendar visilbe exception"

    invoke-static {v11, v3}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "result":Z
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 176
    const-string/jumbo v11, "update system calendar visilbe exception"

    invoke-static {v11, v3}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v8, 0x0

    .restart local v8    # "result":Z
    goto/16 :goto_0
.end method
