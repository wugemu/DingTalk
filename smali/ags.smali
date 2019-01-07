.class public final Lags;
.super Ljava/lang/Object;
.source "SysCalendarConstants.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const-string/jumbo v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lags;->a:Landroid/net/Uri;

    .line 38
    const-string/jumbo v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lags;->b:Landroid/net/Uri;

    .line 43
    const-string/jumbo v0, "content://com.android.calendar/instances/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lags;->c:Landroid/net/Uri;

    .line 48
    const-string/jumbo v0, "content://com.android.calendar/reminders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lags;->d:Landroid/net/Uri;

    .line 53
    const-string/jumbo v0, "content://com.android.calendar/attendees"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lags;->e:Landroid/net/Uri;

    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "eventLocation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "allDay"

    aput-object v1, v0, v5

    const-string/jumbo v1, "eventTimezone"

    aput-object v1, v0, v6

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "allDay=1 OR (end-begin)>=86400000 AS dispAllday"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "ownerAccount"

    aput-object v2, v0, v1

    sput-object v0, Lags;->f:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "eventLocation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "allDay"

    aput-object v1, v0, v5

    const-string/jumbo v1, "eventTimezone"

    aput-object v1, v0, v6

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "allDay=1 OR (end-begin)>=86400000 AS dispAllday"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "original_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "dtstart"

    aput-object v2, v0, v1

    sput-object v0, Lags;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
