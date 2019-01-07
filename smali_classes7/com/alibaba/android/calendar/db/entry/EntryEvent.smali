.class public Lcom/alibaba/android/calendar/db/entry/EntryEvent;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryEvent.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_event_v3"
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final DROP_OLD_CALENDAR_TABLE_SQL:Ljava/lang/String; = "drop table tb_calendar"

.field public static final DROP_OLD_EVENT_TABLE_SQL:Ljava/lang/String; = "drop table tb_event"

.field public static final DROP_OLD_EVENT_TABLE_SQL_V2:Ljava/lang/String; = "drop table tb_event_v2"

.field private static final NAME_ALARM_LIST:Ljava/lang/String; = "n_alarm_list"

.field private static final NAME_ALL_DAY:Ljava/lang/String; = "event_all_day"

.field private static final NAME_BIZ_ID:Ljava/lang/String; = "biz_id"

.field private static final NAME_BIZ_TYPE:Ljava/lang/String; = "biz_type"

.field public static final NAME_CALENDAR_ID:Ljava/lang/String; = "calendar_id"

.field private static final NAME_COMMENT:Ljava/lang/String; = "n_comment"

.field private static final NAME_DT_END:Ljava/lang/String; = "dt_end"

.field private static final NAME_DT_START:Ljava/lang/String; = "dt_start"

.field private static final NAME_DURATION:Ljava/lang/String; = "event_duration"

.field private static final NAME_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final NAME_EXDATE:Ljava/lang/String; = "exDate"

.field private static final NAME_EXRULE:Ljava/lang/String; = "exrule"

.field private static final NAME_EXTENSION:Ljava/lang/String; = "c_extension"

.field public static final NAME_FOLDER_ID:Ljava/lang/String; = "c_folder_id"

.field public static final NAME_HAS_EXPAND:Ljava/lang/String; = "has_expand"

.field private static final NAME_ICON:Ljava/lang/String; = "icon"

.field public static final NAME_IS_DELETED:Ljava/lang/String; = "c_is_deleted"

.field private static final NAME_IS_MAIN_EVENT:Ljava/lang/String; = "is_main"

.field private static final NAME_LOCATION:Ljava/lang/String; = "location"

.field private static final NAME_OWNER_UID:Ljava/lang/String; = "c_owner_id"

.field private static final NAME_RDATE:Ljava/lang/String; = "rdate"

.field private static final NAME_RECURRENCE_ID:Ljava/lang/String; = "n_recurrence_id"

.field private static final NAME_ROLE:Ljava/lang/String; = "c_role"

.field private static final NAME_RRULE:Ljava/lang/String; = "rrule"

.field private static final NAME_SELF_STATUS:Ljava/lang/String; = "c_self_status"

.field private static final NAME_SENDER_ID:Ljava/lang/String; = "sender_id"

.field private static final NAME_SOURCE:Ljava/lang/String; = "source"

.field private static final NAME_START_TIMEZONE:Ljava/lang/String; = "start_timezone"

.field private static final NAME_STATUS:Ljava/lang/String; = "c_status"

.field private static final NAME_SUBJECT:Ljava/lang/String; = "subject"

.field private static final NAME_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final NAME_SUBTITLE_TEMP_DATA:Ljava/lang/String; = "subtitle_temp_data"

.field private static final NAME_SUBTITLE_TEMP_ID:Ljava/lang/String; = "subtitle_temp_id"

.field private static final NAME_TYPE_VERSION:Ljava/lang/String; = "type_version"

.field private static final NAME_UNIQUE_ID:Ljava/lang/String; = "n_unique_id"

.field private static final NAME_URL:Ljava/lang/String; = "url"

.field private static final NAME_VERSION:Ljava/lang/String; = "c_version"

.field public static final OLD_CALENDAR_TABLE_IF_EXISTS_SQL:Ljava/lang/String; = "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_calendar\'"

.field public static final OLD_EVENT_TABLE_IF_EXISTS_SQL:Ljava/lang/String; = "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_event\'"

.field public static final OLD_EVENT_TABLE_IF_EXISTS_SQL_V2:Ljava/lang/String; = "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_event_v2\'"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_event_v3"


# instance fields
.field public mAlarmListStr:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "n_alarm_list"
        sort = 0x24
    .end annotation
