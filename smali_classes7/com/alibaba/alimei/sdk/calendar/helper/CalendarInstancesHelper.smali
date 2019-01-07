.class public final Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;
.super Ljava/lang/Object;
.source "CalendarInstancesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;,
        Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private a:Lagj;

.field private b:Lcom/alibaba/alimei/orm/IDatabase;

.field private c:Lagl;

.field private d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lagj;Lagl;)V
    .locals 2
    .param p1, "calendarDbHelper"    # Lagj;
    .param p2, "metaData"    # Lagl;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a:Lagj;

    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a:Lagj;

    .line 1218
    iget-object v0, v0, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 142
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 143
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->c:Lagl;

    .line 144
    new-instance v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->b:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;-><init>(Lcom/alibaba/alimei/orm/IDatabase;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    .line 145
    return-void
.end method

.method private static a(Lcom/alibaba/alimei/orm/IDatabase;JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "rowId"    # J
    .param p3, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SELECT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " FROM Events"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " WHERE _id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {p0, v2, v4}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 162
    if-nez v0, :cond_1

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v3

    .line 165
    :cond_1
    :try_start_1
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "syncId"    # Ljava/lang/String;
    .param p1, "calendarId"    # J

    .prologue
    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "begin"    # J
    .param p2, "end"    # J
    .param p4, "local"    # Landroid/text/format/Time;
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 932
    invoke-virtual {p4, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 933
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 934
    .local v2, "startDay":I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v3, v4, v5

    .line 936
    .local v3, "startMinute":I
    invoke-virtual {p4, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 937
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 938
    .local v0, "endDay":I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v1, v4, v5

    .line 944
    .local v1, "endMinute":I
    if-nez v1, :cond_0

    if-le v0, v2, :cond_0

    .line 945
    const/16 v1, 0x5a0

    .line 946
    add-int/lit8 v0, v0, -0x1

    .line 949
    :cond_0
    const-string/jumbo v4, "startDay"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    const-string/jumbo v4, "endDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    const-string/jumbo v4, "startMinute"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    const-string/jumbo v4, "endMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 953
    return-void
.end method

.method private declared-synchronized a(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 73
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "localTimezone"    # Ljava/lang/String;
    .param p6, "entries"    # Landroid/database/Cursor;

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    new-instance v5, Lagh;

    invoke-direct {v5}, Lagh;-><init>()V

    .line 193
    .local v5, "rp":Lagh;
    const-string/jumbo v12, "eventStatus"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v67

    .line 194
    .local v67, "statusColumn":I
    const-string/jumbo v12, "dtstart"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 195
    .local v30, "dtstartColumn":I
    const-string/jumbo v12, "dtend"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 196
    .local v29, "dtendColumn":I
    const-string/jumbo v12, "eventTimezone"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 197
    .local v41, "eventTimezoneColumn":I
    const-string/jumbo v12, "duration"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 198
    .local v32, "durationColumn":I
    const-string/jumbo v12, "rrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v63

    .line 199
    .local v63, "rruleColumn":I
    const-string/jumbo v12, "rdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    .line 200
    .local v61, "rdateColumn":I
    const-string/jumbo v12, "exrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 201
    .local v44, "exruleColumn":I
    const-string/jumbo v12, "exdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 202
    .local v42, "exdateColumn":I
    const-string/jumbo v12, "allDay"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 203
    .local v20, "allDayColumn":I
    const-string/jumbo v12, "_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .line 204
    .local v47, "idColumn":I
    const-string/jumbo v12, "_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v69

    .line 205
    .local v69, "syncIdColumn":I
    const-string/jumbo v12, "original_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 206
    .local v52, "originalEventColumn":I
    const-string/jumbo v12, "originalInstanceTime"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v54

    .line 207
    .local v54, "originalInstanceTimeColumn":I
    const-string/jumbo v12, "calendar_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 208
    .local v21, "calendarIdColumn":I
    const-string/jumbo v12, "deleted"

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 211
    .local v28, "deletedColumn":I
    new-instance v48, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;

    invoke-direct/range {v48 .. v48}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;-><init>()V

    .line 213
    .local v48, "instancesMap":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;
    new-instance v31, Lagg;

    invoke-direct/range {v31 .. v31}, Lagg;-><init>()V

    .line 214
    .local v31, "duration":Lagg;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 229
    .local v6, "eventTime":Landroid/text/format/Time;
    :cond_0
    :goto_0
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_17

    .line 233
    :try_start_1
    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    .line 235
    .local v4, "allDay":Z
    :goto_1
    move-object/from16 v0, p6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 236
    .local v40, "eventTimezone":Ljava/lang/String;
    if-nez v4, :cond_1

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 240
    :cond_1
    const-string/jumbo v40, "UTC"

    .line 243
    :cond_2
    move-object/from16 v0, p6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 244
    .local v14, "dtstartMillis":J
    move-object/from16 v0, p6

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 246
    .local v39, "eventId":Ljava/lang/Long;
    move-object/from16 v0, p6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v33

    .line 247
    .local v33, "durationStr":Ljava/lang/String;
    if-eqz v33, :cond_3

    .line 249
    :try_start_2
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lagg;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :cond_3
    :goto_2
    :try_start_3
    move-object/from16 v0, p6

    move/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 267
    .local v68, "syncId":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 269
    .local v51, "originalEvent":Ljava/lang/String;
    const-wide/16 v56, -0x1

    .line 270
    .local v56, "originalInstanceTimeMillis":J
    move-object/from16 v0, p6

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 271
    move-object/from16 v0, p6

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 273
    :cond_4
    move-object/from16 v0, p6

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 274
    .local v66, "status":I
    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_7

    const/16 v27, 0x1

    .line 276
    .local v27, "deleted":Z
    :goto_3
    move-object/from16 v0, p6

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 277
    .local v64, "rruleStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 278
    .local v62, "rdateStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 279
    .local v45, "exruleStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 280
    .local v43, "exdateStr":Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 282
    .local v24, "calendarId":J
    move-object/from16 v0, v68

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_3
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v70

    .line 286
    .local v70, "syncIdKey":Ljava/lang/String;
    :try_start_4
    new-instance v7, Lagi;

    move-object/from16 v0, v64

    move-object/from16 v1, v62

    move-object/from16 v2, v45

    move-object/from16 v3, v43

    invoke-direct {v7, v0, v1, v2, v3}, Lagi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    .local v7, "recur":Lagi;
    if-eqz v7, :cond_f

    :try_start_5
    invoke-virtual {v7}, Lagi;->a()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 298
    const/4 v12, 0x2

    move/from16 v0, v66

    if-ne v0, v12, :cond_8

    .line 300
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 301
    const-string/jumbo v12, "CalInstances"

    const-string/jumbo v16, "Found canceled recurring event in Events table.  Ignoring."

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 440
    .end local v4    # "allDay":Z
    .end local v7    # "recur":Lagi;
    .end local v14    # "dtstartMillis":J
    .end local v24    # "calendarId":J
    .end local v27    # "deleted":Z
    .end local v33    # "durationStr":Ljava/lang/String;
    .end local v39    # "eventId":Ljava/lang/Long;
    .end local v40    # "eventTimezone":Ljava/lang/String;
    .end local v43    # "exdateStr":Ljava/lang/String;
    .end local v45    # "exruleStr":Ljava/lang/String;
    .end local v51    # "originalEvent":Ljava/lang/String;
    .end local v56    # "originalInstanceTimeMillis":J
    .end local v62    # "rdateStr":Ljava/lang/String;
    .end local v64    # "rruleStr":Ljava/lang/String;
    .end local v66    # "status":I
    .end local v68    # "syncId":Ljava/lang/String;
    .end local v70    # "syncIdKey":Ljava/lang/String;
    :catch_0
    move-exception v36

    .line 441
    .local v36, "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    :try_start_6
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 442
    const-string/jumbo v12, "CalInstances"

    const-string/jumbo v16, "RecurrenceProcessor error "

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v12, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 187
    .end local v5    # "rp":Lagh;
    .end local v6    # "eventTime":Landroid/text/format/Time;
    .end local v20    # "allDayColumn":I
    .end local v21    # "calendarIdColumn":I
    .end local v28    # "deletedColumn":I
    .end local v29    # "dtendColumn":I
    .end local v30    # "dtstartColumn":I
    .end local v31    # "duration":Lagg;
    .end local v32    # "durationColumn":I
    .end local v36    # "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    .end local v41    # "eventTimezoneColumn":I
    .end local v42    # "exdateColumn":I
    .end local v44    # "exruleColumn":I
    .end local v47    # "idColumn":I
    .end local v48    # "instancesMap":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;
    .end local v52    # "originalEventColumn":I
    .end local v54    # "originalInstanceTimeColumn":I
    .end local v61    # "rdateColumn":I
    .end local v63    # "rruleColumn":I
    .end local v67    # "statusColumn":I
    .end local v69    # "syncIdColumn":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 233
    .restart local v5    # "rp":Lagh;
    .restart local v6    # "eventTime":Landroid/text/format/Time;
    .restart local v20    # "allDayColumn":I
    .restart local v21    # "calendarIdColumn":I
    .restart local v28    # "deletedColumn":I
    .restart local v29    # "dtendColumn":I
    .restart local v30    # "dtstartColumn":I
    .restart local v31    # "duration":Lagg;
    .restart local v32    # "durationColumn":I
    .restart local v41    # "eventTimezoneColumn":I
    .restart local v42    # "exdateColumn":I
    .restart local v44    # "exruleColumn":I
    .restart local v47    # "idColumn":I
    .restart local v48    # "instancesMap":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;
    .restart local v52    # "originalEventColumn":I
    .restart local v54    # "originalInstanceTimeColumn":I
    .restart local v61    # "rdateColumn":I
    .restart local v63    # "rruleColumn":I
    .restart local v67    # "statusColumn":I
    .restart local v69    # "syncIdColumn":I
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 251
    .restart local v4    # "allDay":Z
    .restart local v14    # "dtstartMillis":J
    .restart local v33    # "durationStr":Ljava/lang/String;
    .restart local v39    # "eventId":Ljava/lang/Long;
    .restart local v40    # "eventTimezone":Ljava/lang/String;
    :catch_1
    move-exception v36

    .line 252
    .restart local v36    # "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    :try_start_7
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 253
    const-string/jumbo v12, "CalInstances"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "error parsing duration for event "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v12, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :cond_6
    const/4 v12, 0x1

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->a:I

    .line 257
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->b:I

    .line 258
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->c:I

    .line 259
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->d:I

    .line 260
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->e:I

    .line 261
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->f:I

    .line 262
    const-string/jumbo v33, "+P0S"

    goto/16 :goto_2

    .line 274
    .end local v36    # "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    .restart local v51    # "originalEvent":Ljava/lang/String;
    .restart local v56    # "originalInstanceTimeMillis":J
    .restart local v66    # "status":I
    .restart local v68    # "syncId":Ljava/lang/String;
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 287
    .restart local v24    # "calendarId":J
    .restart local v27    # "deleted":Z
    .restart local v43    # "exdateStr":Ljava/lang/String;
    .restart local v45    # "exruleStr":Ljava/lang/String;
    .restart local v62    # "rdateStr":Ljava/lang/String;
    .restart local v64    # "rruleStr":Ljava/lang/String;
    .restart local v70    # "syncIdKey":Ljava/lang/String;
    :catch_2
    move-exception v36

    .line 288
    .local v36, "e":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 289
    const-string/jumbo v12, "CalInstances"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Could not parse RRULE recurrence string: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v12, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 444
    .end local v4    # "allDay":Z
    .end local v14    # "dtstartMillis":J
    .end local v24    # "calendarId":J
    .end local v27    # "deleted":Z
    .end local v33    # "durationStr":Ljava/lang/String;
    .end local v36    # "e":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
    .end local v39    # "eventId":Ljava/lang/Long;
    .end local v40    # "eventTimezone":Ljava/lang/String;
    .end local v43    # "exdateStr":Ljava/lang/String;
    .end local v45    # "exruleStr":Ljava/lang/String;
    .end local v51    # "originalEvent":Ljava/lang/String;
    .end local v56    # "originalInstanceTimeMillis":J
    .end local v62    # "rdateStr":Ljava/lang/String;
    .end local v64    # "rruleStr":Ljava/lang/String;
    .end local v66    # "status":I
    .end local v68    # "syncId":Ljava/lang/String;
    .end local v70    # "syncIdKey":Ljava/lang/String;
    :catch_3
    move-exception v36

    .line 445
    .local v36, "e":Landroid/util/TimeFormatException;
    :try_start_8
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 446
    const-string/jumbo v12, "CalInstances"

    const-string/jumbo v16, "RecurrenceProcessor error "

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-static {v12, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 306
    .end local v36    # "e":Landroid/util/TimeFormatException;
    .restart local v4    # "allDay":Z
    .restart local v7    # "recur":Lagi;
    .restart local v14    # "dtstartMillis":J
    .restart local v24    # "calendarId":J
    .restart local v27    # "deleted":Z
    .restart local v33    # "durationStr":Ljava/lang/String;
    .restart local v39    # "eventId":Ljava/lang/Long;
    .restart local v40    # "eventTimezone":Ljava/lang/String;
    .restart local v43    # "exdateStr":Ljava/lang/String;
    .restart local v45    # "exruleStr":Ljava/lang/String;
    .restart local v51    # "originalEvent":Ljava/lang/String;
    .restart local v56    # "originalInstanceTimeMillis":J
    .restart local v62    # "rdateStr":Ljava/lang/String;
    .restart local v64    # "rruleStr":Ljava/lang/String;
    .restart local v66    # "status":I
    .restart local v68    # "syncId":Ljava/lang/String;
    .restart local v70    # "syncIdKey":Ljava/lang/String;
    :cond_8
    if-eqz v27, :cond_9

    .line 307
    :try_start_9
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 315
    :cond_9
    move-object/from16 v0, v40

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 316
    invoke-virtual {v6, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 317
    iput-boolean v4, v6, Landroid/text/format/Time;->allDay:Z

    .line 319
    if-nez v33, :cond_c

    .line 321
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 322
    const-string/jumbo v12, "CalInstances"

    const-string/jumbo v16, "Repeating event has no duration -- should not happen."

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_a
    if-eqz v4, :cond_d

    .line 327
    const/4 v12, 0x1

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->a:I

    .line 328
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->b:I

    .line 329
    const/4 v12, 0x1

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->c:I

    .line 330
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->d:I

    .line 331
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->e:I

    .line 347
    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->f:I

    :cond_c
    :goto_4
    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 354
    invoke-virtual/range {v5 .. v11}, Lagh;->a(Landroid/text/format/Time;Lagi;JJ)[J

    move-result-object v26

    .line 358
    .local v26, "dates":[J
    if-eqz v4, :cond_e

    .line 359
    const-string/jumbo v12, "UTC"

    iput-object v12, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 364
    :goto_5
    invoke-virtual/range {v31 .. v31}, Lagg;->a()J

    move-result-wide v34

    .line 365
    .local v34, "durationMillis":J
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    const/4 v12, 0x0

    move/from16 v16, v12

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-wide v8, v26, v16

    .line 366
    .local v8, "date":J
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v13, "initialValues":Landroid/content/ContentValues;
    const-string/jumbo v12, "event_id"

    move-object/from16 v0, v39

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 369
    const-string/jumbo v12, "begin"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    add-long v10, v8, v34

    .line 371
    .local v10, "dtendMillis":J
    const-string/jumbo v12, "end"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v12, v6

    .line 373
    invoke-static/range {v8 .. v13}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 375
    move-object/from16 v0, v48

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v13}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 365
    add-int/lit8 v12, v16, 0x1

    move/from16 v16, v12

    goto :goto_6

    .line 337
    .end local v8    # "date":J
    .end local v10    # "dtendMillis":J
    .end local v13    # "initialValues":Landroid/content/ContentValues;
    .end local v26    # "dates":[J
    .end local v34    # "durationMillis":J
    :cond_d
    const/4 v12, 0x1

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->a:I

    .line 338
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->b:I

    .line 339
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->c:I

    .line 340
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->d:I

    .line 341
    const/4 v12, 0x0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->e:I

    .line 342
    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_b

    .line 343
    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 344
    .restart local v10    # "dtendMillis":J
    sub-long v16, v10, v14

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v12, v0

    move-object/from16 v0, v31

    iput v12, v0, Lagg;->f:I

    .line 345
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "+P"

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget v0, v0, Lagg;->f:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v16, "S"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 361
    .end local v10    # "dtendMillis":J
    .restart local v26    # "dates":[J
    :cond_e
    move-object/from16 v0, p5

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_5

    .line 379
    .end local v26    # "dates":[J
    :cond_f
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .restart local v13    # "initialValues":Landroid/content/ContentValues;
    if-eqz v51, :cond_10

    const-wide/16 v16, -0x1

    cmp-long v12, v56, v16

    if-eqz v12, :cond_10

    .line 389
    const-string/jumbo v12, "ORIGINAL_EVENT_AND_CALENDAR"

    .line 390
    move-object/from16 v0, v51

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v16

    .line 389
    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v12, "originalInstanceTime"

    .line 392
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 391
    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string/jumbo v12, "eventStatus"

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    :cond_10
    move-wide v10, v14

    .line 397
    .restart local v10    # "dtendMillis":J
    if-nez v33, :cond_14

    .line 398
    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_11

    .line 399
    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 410
    :cond_11
    :goto_7
    cmp-long v12, v10, p1

    if-ltz v12, :cond_12

    cmp-long v12, v14, p3

    if-lez v12, :cond_13

    .line 411
    :cond_12
    if-eqz v51, :cond_15

    const-wide/16 v16, -0x1

    cmp-long v12, v56, v16

    if-eqz v12, :cond_15

    .line 412
    const-string/jumbo v12, "eventStatus"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    :cond_13
    const-string/jumbo v12, "event_id"

    move-object/from16 v0, v39

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    const-string/jumbo v12, "begin"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    const-string/jumbo v12, "end"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    const-string/jumbo v12, "deleted"

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 430
    if-eqz v4, :cond_16

    .line 431
    const-string/jumbo v12, "UTC"

    iput-object v12, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_8
    move-wide/from16 v16, v10

    move-object/from16 v18, v6

    move-object/from16 v19, v13

    .line 435
    invoke-static/range {v14 .. v19}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 438
    move-object/from16 v0, v48

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v13}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2139
    :cond_14
    invoke-virtual/range {v31 .. v31}, Lagg;->a()J

    move-result-wide v16

    add-long v10, v14, v16

    .line 402
    goto :goto_7

    .line 414
    :cond_15
    const-string/jumbo v12, "CalInstances"

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 415
    const-string/jumbo v12, "CalInstances"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Unexpected event outside window: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 433
    :cond_16
    move-object/from16 v0, p5

    iput-object v0, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_9
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 473
    .end local v4    # "allDay":Z
    .end local v7    # "recur":Lagi;
    .end local v10    # "dtendMillis":J
    .end local v13    # "initialValues":Landroid/content/ContentValues;
    .end local v14    # "dtstartMillis":J
    .end local v24    # "calendarId":J
    .end local v27    # "deleted":Z
    .end local v33    # "durationStr":Ljava/lang/String;
    .end local v39    # "eventId":Ljava/lang/Long;
    .end local v40    # "eventTimezone":Ljava/lang/String;
    .end local v43    # "exdateStr":Ljava/lang/String;
    .end local v45    # "exruleStr":Ljava/lang/String;
    .end local v51    # "originalEvent":Ljava/lang/String;
    .end local v56    # "originalInstanceTimeMillis":J
    .end local v62    # "rdateStr":Ljava/lang/String;
    .end local v64    # "rruleStr":Ljava/lang/String;
    .end local v66    # "status":I
    .end local v68    # "syncId":Ljava/lang/String;
    .end local v70    # "syncIdKey":Ljava/lang/String;
    :cond_17
    :try_start_a
    invoke-virtual/range {v48 .. v48}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;->entrySet()Ljava/util/Set;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v38

    .line 475
    .local v38, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;>;>;"
    :try_start_b
    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .line 476
    .local v37, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;>;"
    if-eqz v37, :cond_18

    .line 479
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;

    .line 480
    .local v49, "list":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    if-eqz v49, :cond_18

    invoke-virtual/range {v49 .. v49}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_18

    .line 484
    const/16 v46, 0x0

    .local v46, "i":I
    :goto_9
    invoke-virtual/range {v49 .. v49}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->size()I

    move-result v16

    move/from16 v0, v46

    move/from16 v1, v16

    if-ge v0, v1, :cond_18

    .line 485
    move-object/from16 v0, v49

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/ContentValues;

    .line 489
    .local v72, "values":Landroid/content/ContentValues;
    if-eqz v72, :cond_1a

    const-string/jumbo v16, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 493
    const-string/jumbo v16, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 494
    .local v53, "originalEventPlusCalendar":Ljava/lang/String;
    const-string/jumbo v16, "originalInstanceTime"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    .line 496
    .local v58, "originalTime":J
    move-object/from16 v0, v48

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;

    .line 497
    .local v55, "originalList":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    if-eqz v55, :cond_1a

    .line 501
    const-string/jumbo v16, "CalInstances"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "originalEventPlusCalendar = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", originalList size = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v55 .. v55}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual/range {v55 .. v55}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->size()I

    move-result v16

    add-int/lit8 v50, v16, -0x1

    .local v50, "num":I
    :goto_a
    if-ltz v50, :cond_1a

    .line 509
    move-object/from16 v0, v55

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    .line 510
    .local v60, "originalValues":Landroid/content/ContentValues;
    const-string/jumbo v16, "begin"

    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 511
    .local v22, "beginTime":J
    cmp-long v16, v22, v58

    if-nez v16, :cond_19

    .line 513
    move-object/from16 v0, v55

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 508
    :cond_19
    add-int/lit8 v50, v50, -0x1

    goto :goto_a

    .line 484
    .end local v22    # "beginTime":J
    .end local v50    # "num":I
    .end local v53    # "originalEventPlusCalendar":Ljava/lang/String;
    .end local v55    # "originalList":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    .end local v58    # "originalTime":J
    .end local v60    # "originalValues":Landroid/content/ContentValues;
    :cond_1a
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_9

    .line 518
    .end local v37    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;>;"
    .end local v46    # "i":I
    .end local v49    # "list":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    .end local v72    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v71

    .line 519
    .local v71, "tr":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 520
    const-string/jumbo v12, "CalInstances"

    const-string/jumbo v16, "expand calendar exception"

    move-object/from16 v0, v16

    move-object/from16 v1, v71

    invoke-static {v12, v0, v1}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 540
    .end local v71    # "tr":Ljava/lang/Throwable;
    :cond_1b
    :try_start_d
    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .line 541
    .restart local v37    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;>;"
    if-eqz v37, :cond_1c

    .line 544
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;

    .line 545
    .restart local v49    # "list":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    if-eqz v49, :cond_1c

    invoke-virtual/range {v49 .. v49}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1c

    .line 548
    invoke-virtual/range {v49 .. v49}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->size()I

    move-result v65

    .line 549
    .local v65, "size":I
    const/16 v46, 0x0

    .restart local v46    # "i":I
    :goto_b
    move/from16 v0, v46

    move/from16 v1, v65

    if-ge v0, v1, :cond_1c

    .line 550
    move-object/from16 v0, v49

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/ContentValues;

    .line 553
    .restart local v72    # "values":Landroid/content/ContentValues;
    const-string/jumbo v16, "eventStatus"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v66

    .line 554
    .local v66, "status":Ljava/lang/Integer;
    const-string/jumbo v16, "deleted"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1f

    const-string/jumbo v16, "deleted"

    .line 555
    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    .line 556
    .restart local v27    # "deleted":Z
    :goto_c
    if-eqz v66, :cond_1d

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1e

    :cond_1d
    if-nez v27, :cond_1e

    .line 561
    const-string/jumbo v16, "deleted"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 564
    const-string/jumbo v16, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 565
    const-string/jumbo v16, "originalInstanceTime"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 566
    const-string/jumbo v16, "eventStatus"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a:Lagj;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lagj;->d(Landroid/content/ContentValues;)J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 549
    :cond_1e
    add-int/lit8 v46, v46, 0x1

    goto :goto_b

    .line 555
    .end local v27    # "deleted":Z
    :cond_1f
    const/16 v27, 0x0

    goto :goto_c

    .line 571
    .end local v37    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;>;"
    .end local v46    # "i":I
    .end local v49    # "list":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper$InstancesList;
    .end local v65    # "size":I
    .end local v66    # "status":Ljava/lang/Integer;
    .end local v72    # "values":Landroid/content/ContentValues;
    :catch_5
    move-exception v71

    .line 572
    .restart local v71    # "tr":Ljava/lang/Throwable;
    :try_start_e
    invoke-virtual/range {v71 .. v71}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 573
    const-string/jumbo v12, "expand calendar instance exception"

    move-object/from16 v0, v71

    invoke-static {v12, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 575
    .end local v71    # "tr":Ljava/lang/Throwable;
    :cond_20
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a(JJLjava/lang/String;)V
    .locals 9
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "localTimezone"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 585
    const-string/jumbo v0, "CalInstances"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Expanding events between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2610
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2611
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2629
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v2, 0x1

    aput-object v0, v4, v2

    aput-object v1, v4, v8

    const/4 v0, 0x3

    const-wide/32 v2, 0x240c8400

    sub-long v2, p1, v2

    .line 2633
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "0"

    aput-object v1, v4, v0

    .line 2638
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v1, "view_events"

    sget-object v2, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->e:[Ljava/lang/String;

    const-string/jumbo v3, "((dtstart <= ? AND (lastDate IS NULL OR lastDate >= ?)) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != ?) AND (lastSynced = ?)"

    move-object v6, v5

    move-object v7, v5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2641
    const-string/jumbo v0, "CalInstances"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Instance expansion:  got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .local v7, "entries":Landroid/database/Cursor;
    :cond_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 591
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    if-eqz v7, :cond_2

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_2
    return-void

    .line 593
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final a(Landroid/content/ContentValues;JZLcom/alibaba/alimei/orm/IDatabase;)V
    .locals 26
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "rowId"    # J
    .param p4, "newEvent"    # Z
    .param p5, "db"    # Lcom/alibaba/alimei/orm/IDatabase;

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->c:Lagl;

    invoke-virtual {v2}, Lagl;->a()Lagl$a;

    move-result-object v15

    .line 668
    .local v15, "fields":Lagl$a;
    iget-wide v2, v15, Lagl$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 3863
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const-string/jumbo v2, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 673
    .local v14, "dtstartMillis":Ljava/lang/Long;
    if-nez v14, :cond_3

    .line 674
    if-eqz p4, :cond_2

    .line 676
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "DTSTART missing."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :cond_2
    const-string/jumbo v2, "CalInstances"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_0

    .line 684
    :cond_3
    if-nez p4, :cond_4

    .line 690
    const-string/jumbo v2, "Instances"

    const-string/jumbo v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 691
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 690
    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 695
    :cond_4
    const-string/jumbo v2, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 696
    .local v22, "rrule":Ljava/lang/String;
    const-string/jumbo v2, "rdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 697
    .local v21, "rdate":Ljava/lang/String;
    const-string/jumbo v2, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 698
    .local v18, "originalId":Ljava/lang/String;
    const-string/jumbo v2, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2971
    .local v20, "originalSyncId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2972
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2973
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_5
    const/4 v2, 0x1

    .line 699
    :goto_1
    if-eqz v2, :cond_12

    .line 700
    const-string/jumbo v2, "lastDate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 701
    .local v17, "lastDateMillis":Ljava/lang/Long;
    const-string/jumbo v2, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    .line 705
    .local v19, "originalInstanceTime":Ljava/lang/Long;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v15, Lagl$a;->c:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    if-eqz v17, :cond_6

    .line 706
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v15, Lagl$a;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b

    :cond_6
    const/16 v16, 0x1

    .line 710
    .local v16, "insideWindow":Z
    :goto_2
    if-eqz v19, :cond_c

    .line 711
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v15, Lagl$a;->c:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_c

    .line 712
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v15, Lagl$a;->b:J

    const-wide/32 v8, 0x240c8400

    sub-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    const/4 v10, 0x1

    .line 717
    .local v10, "affectsWindow":Z
    :goto_3
    if-nez v16, :cond_7

    if-eqz v10, :cond_0

    .line 3790
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 3792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->c:Lagl;

    invoke-virtual {v2}, Lagl;->a()Lagl$a;

    move-result-object v23

    .line 3793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->b()Ljava/lang/String;

    move-result-object v24

    .line 3796
    const-string/jumbo v2, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3797
    if-nez v2, :cond_8

    .line 3798
    const-string/jumbo v2, "original_sync_id"

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(Lcom/alibaba/alimei/orm/IDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3802
    :cond_8
    if-eqz v2, :cond_d

    move-object v3, v2

    .line 3818
    :goto_4
    if-nez v3, :cond_f

    .line 3822
    const-string/jumbo v2, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3823
    if-nez v2, :cond_9

    .line 3825
    const-string/jumbo v2, "original_id"

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(Lcom/alibaba/alimei/orm/IDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3828
    :cond_9
    if-eqz v2, :cond_e

    .line 3838
    :goto_5
    const-string/jumbo v5, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._id=? OR Events.original_id=?)"

    .line 3839
    const-string/jumbo v8, "Instances"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v2, v9, v25

    const/16 v25, 0x1

    aput-object v2, v9, v25

    invoke-interface {v4, v8, v5, v9}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3883
    :goto_6
    if-nez v3, :cond_10

    .line 3884
    const-string/jumbo v5, "_id=?"

    .line 3885
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3886
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 3898
    :goto_7
    const-string/jumbo v2, "CalInstances"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->b:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "view_events"

    sget-object v4, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->e:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3859
    :try_start_0
    move-object/from16 v0, v23

    iget-wide v4, v0, Lagl$a;->b:J

    move-object/from16 v0, v23

    iget-wide v6, v0, Lagl$a;->c:J

    move-object/from16 v3, p0

    move-object/from16 v8, v24

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3862
    if-eqz v9, :cond_0

    .line 3863
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2973
    .end local v10    # "affectsWindow":Z
    .end local v16    # "insideWindow":Z
    .end local v17    # "lastDateMillis":Ljava/lang/Long;
    .end local v19    # "originalInstanceTime":Ljava/lang/Long;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 706
    .restart local v17    # "lastDateMillis":Ljava/lang/Long;
    .restart local v19    # "originalInstanceTime":Ljava/lang/Long;
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 712
    .restart local v16    # "insideWindow":Z
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 3809
    .restart local v10    # "affectsWindow":Z
    :cond_d
    const-string/jumbo v2, "_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3810
    if-nez v2, :cond_17

    .line 3812
    const-string/jumbo v2, "_sync_id"

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(Lcom/alibaba/alimei/orm/IDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_4

    .line 3833
    :cond_e
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 3846
    :cond_f
    const-string/jumbo v2, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._sync_id=? OR Events.original_sync_id=?)"

    .line 3847
    const-string/jumbo v5, "Instances"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-interface {v4, v5, v2, v8}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    .line 3890
    :cond_10
    const-string/jumbo v5, "(_sync_id=? OR original_sync_id=?) AND lastSynced = ?"

    .line 3892
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v6, v2

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "0"

    aput-object v3, v6, v2

    goto/16 :goto_7

    .line 3862
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_11

    .line 3863
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v2

    .line 726
    .end local v10    # "affectsWindow":Z
    .end local v16    # "insideWindow":Z
    .end local v17    # "lastDateMillis":Ljava/lang/Long;
    .end local v19    # "originalInstanceTime":Ljava/lang/Long;
    :cond_12
    const-string/jumbo v2, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    .line 727
    .local v13, "dtendMillis":Ljava/lang/Long;
    if-nez v13, :cond_13

    .line 728
    move-object v13, v14

    .line 736
    :cond_13
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v15, Lagl$a;->c:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v15, Lagl$a;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 737
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 738
    .local v7, "instanceValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 739
    const-string/jumbo v2, "begin"

    invoke-virtual {v7, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 740
    const-string/jumbo v2, "end"

    invoke-virtual {v7, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 742
    const/4 v11, 0x0

    .line 743
    .local v11, "allDay":Z
    const-string/jumbo v2, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 744
    .local v12, "allDayInteger":Ljava/lang/Integer;
    if-eqz v12, :cond_14

    .line 745
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v11, 0x1

    .line 749
    :cond_14
    :goto_8
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 750
    .local v6, "local":Landroid/text/format/Time;
    if-eqz v11, :cond_16

    .line 751
    const-string/jumbo v2, "UTC"

    iput-object v2, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 756
    :goto_9
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a:Lagj;

    invoke-virtual {v2, v7}, Lagj;->c(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 745
    .end local v6    # "local":Landroid/text/format/Time;
    :cond_15
    const/4 v11, 0x0

    goto :goto_8

    .line 753
    .restart local v6    # "local":Landroid/text/format/Time;
    :cond_16
    iget-object v2, v15, Lagl$a;->a:Ljava/lang/String;

    iput-object v2, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_9

    .end local v6    # "local":Landroid/text/format/Time;
    .end local v7    # "instanceValues":Landroid/content/ContentValues;
    .end local v11    # "allDay":Z
    .end local v12    # "allDayInteger":Ljava/lang/Integer;
    .end local v13    # "dtendMillis":Ljava/lang/Long;
    .restart local v10    # "affectsWindow":Z
    .restart local v16    # "insideWindow":Z
    .restart local v17    # "lastDateMillis":Ljava/lang/Long;
    .restart local v19    # "originalInstanceTime":Ljava/lang/Long;
    :cond_17
    move-object v3, v2

    goto/16 :goto_4
.end method
