.class public Lagj;
.super Ljava/lang/Object;
.source "CalendarDbHelper.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static g:Lagj;


# instance fields
.field public b:Lcom/alibaba/alimei/orm/IDatabase;

.field public c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

.field public d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

.field public e:Lagl;

.field public f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-class v0, Lagj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lagj;->a:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lagj;->g:Lagj;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v2, Lagj$1;

    invoke-direct {v2, p0}, Lagj$1;-><init>(Lagj;)V

    iput-object v2, p0, Lagj;->h:Landroid/content/BroadcastReceiver;

    .line 1213
    const-string/jumbo v2, "calendar.db"

    .line 181
    invoke-static {v2}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v2

    iput-object v2, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 183
    new-instance v2, Lagl;

    iget-object v3, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-direct {v2, v3}, Lagl;-><init>(Lcom/alibaba/alimei/orm/IDatabase;)V

    iput-object v2, p0, Lagj;->e:Lagl;

    .line 184
    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    iget-object v3, p0, Lagj;->e:Lagl;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;-><init>(Lagj;Lagl;)V

    iput-object v2, p0, Lagj;->c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    .line 185
    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    iget-object v3, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;-><init>(Lcom/alibaba/alimei/orm/IDatabase;)V

    iput-object v2, p0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    .line 186
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "localTimezone":Ljava/lang/String;
    iget-object v2, p0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {p0}, Lagj;->b()Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    move-result-object v2

    iput-object v2, p0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    .line 2202
    iget-object v2, p0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->b()Landroid/os/PowerManager$WakeLock;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lagj;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method