.end field

.field public mAllDay:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "event_all_day"
        sort = 0x13
    .end annotation
.end field

.field public mBizId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "biz_id"
        sort = 0x9
    .end annotation
.end field

.field public mBizType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "biz_type"
        sort = 0x8
    .end annotation
.end field

.field public mCalendarId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbevent_calendarid"
        name = "calendar_id"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public mComment:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "n_comment"
        sort = 0x25
    .end annotation
.end field

.field public mDtEnd:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbevent_end"
        name = "dt_end"
        sort = 0x15
    .end annotation
.end field

.field public mDtStart:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbevent_start"
        name = "dt_start"
        sort = 0x14
    .end annotation
.end field

.field public mDuration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "event_duration"
        sort = 0x17
    .end annotation
.end field

.field public mEventId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbevent_eventid"
        name = "event_id"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field public mExDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "exDate"
        sort = 0x1b
    .end annotation
.end field

.field public mExRule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "exrule"
        sort = 0x1a
    .end annotation
.end field

.field public mExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_extension"
        sort = 0x11
    .end annotation
.end field

.field public mFolderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbevent_folderid"
        name = "c_folder_id"
        nullable = false
        sort = 0x1
    .end annotation
.end field

.field public mHasExpand:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "has_expand"
        sort = 0xa
    .end annotation
.end field

.field public mIcon:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "icon"
        sort = 0x1d
    .end annotation
.end field

.field public mIsDeleted:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_is_deleted"
        sort = 0xf
    .end annotation
.end field

.field public mIsMainEvent:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "is_main"
        sort = 0x23
    .end annotation
.end field

.field public mLocation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "location"
        sort = 0x1c
    .end annotation
.end field

.field public mOwnerId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_owner_id"
        sort = 0x12
    .end annotation
.end field

.field public mRDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "rdate"
        sort = 0x19
    .end annotation
.end field

.field public mRRule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "rrule"
        sort = 0x18
    .end annotation
.end field

.field public mRecurrenceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "n_recurrence_id"
        sort = 0x5
    .end annotation
.end field

.field public mRole:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_role"
        sort = 0xe
    .end annotation
.end field

.field public mSelfStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_self_status"
        sort = 0xd
    .end annotation
.end field

.field public mSenderId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "sender_id"
        sort = 0xb
    .end annotation
.end field

.field public mSource:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "source"
        sort = 0x7
    .end annotation
.end field

.field public mStartTimezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "start_timezone"
        sort = 0x16
    .end annotation
.end field

.field public mStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_status"
        sort = 0xc
    .end annotation
.end field

.field public mSubTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "subtitle"
        sort = 0x20
    .end annotation
.end field

.field public mSubTitleTempData:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "subtitle_temp_data"
        sort = 0x22
    .end annotation
.end field

.field public mSubTitleTempId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "subtitle_temp_id"
        sort = 0x21
    .end annotation
.end field

.field public mSubject:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "subject"
        sort = 0x1f
    .end annotation
.end field

.field public mTypeVersion:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "type_version"
        sort = 0x6
    .end annotation
.end field

.field public mUniqueId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbevent_uniqueid"
        name = "n_unique_id"
        sort = 0x2
    .end annotation
.end field

.field public mUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "url"
        sort = 0x1e
    .end annotation
.end field

