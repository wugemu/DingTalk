.class public final Lawi;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "eventLocation"

    aput-object v1, v0, v5

    const-string/jumbo v1, "calendar_displayName"

    aput-object v1, v0, v6

    const-string/jumbo v1, "allDay"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "visible"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "calendar_color"

    aput-object v2, v0, v1

    sput-object v0, Lawi;->a:[Ljava/lang/String;

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "eventLocation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "calendar_displayName"

    aput-object v1, v0, v5

    const-string/jumbo v1, "allDay"

    aput-object v1, v0, v6

    const-string/jumbo v1, "dtstart"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "visible"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "calendar_color"

    aput-object v2, v0, v1

    sput-object v0, Lawi;->b:[Ljava/lang/String;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "calendar_color"

    aput-object v1, v0, v5

    const-string/jumbo v1, "visible"

    aput-object v1, v0, v6

    const-string/jumbo v1, "calendar_displayName"

    aput-object v1, v0, v7

    sput-object v0, Lawi;->c:[Ljava/lang/String;

    .line 116
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "minutes"

    aput-object v1, v0, v3

    sput-object v0, Lawi;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    .line 3563
    invoke-static {}, Lcof;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcof;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3564
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 3565
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laow$f;->dt_ding_calendar_system_calendar_default_name:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    .end local p1    # "x1":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method static synthetic a(J)Ljava/util/List;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 36
    invoke-static {p0, p1}, Lawi;->b(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJLcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/calendar/data/object/SystemEvent;>;>;"
    invoke-static {}, Lawi;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[querySystemEvents] have no permission to query system calendar db"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p4, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lawi$2;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lawi$2;-><init>(JJLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(JLcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p0, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 433
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-gtz v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 1477
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 2126
    invoke-static {v0}, Lbzz;->a(Landroid/content/Context;)I

    move-result v3

    .line 1478
    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.WRITE_CALENDAR"

    aput-object v4, v3, v1

    .line 1479
    invoke-static {v0, v3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 437
    :goto_1
    if-nez v0, :cond_3

    .line 438
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[deleteSystemEventById] have no permission to delete system calendar db"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p2, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1479
    goto :goto_1

    .line 443
    :cond_3
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lawi$4;

    invoke-direct {v1, p0, p1, p2}, Lawi$4;-><init>(JLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/calendar/data/object/SystemEvent;>;"
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {}, Lawi;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[querySystemEventById] have no permission to query system calendar db"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p3, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lawi$1;

    invoke-direct {v1, p1, p2, p0, p3}, Lawi$1;-><init>(JLandroid/content/Context;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lasu;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lasu;>;>;"
    if-nez p0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-static {}, Lawi;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[querySystemCalendar] have no permission to read system calendar db"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 494
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lawi$5;

    invoke-direct {v1, p0}, Lawi$5;-><init>(Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;JJLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "calendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/calendar/data/object/SystemEvent;>;>;"
    const/16 v3, 0x1f4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-static {}, Lawi;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[querySystemEvents] have no permission to query system calendar db"

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p5, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    return-void

    .line 292
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[querySystemEvents] calendarIs is null or empty."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 294
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p5, v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    invoke-interface {p0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 300
    .local v6, "finalCalendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lawi$3;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lawi$3;-><init>(JJLjava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v6    # "finalCalendarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v6, p0

    .line 298
    goto :goto_1
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 470
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 3126
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lbzz;->a(Landroid/content/Context;)I

    move-result v3

    .line 471
    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_CALENDAR"

    aput-object v4, v3, v1

    .line 472
    invoke-static {v0, v3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private static b(J)Ljava/util/List;
    .locals 8
    .param p0, "eventId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 397
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-object v3

    .line 401
    :cond_1
    invoke-static {}, Lawi;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 402
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[deleteSystemEventById] have no permission to query system calendar db"

    aput-object v5, v4, v6

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_2
    const/4 v0, 0x0

    .line 408
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lawi;->d:[Ljava/lang/String;

    invoke-static {v4, p0, p1, v5}, Landroid/provider/CalendarContract$Reminders;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 413
    :goto_1
    if-eqz v0, :cond_0

    .line 417
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v3, "reminderMinutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 421
    .local v2, "minutes":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 423
    .end local v2    # "minutes":I
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "[queryReminders] failed:"

    invoke-static {v4, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 409
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "reminderMinutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    .line 410
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[queryReminders] failed:"

    invoke-static {v4, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "reminderMinutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lawi;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lawi;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lawi;->c:[Ljava/lang/String;

    return-object v0
.end method