.method public static a()Lagj;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lagj;->g:Lagj;

    if-nez v0, :cond_1

    .line 170
    const-class v1, Lagj;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lagj;->g:Lagj;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lagj;

    invoke-direct {v0}, Lagj;-><init>()V

    sput-object v0, Lagj;->g:Lagj;

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    sget-object v0, Lagj;->g:Lagj;

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lagj;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v2, "Events"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 227
    :goto_0
    return-wide v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final a(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .locals 25
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J

    .prologue
    .line 476
    new-instance v16, Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;-><init>()V

    .line 478
    .local v16, "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x2

    .line 479
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    .line 480
    .local v10, "args":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 482
    .local v22, "retCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "SELECT "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lagk;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " FROM "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " WHERE "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "begin=? AND end=? AND event_id=?"

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v10}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v22

    .line 491
    if-nez v22, :cond_1

    .line 582
    if-eqz v22, :cond_0

    .line 583
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object/from16 v17, v16

    .line 587
    .end local v16    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    :goto_0
    return-object v17

    .line 495
    .restart local v16    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    :cond_1
    :try_start_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    .line 2825
    new-instance v17, Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;-><init>()V

    .line 2827
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    .line 2828
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    .line 2829
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    .line 2830
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 2831
    const/16 v2, 0x10

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    .line 2832
    const/16 v2, 0x1c

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    .line 2833
    const/16 v2, 0x11

    .line 2834
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    .line 2835
    const/16 v2, 0x12

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    .line 2836
    const/16 v2, 0x13

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canOrganizerResponse:I

    .line 2837
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 2845
    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2846
    const/4 v4, 0x6

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2848
    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 2849
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    .line 2850
    const/16 v2, 0xa

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    .line 2852
    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 2853
    const/16 v2, 0x9

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    .line 2854
    const/16 v2, 0xb

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endTime:I

    .line 2856
    const/16 v2, 0xc

    .line 2857
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->hasAlarm:Z

    .line 2858
    const/16 v2, 0xd

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2859
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 2860
    const/16 v2, 0xf

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    .line 2862
    const/16 v2, 0x1e

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->isBodySaveFile(Ljava/lang/String;)Z

    move-result v2

    .line 2863
    const/16 v3, 0x15

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    .line 2864
    if-eqz v2, :cond_2

    .line 2865
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-static {v2}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    .line 2867
    :cond_2
    const/16 v2, 0x17

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    .line 2868
    const/16 v2, 0x16

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    .line 2869
    const/16 v2, 0x19

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    .line 2870
    const/16 v2, 0x1a

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    .line 2871
    const/16 v2, 0x18

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 2872
    const/16 v2, 0x1d

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    .line 2873
    const/16 v2, 0x1f

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarParentId:J

    .line 2874
    const/16 v2, 0x20

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->folderServerId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 498
    .end local v16    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .local v17, "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    const/16 v19, 0x0

    .line 500
    .local v19, "reminderCursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Reminders"

    sget-object v4, Lagk;->g:[Ljava/lang/String;

    const-string/jumbo v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 502
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 500
    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 503
    if-eqz v19, :cond_9

    .line 504
    :goto_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 505
    new-instance v20, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/alimei/sdk/model/ReminderModel;-><init>()V

    .line 506
    .local v20, "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->id:J

    .line 507
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->eventId:J

    .line 508
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    .line 509
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->method:I

    .line 510
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    .line 513
    :cond_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 517
    .end local v20    # "reminderModel":Lcom/alibaba/alimei/sdk/model/ReminderModel;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_4

    .line 518
    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    :catchall_1
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .end local v19    # "reminderCursor":Landroid/database/Cursor;
    .restart local v16    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    :goto_5
    if-eqz v22, :cond_5

    .line 583
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 2830
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2834
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2857
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 517
    .end local v16    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .restart local v17    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .restart local v19    # "reminderCursor":Landroid/database/Cursor;
    :cond_9
    if-eqz v19, :cond_a

    .line 518
    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 522
    :cond_a
    const/4 v14, 0x0

    .line 524
    .local v14, "attendeeCursor":Landroid/database/Cursor;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Attendees"

    sget-object v4, Lagk;->h:[Ljava/lang/String;

    const-string/jumbo v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 525
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 524
    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 526
    if-eqz v14, :cond_d

    .line 527
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 528
    new-instance v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    invoke-direct {v15}, Lcom/alibaba/alimei/sdk/model/AttendeeModel;-><init>()V

    .line 529
    .local v15, "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->id:J

    .line 530
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->eventId:J

    .line 531
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    .line 532
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    .line 533
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    .line 534
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    .line 535
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v15, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    .line 536
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    if-nez v2, :cond_b

    .line 537
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 539
    :cond_b
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 543
    .end local v15    # "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    :catchall_2
    move-exception v2

    if-eqz v14, :cond_c

    .line 544
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 543
    :cond_d
    if-eqz v14, :cond_e

    .line 544
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_e
    new-instance v23, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    .line 3213
    const-string/jumbo v3, "calendar.db"

    .line 548
    const-string/jumbo v4, "Attachments"

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .local v23, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "eventKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v13

    .line 551
    .local v13, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;>;"
    if-eqz v13, :cond_12

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 552
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
    .local v12, "attachmentModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 554
    .local v21, "resourceModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;

    .line 555
    .local v11, "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    new-instance v18, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 556
    .local v18, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-wide v4, v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->id:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    .line 557
    iget-object v3, v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 558
    iget-object v3, v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->attachmentId:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    .line 559
    iget-object v3, v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->contentId:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    .line 560
    iget-object v3, v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 561
    iget-wide v4, v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->eventKey:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    .line 562
    iget-wide v4, v11, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;->size:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 563
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    .line 564
    const-string/jumbo v3, "calendar"

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    .line 565
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->parentItemServerId:Ljava/lang/String;

    .line 566
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 567
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    .line 568
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 570
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    .line 571
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 574
    .end local v11    # "attachment":Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;
    .end local v18    # "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_10
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 575
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    .line 577
    :cond_11
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 578
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 582
    .end local v12    # "attachmentModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    .end local v21    # "resourceModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :cond_12
    if-eqz v22, :cond_13

    .line 583
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_13
    move-object/from16 v16, v17

    .line 587
    .end local v17    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .restart local v16    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    goto/16 :goto_0

    .line 582
    .end local v13    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAttachment;>;"
    .end local v14    # "attendeeCursor":Landroid/database/Cursor;
    .end local v19    # "reminderCursor":Landroid/database/Cursor;
    .end local v23    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :catchall_3
    move-exception v2

    goto/16 :goto_5
.end method

.method public final a(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v13, "eventInstanceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->b()Ljava/lang/String;

    move-result-object v10

    .line 2591
    .local v10, "instanceTimezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a()Ljava/lang/String;

    move-result-object v3

    .line 2592
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2593
    const/4 v11, 0x0

    .line 2615
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-interface {v3}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 2617
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    :try_start_0
    invoke-virtual/range {v3 .. v11}, Lagj;->a(JJZZLjava/lang/String;Z)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v3, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-interface {v3}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2621
    move-object/from16 v0, p0

    iget-object v3, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-interface {v3}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "begin<=? AND end>=? AND visible=1 AND ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 430
    if-nez p6, :cond_1

    const/4 v2, 0x0

    .line 431
    .local v2, "argsLen":I
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .local v18, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string/jumbo v3, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v2, :cond_2

    .line 436
    aget-object v3, p6, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string/jumbo v3, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2595
    .end local v2    # "argsLen":I
    .end local v14    # "i":I
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v4, "home"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_0

    .line 2621
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-interface {v4}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    throw v3

    .line 430
    :cond_1
    move-object/from16 v0, p6

    array-length v2, v0

    goto :goto_1

    .line 440
    .restart local v2    # "argsLen":I
    .restart local v14    # "i":I
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 442
    .local v16, "newSelectionArgs":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 444
    .local v17, "retCursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "SELECT "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lagk;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " FROM "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "Instances INNER JOIN view_events AS Events ON (Instances.event_id=Events._id)"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " WHERE "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, " ORDER BY "

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "startDay ASC,startMinute ASC"

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v3, v4, v0}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v17

    .line 455
    if-nez v17, :cond_4

    .line 467
    if-eqz v17, :cond_3

    .line 468
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_3
    :goto_3
    return-object v13

    .line 459
    :cond_4
    :goto_4
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2766
    new-instance v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    invoke-direct {v15}, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;-><init>()V

    .line 2768
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    .line 2769
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    .line 2770
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    .line 2771
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    .line 2772
    const/16 v3, 0x10

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    .line 2773
    const/16 v3, 0x11

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    .line 2774
    const/16 v3, 0x12

    .line 2775
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_6
    iput-boolean v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    .line 2776
    const/16 v3, 0x13

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    .line 2777
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    .line 2785
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2786
    const/4 v3, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2788
    iput-wide v4, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    .line 2789
    const/16 v3, 0xa

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    .line 2790
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    .line 2792
    iput-wide v6, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    .line 2793
    const/16 v3, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    .line 2794
    const/16 v3, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    .line 2796
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    .line 2799
    const/16 v3, 0xd

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2800
    const/16 v4, 0xe

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2801
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2802
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    .line 2807
    :goto_8
    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    .line 2808
    const/16 v3, 0xf

    .line 2809
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    .line 2811
    const/16 v3, 0x16

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    .line 2812
    const/16 v3, 0x1a

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    .line 2813
    const/16 v3, 0x1b

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageMailboxId:J

    .line 2814
    const/16 v3, 0x17

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    .line 2815
    const/16 v3, 0x18

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    .line 2816
    const/16 v3, 0x19

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    .line 2817
    const/16 v3, 0x1d

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    .line 2818
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->parentCalendarId:J

    .line 2819
    const/16 v3, 0x1f

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->folderServerId:Ljava/lang/String;

    .line 461
    .local v15, "instance":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_4

    .line 463
    .end local v15    # "instance":Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
    :catch_0
    move-exception v12

    .line 464
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 465
    const-string/jumbo v3, "query calendar error"

    invoke-static {v3, v12}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    if-eqz v17, :cond_3

    .line 468
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 2771
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 2775
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 2796
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 2804
    :cond_9
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, v15, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_8

    .line 467
    :catchall_1
    move-exception v3

    if-eqz v17, :cond_a

    .line 468
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 467
    :cond_b
    if-eqz v17, :cond_3

    .line 468
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method public final a(J)V
    .locals 11
    .param p1, "id"    # J

    .prologue
    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "eventid="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 333
    iget-object v3, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 334
    .local v3, "db":Lcom/alibaba/alimei/orm/IDatabase;
    const/4 v2, 0x0

    .line 335
    .local v2, "cursor":Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    .line 337
    .local v0, "canPartiallyUpdate":J
    :try_start_0
    const-string/jumbo v5, "SELECT canPartiallyUpdate FROM view_events WHERE _id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 340
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 337
    invoke-interface {v3, v5, v8}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 341
    if-eqz v2, :cond_0

    .line 342
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 347
    :cond_0
    if-eqz v2, :cond_1

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-nez v5, :cond_4

    .line 386
    :cond_2
    :goto_1
    return-void

    .line 344
    :catch_0
    move-exception v4

    .line 345
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    if-eqz v2, :cond_1

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .line 355
    :cond_4
    const-string/jumbo v5, "INSERT INTO Events  (_sync_id,calendar_id,title,eventLocation,description,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,eventEndTimezone,duration,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,guestsCanModify,guestsCanInviteOthers,guestsCanSeeGuests,organizer,isOrganizer,customAppPackage,customAppUri,uid2445,dirty,lastSynced) SELECT _sync_id,calendar_id,title,eventLocation,description,eventColor,eventColor_index,eventStatus,selfAttendeeStatus,dtstart,dtend,eventTimezone,eventEndTimezone,duration,allDay,accessLevel,availability,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,original_sync_id,original_id,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,guestsCanModify,guestsCanInviteOthers,guestsCanSeeGuests,organizer,isOrganizer,customAppPackage,customAppUri,uid2445, 0, 1 FROM Events WHERE _id = ? AND dirty = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 360
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 355
    invoke-interface {v3, v5, v8}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    const-wide/16 v6, 0x0

    .line 364
    .local v6, "newId":J
    :try_start_2
    const-string/jumbo v5, "SELECT CASE changes() WHEN 0 THEN -1 ELSE last_insert_rowid() END"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_5

    .line 367
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v6

    .line 372
    :cond_5
    if-eqz v2, :cond_6

    .line 373
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_6
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 2301
    const-string/jumbo v5, "INSERT INTO Reminders ( event_id, minutes,method) SELECT ?,minutes,method FROM Reminders WHERE event_id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 2306
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2301
    invoke-interface {v3, v5, v8}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2307
    const-string/jumbo v5, "INSERT INTO Attendees (event_id,attendeeName,attendeeEmail,attendeeStatus,attendeeRelationship,attendeeType,attendeeIdentity,attendeeIdNamespace) SELECT ?,attendeeName,attendeeEmail,attendeeStatus,attendeeRelationship,attendeeType,attendeeIdentity,attendeeIdNamespace FROM Attendees WHERE event_id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 2312
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2307
    invoke-interface {v3, v5, v8}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2313
    const-string/jumbo v5, "INSERT INTO ExtendedProperties (event_id,name,value) SELECT ?, name,value FROM ExtendedProperties WHERE event_id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 2319
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2313
    invoke-interface {v3, v5, v8}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 369
    :catch_1
    move-exception v4

    .line 370
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 372
    if-eqz v2, :cond_6

    .line 373
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 372
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_7

    .line 373
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v5
.end method

.method public final a(JJZZLjava/lang/String;Z)V
    .locals 31
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "useMinimumExpansionWindow"    # Z
    .param p6, "forceExpansion"    # Z
    .param p7, "instancesTimezone"    # Ljava/lang/String;
    .param p8, "isHomeTimezone"    # Z

    .prologue
    .line 639
    move-wide/from16 v4, p1

    .line 640
    .local v4, "expandBegin":J
    move-wide/from16 v6, p3

    .line 648
    .local v6, "expandEnd":J
    if-nez p7, :cond_1

    .line 649
    sget-object v2, Lagj;->a:Ljava/lang/String;

    const-string/jumbo v3, "Cannot run acquireInstanceRangeLocked() because instancesTimezone is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    if-eqz p5, :cond_2

    .line 659
    sub-long v28, p3, p1

    .line 660
    .local v28, "span":J
    const-wide v2, 0x13f4a4800L

    cmp-long v2, v28, v2

    if-gez v2, :cond_2

    .line 661
    const-wide v2, 0x13f4a4800L

    sub-long v2, v2, v28

    const-wide/16 v8, 0x2

    div-long v22, v2, v8

    .line 662
    .local v22, "additionalRange":J
    sub-long v4, v4, v22

    .line 663
    add-long v6, v6, v22

    .line 670
    .end local v22    # "additionalRange":J
    .end local v28    # "span":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->e:Lagl;

    invoke-virtual {v2}, Lagl;->a()Lagl$a;

    move-result-object v21

    .line 671
    .local v21, "fields":Lagl$a;
    move-object/from16 v0, v21

    iget-wide v0, v0, Lagl$a;->c:J

    move-wide/from16 v16, v0

    .line 672
    .local v16, "maxInstance":J
    move-object/from16 v0, v21

    iget-wide v12, v0, Lagl$a;->b:J

    .line 674
    .local v12, "minInstance":J
    if-eqz p8, :cond_7

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    .line 676
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->c()Ljava/lang/String;

    move-result-object v26

    .line 677
    .local v26, "previousTimezone":Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v27, 0x1

    .line 689
    .end local v26    # "previousTimezone":Ljava/lang/String;
    .local v27, "timezoneChanged":Z
    :cond_3
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_4

    if-nez v27, :cond_4

    if-eqz p6, :cond_9

    .line 695
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "DELETE FROM Instances;"

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    sget-object v2, Lagj;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "acquireInstanceRangeLocked() deleted Instances, timezone changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 700
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lagj;->c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLjava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->e:Lagl;

    move-object/from16 v3, p7

    invoke-virtual/range {v2 .. v7}, Lagl;->a(Ljava/lang/String;JJ)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a()Ljava/lang/String;

    move-result-object v30

    .line 709
    .local v30, "timezoneType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a(Ljava/lang/String;)V

    .line 712
    if-eqz v30, :cond_0

    const-string/jumbo v2, "auto"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->c()Ljava/lang/String;

    move-result-object v25

    .line 714
    .local v25, "prevTZ":Ljava/lang/String;
    const-string/jumbo v2, "GMT"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    .line 716
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    .end local v25    # "prevTZ":Ljava/lang/String;
    .end local v27    # "timezoneChanged":Z
    .end local v30    # "timezoneType":Ljava/lang/String;
    .restart local v26    # "previousTimezone":Ljava/lang/String;
    :cond_6
    const/16 v27, 0x0

    goto :goto_1

    .line 679
    .end local v26    # "previousTimezone":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v24

    .line 680
    .local v24, "localTimezone":Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v27, 0x1

    .line 682
    .restart local v27    # "timezoneChanged":Z
    :goto_2
    if-eqz v27, :cond_3

    .line 683
    move-object/from16 p7, v24

    goto/16 :goto_1

    .line 680
    .end local v27    # "timezoneChanged":Z
    :cond_8
    const/16 v27, 0x0

    goto :goto_2

    .line 733
    .end local v24    # "localTimezone":Ljava/lang/String;
    .restart local v27    # "timezoneChanged":Z
    :cond_9
    cmp-long v2, p1, v12

    if-ltz v2, :cond_a

    cmp-long v2, p3, v16

    if-gtz v2, :cond_a

    .line 737
    sget-object v2, Lagj;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Canceled instance query ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") falls within previously expanded range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 747
    :cond_a
    cmp-long v2, p1, v12

    if-gez v2, :cond_b

    .line 748
    move-object/from16 v0, p0

    iget-object v9, v0, Lagj;->c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    move-wide v10, v4

    move-object/from16 v14, p7

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLjava/lang/String;)V

    .line 750
    move-wide v12, v4

    .line 755
    :cond_b
    cmp-long v2, p3, v16

    if-lez v2, :cond_c

    .line 756
    move-object/from16 v0, p0

    iget-object v15, v0, Lagj;->c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    move-wide/from16 v18, v6

    move-object/from16 v20, p7

    invoke-virtual/range {v15 .. v20}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLjava/lang/String;)V

    .line 758
    move-wide/from16 v16, v6

    .line 762
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lagj;->e:Lagl;

    move-object/from16 v11, p7

    move-wide/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Lagl;->a(Ljava/lang/String;JJ)V

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "removeAlarms"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(Z)V

    .line 282
    return-void
.end method

.method public final a(ZZ)V
    .locals 3
    .param p1, "removeAlarms"    # Z
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 285
    iget-object v0, p0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(ZZ)V

    .line 286
    return-void
.end method

.method public final b(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v2, "EventsRawTimes"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 236
    :goto_0
    return-wide v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b()Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    .line 209
    :cond_0
    iget-object v0, p0, Lagj;->f:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v2, "Instances"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 245
    :goto_0
    return-wide v2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v2, "Instances"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 254
    :goto_0
    return-wide v2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v2, "Attendees"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 263
    :goto_0
    return-wide v2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v2, "Reminders"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 272
    :goto_0
    return-wide v2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