.field public mVersion:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_version"
        sort = 0x10
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "c_folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "n_unique_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "n_recurrence_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "type_version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "biz_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "biz_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "has_expand"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sender_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c_status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "c_self_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "c_role"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "c_is_deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "c_version"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "c_extension"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "c_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "event_all_day"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "dt_start"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "dt_end"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "start_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "event_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "exDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "subtitle"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "subtitle_temp_id"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "subtitle_temp_data"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "is_main"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "n_alarm_list"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "n_comment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromEventObject(Lasc;Lary;)Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    .locals 4
    .param p0, "calendarObject"    # Lasc;
    .param p1, "calendarEventObject"    # Lary;

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 318
    :goto_0
    return-object v1

    .line 270
    :cond_0
    new-instance v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    invoke-direct {v1}, Lcom/alibaba/android/calendar/db/entry/EntryEvent;-><init>()V

    .line 1188
    .local v1, "entryEvent":Lcom/alibaba/android/calendar/db/entry/EntryEvent;
    iget-object v2, p0, Lasc;->n:Ljava/lang/String;

    .line 272
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mFolderId:Ljava/lang/String;

    .line 2097
    iget-object v2, p1, Lary;->i:Ljava/lang/String;

    .line 273
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mUniqueId:Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Lasc;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mCalendarId:J

    .line 275
    invoke-virtual {p1}, Lary;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mEventId:J

    .line 2105
    iget-object v2, p1, Lary;->j:Ljava/lang/String;

    .line 276
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRecurrenceId:Ljava/lang/String;

    .line 3057
    iget v2, p0, Lasc;->a:I

    .line 277
    iput v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mTypeVersion:I

    .line 3061
    iget v2, p0, Lasc;->b:I

    .line 278
    iput v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSource:I

    .line 3065
    iget v2, p0, Lasc;->c:I

    .line 279
    iput v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mBizType:I

    .line 3069
    iget-object v2, p0, Lasc;->d:Ljava/lang/String;

    .line 280
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mBizId:Ljava/lang/String;

    .line 281
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mHasExpand:Z

    .line 3129
    iget-wide v2, p0, Lasc;->h:J

    .line 282
    iput-wide v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSenderId:J

    .line 4113
    iget v2, p0, Lasc;->i:I

    .line 283
    iput v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mStatus:I

    .line 4121
    iget v2, p0, Lasc;->j:I

    .line 284
    iput v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSelfStatus:I

    .line 4137
    iget v2, p0, Lasc;->k:I

    .line 285
    iput v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRole:I

    .line 4155
    iget-boolean v2, p0, Lasc;->l:Z

    .line 286
    iput-boolean v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mIsDeleted:Z

    .line 5077
    iget-wide v2, p0, Lasc;->f:J

    .line 287
    iput-wide v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mVersion:J

    .line 5180
    iget-object v2, p0, Lasc;->m:Ljava/util/Map;

    .line 289
    if-eqz v2, :cond_1

    .line 291
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 6180
    iget-object v3, p0, Lasc;->m:Ljava/util/Map;

    .line 291
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mExtension:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6196
    :cond_1
    :goto_1
    iget-wide v2, p0, Lasc;->o:J

    .line 297
    iput-wide v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mOwnerId:J

    .line 298
    invoke-virtual {p1}, Lary;->d()Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mAllDay:Z

    .line 299
    invoke-virtual {p1}, Lary;->e()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mDtStart:J

    .line 300
    invoke-virtual {p1}, Lary;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mDtEnd:J

    .line 301
    invoke-virtual {p1}, Lary;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mStartTimezone:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Lary;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mDuration:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Lary;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRRule:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Lary;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRDate:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Lary;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mExRule:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Lary;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mExDate:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Lary;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mLocation:Ljava/lang/String;

    .line 7044
    iget-object v2, p1, Lary;->a:Ljava/lang/String;

    .line 308
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mIcon:Ljava/lang/String;

    .line 7048
    iget-object v2, p1, Lary;->b:Ljava/lang/String;

    .line 309
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mUrl:Ljava/lang/String;

    .line 7052
    iget-object v2, p1, Lary;->c:Ljava/lang/String;

    .line 310
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubject:Ljava/lang/String;

    .line 7060
    iget-object v2, p1, Lary;->d:Ljava/lang/String;

    .line 311
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubTitle:Ljava/lang/String;

    .line 7064
    iget-object v2, p1, Lary;->e:Ljava/lang/String;

    .line 312
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubTitleTempId:Ljava/lang/String;

    .line 7068
    iget-object v2, p1, Lary;->f:Ljava/util/List;

    .line 313
    invoke-static {v2}, Lcob;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSubTitleTempData:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Lary;->n()Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mIsMainEvent:Z

    .line 7081
    iget-object v2, p1, Lary;->g:Ljava/util/List;

    .line 315
    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mAlarmListStr:Ljava/lang/String;

    .line 7089
    iget-object v2, p1, Lary;->h:Ljava/lang/String;

    .line 316
    iput-object v2, v1, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mComment:Ljava/lang/String;

    goto/16 :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "[entryEvent]extension parse failed"

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
