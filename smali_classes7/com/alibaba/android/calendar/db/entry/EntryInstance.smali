.class public Lcom/alibaba/android/calendar/db/entry/EntryInstance;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "EntryInstance.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_instance_v2"
.end annotation


# static fields
.field public static ALL_COLUMNS:[Ljava/lang/String; = null

.field public static final DROP_TABLE_SQL:Ljava/lang/String; = "drop table tb_instance"

.field private static final NAME_CALENDAR_BIZ_ID:Ljava/lang/String; = "c_biz_id"

.field private static final NAME_CALENDAR_BIZ_TYPE:Ljava/lang/String; = "c_biz_type"

.field private static final NAME_CALENDAR_EXTENSION:Ljava/lang/String; = "c_extension"

.field private static final NAME_CALENDAR_HAS_EXPAND:Ljava/lang/String; = "c_has_expand"

.field public static final NAME_CALENDAR_ID:Ljava/lang/String; = "calendar_id"

.field public static final NAME_CALENDAR_IS_DELETED:Ljava/lang/String; = "c_is_deleted"

.field private static final NAME_CALENDAR_OWNER_UID:Ljava/lang/String; = "c_owner_id"

.field private static final NAME_CALENDAR_ROLE:Ljava/lang/String; = "c_role"

.field private static final NAME_CALENDAR_SELF_STATUS:Ljava/lang/String; = "c_self_status"

.field private static final NAME_CALENDAR_SENDER_ID:Ljava/lang/String; = "c_sender_id"

.field private static final NAME_CALENDAR_SOURCE:Ljava/lang/String; = "c_source"

.field private static final NAME_CALENDAR_STATUS:Ljava/lang/String; = "c_status"

.field private static final NAME_CALENDAR_TYPE_VERSION:Ljava/lang/String; = "c_type_version"

.field private static final NAME_CALENDAR_VERSION:Ljava/lang/String; = "c_version"

.field private static final NAME_EVENT_ALARM_LIST:Ljava/lang/String; = "e_alarm_list"

.field private static final NAME_EVENT_ALL_DAY:Ljava/lang/String; = "e_all_day"

.field private static final NAME_EVENT_COMMENT:Ljava/lang/String; = "e_comment"

.field private static final NAME_EVENT_DT_END:Ljava/lang/String; = "e_dt_end"

.field private static final NAME_EVENT_DT_START:Ljava/lang/String; = "e_dt_start"

.field private static final NAME_EVENT_DURATION:Ljava/lang/String; = "e_duration"

.field private static final NAME_EVENT_EXDATE:Ljava/lang/String; = "e_exDate"

.field private static final NAME_EVENT_EXRULE:Ljava/lang/String; = "e_exrule"

.field private static final NAME_EVENT_ICON:Ljava/lang/String; = "e_icon"

.field private static final NAME_EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final NAME_EVENT_IS_MAIN_EVENT:Ljava/lang/String; = "e_is_main"

.field private static final NAME_EVENT_LOCATION:Ljava/lang/String; = "e_location"

.field private static final NAME_EVENT_RDATE:Ljava/lang/String; = "e_rdate"

.field public static final NAME_EVENT_RECURRENCE_ID:Ljava/lang/String; = "e_recurrence_id"

.field private static final NAME_EVENT_RRULE:Ljava/lang/String; = "e_rrule"

.field private static final NAME_EVENT_START_TIMEZONE:Ljava/lang/String; = "e_start_timezone"

.field private static final NAME_EVENT_SUBJECT:Ljava/lang/String; = "e_subject"

.field private static final NAME_EVENT_SUBTITLE:Ljava/lang/String; = "e_subtitle"

.field private static final NAME_EVENT_SUBTITLE_TEMP_DATA:Ljava/lang/String; = "e_subtitle_temp_data"

.field private static final NAME_EVENT_SUBTITLE_TEMP_ID:Ljava/lang/String; = "e_subtitle_temp_id"

.field private static final NAME_EVENT_URL:Ljava/lang/String; = "e_url"

.field public static final NAME_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field public static final NAME_INSTANCE_BEGIN:Ljava/lang/String; = "i_begin"

.field public static final NAME_INSTANCE_END:Ljava/lang/String; = "i_end"

.field public static final NAME_UNIQUE_ID:Ljava/lang/String; = "unique_id"

.field public static final TABLE_IF_EXISTS_SQL:Ljava/lang/String; = "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'tb_instance\'"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_instance_v2"


# instance fields
.field private mCalendarBizId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_biz_id"
        sort = 0x8
    .end annotation
.end field

.field private mCalendarBizType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_biz_type"
        sort = 0x7
    .end annotation
.end field

.field private mCalendarExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_extension"
        sort = 0x10
    .end annotation
.end field

.field private mCalendarHasExpand:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_has_expand"
        sort = 0x9
    .end annotation
.end field

.field public mCalendarId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbinstance_calendar_id"
        name = "calendar_id"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field private mCalendarIsDeleted:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_is_deleted"
        sort = 0xe
    .end annotation
.end field

.field private mCalendarOwnerId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_owner_id"
        sort = 0x11
    .end annotation
.end field

.field private mCalendarRole:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_role"
        sort = 0xd
    .end annotation
.end field

.field private mCalendarSelfStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_self_status"
        sort = 0xc
    .end annotation
.end field

.field private mCalendarSenderId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_sender_id"
        sort = 0xa
    .end annotation
.end field

.field private mCalendarSource:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_source"
        sort = 0x6
    .end annotation
.end field

.field private mCalendarStatus:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_status"
        sort = 0xb
    .end annotation
.end field

.field private mCalendarTypeVersion:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_type_version"
        sort = 0x5
    .end annotation
.end field

.field private mCalendarVersion:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "c_version"
        sort = 0xf
    .end annotation
.end field

.field private mEventAlarmListStr:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_alarm_list"
        sort = 0x23
    .end annotation
.end field

.field private mEventAllDay:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_all_day"
        sort = 0x12
    .end annotation
.end field

.field private mEventComment:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_comment"
        sort = 0x24
    .end annotation
.end field

.field private mEventDtEnd:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_dt_end"
        sort = 0x14
    .end annotation
.end field

.field private mEventDtStart:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_dt_start"
        sort = 0x13
    .end annotation
.end field

.field private mEventDuration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_duration"
        sort = 0x16
    .end annotation
.end field

.field private mEventExDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_exDate"
        sort = 0x1a
    .end annotation
.end field

.field private mEventExRule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_exrule"
        sort = 0x19
    .end annotation
.end field

.field private mEventIcon:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_icon"
        sort = 0x1c
    .end annotation
.end field

.field public mEventId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbinstance_event_id"
        name = "event_id"
        nullable = false
        sort = 0x4
    .end annotation
.end field

.field private mEventIsMainEvent:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_is_main"
        sort = 0x22
    .end annotation
.end field

.field private mEventLocation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_location"
        sort = 0x1b
    .end annotation
.end field

.field private mEventRDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_rdate"
        sort = 0x18
    .end annotation
.end field

.field private mEventRRule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_rrule"
        sort = 0x17
    .end annotation
.end field

.field private mEventRecurrenceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_recurrence_id"
        sort = 0x25
    .end annotation
.end field

.field private mEventStartTimezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_start_timezone"
        sort = 0x15
    .end annotation
.end field

.field private mEventSubTitle:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_subtitle"
        sort = 0x1f
    .end annotation
.end field

.field private mEventSubTitleTempData:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_subtitle_temp_data"
        sort = 0x21
    .end annotation
.end field

.field private mEventSubTitleTempId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_subtitle_temp_id"
        sort = 0x20
    .end annotation
.end field

.field private mEventSubject:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_subject"
        sort = 0x1e
    .end annotation
.end field

.field private mEventUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "e_url"
        sort = 0x1d
    .end annotation
.end field

.field public mFolderId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbinstance_folder_id"
        name = "folder_id"
        nullable = false
        sort = 0x1
    .end annotation
.end field

.field public mInstanceBegin:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbinstnace_begin"
        name = "i_begin"
        sort = 0x26
    .end annotation
.end field

.field public mInstanceEnd:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbinstance_end"
        name = "i_end"
        sort = 0x27
    .end annotation
.end field

.field private mUniqueId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_tbinstance_unique_id"
        name = "unique_id"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "unique_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "c_type_version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "c_source"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "c_biz_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "c_biz_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "c_has_expand"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "c_sender_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "c_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c_self_status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "c_role"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "c_is_deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "c_version"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "c_extension"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "c_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "e_all_day"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "e_dt_start"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "e_dt_end"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "e_start_timezone"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "e_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "e_rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "e_rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "e_exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "e_exDate"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "e_location"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "e_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "e_url"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "e_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "e_subtitle"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "e_subtitle_temp_id"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "e_subtitle_temp_data"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "e_is_main"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "e_alarm_list"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "e_comment"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "e_recurrence_id"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "i_begin"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "i_end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromBaseInstance(Larz;)Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    .locals 4
    .param p0, "calendarInstanceObject"    # Larz;

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    .line 274
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/entry/EntryInstance;-><init>()V

    .line 276
    .local v0, "entryInstance":Lcom/alibaba/android/calendar/db/entry/EntryInstance;
    invoke-virtual {p0}, Larz;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mFolderId:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Larz;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mUniqueId:Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Larz;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarId:J

    .line 279
    invoke-virtual {p0}, Larz;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventId:J

    .line 1107
    iget v1, p0, Larz;->a:I

    .line 280
    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarTypeVersion:I

    .line 1111
    iget v1, p0, Larz;->b:I

    .line 281
    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarSource:I

    .line 1115
    iget v1, p0, Larz;->c:I

    .line 282
    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarBizType:I

    .line 1119
    iget-object v1, p0, Larz;->d:Ljava/lang/String;

    .line 283
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarBizId:Ljava/lang/String;

    .line 1123
    iget-boolean v1, p0, Larz;->e:Z

    .line 284
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarHasExpand:Z

    .line 1127
    iget-wide v2, p0, Larz;->f:J

    .line 285
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarSenderId:J

    .line 1131
    iget v1, p0, Larz;->g:I

    .line 286
    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarStatus:I

    .line 1135
    iget v1, p0, Larz;->h:I

    .line 287
    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarSelfStatus:I

    .line 1139
    iget v1, p0, Larz;->i:I

    .line 288
    iput v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarRole:I

    .line 1143
    iget-boolean v1, p0, Larz;->j:Z

    .line 289
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarIsDeleted:Z

    .line 1147
    iget-wide v2, p0, Larz;->k:J

    .line 290
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarVersion:J

    .line 1151
    iget-object v1, p0, Larz;->l:Ljava/util/Map;

    .line 291
    if-eqz v1, :cond_1

    .line 2151
    iget-object v1, p0, Larz;->l:Ljava/util/Map;

    .line 292
    invoke-static {v1}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarExtension:Ljava/lang/String;

    .line 2155
    :cond_1
    iget-wide v2, p0, Larz;->m:J

    .line 294
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarOwnerId:J

    .line 2159
    iget-boolean v1, p0, Larz;->n:Z

    .line 295
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventAllDay:Z

    .line 2163
    iget-wide v2, p0, Larz;->o:J

    .line 296
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventDtStart:J

    .line 2167
    iget-wide v2, p0, Larz;->p:J

    .line 297
    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventDtEnd:J

    .line 2171
    iget-object v1, p0, Larz;->q:Ljava/lang/String;

    .line 298
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventStartTimezone:Ljava/lang/String;

    .line 2175
    iget-object v1, p0, Larz;->r:Ljava/lang/String;

    .line 299
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventDuration:Ljava/lang/String;

    .line 2179
    iget-object v1, p0, Larz;->s:Ljava/lang/String;

    .line 300
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventRRule:Ljava/lang/String;

    .line 2183
    iget-object v1, p0, Larz;->t:Ljava/lang/String;

    .line 301
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventRDate:Ljava/lang/String;

    .line 2187
    iget-object v1, p0, Larz;->u:Ljava/lang/String;

    .line 302
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventExRule:Ljava/lang/String;

    .line 2191
    iget-object v1, p0, Larz;->v:Ljava/lang/String;

    .line 303
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventExDate:Ljava/lang/String;

    .line 2195
    iget-object v1, p0, Larz;->w:Ljava/lang/String;

    .line 304
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventLocation:Ljava/lang/String;

    .line 2199
    iget-object v1, p0, Larz;->x:Ljava/lang/String;

    .line 305
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventIcon:Ljava/lang/String;

    .line 2203
    iget-object v1, p0, Larz;->y:Ljava/lang/String;

    .line 306
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventUrl:Ljava/lang/String;

    .line 2207
    iget-object v1, p0, Larz;->z:Ljava/lang/String;

    .line 307
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubject:Ljava/lang/String;

    .line 2211
    iget-object v1, p0, Larz;->A:Ljava/lang/String;

    .line 308
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubTitle:Ljava/lang/String;

    .line 2215
    iget-object v1, p0, Larz;->B:Ljava/lang/String;

    .line 309
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubTitleTempId:Ljava/lang/String;

    .line 2219
    iget-object v1, p0, Larz;->C:Ljava/util/List;

    .line 310
    invoke-static {v1}, Lcob;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubTitleTempData:Ljava/lang/String;

    .line 2223
    iget-boolean v1, p0, Larz;->D:Z

    .line 311
    iput-boolean v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventIsMainEvent:Z

    .line 2227
    iget-object v1, p0, Larz;->E:Ljava/util/List;

    .line 312
    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventAlarmListStr:Ljava/lang/String;

    .line 2231
    iget-object v1, p0, Larz;->F:Ljava/lang/String;

    .line 313
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventComment:Ljava/lang/String;

    .line 2235
    iget-object v1, p0, Larz;->G:Ljava/lang/String;

    .line 314
    iput-object v1, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventRecurrenceId:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Larz;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mInstanceBegin:J

    .line 316
    invoke-virtual {p0}, Larz;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mInstanceEnd:J

    goto/16 :goto_0
.end method


# virtual methods
.method public getCalendarBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarBizId:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarBizType()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarBizType:I

    return v0
.end method

.method public getCalendarExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarId:J

    return-wide v0
.end method

.method public getCalendarOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarOwnerId:J

    return-wide v0
.end method

.method public getCalendarRole()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarRole:I

    return v0
.end method

.method public getCalendarSelfStatus()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarSelfStatus:I

    return v0
.end method

.method public getCalendarSenderId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarSenderId:J

    return-wide v0
.end method

.method public getCalendarSource()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarSource:I

    return v0
.end method

.method public getCalendarStatus()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarStatus:I

    return v0
.end method

.method public getCalendarTypeVersion()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarTypeVersion:I

    return v0
.end method

.method public getCalendarVersion()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mCalendarVersion:J

    return-wide v0
.end method

.method public getEventDtStart()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventDtStart:J

    return-wide v0
.end method

.method public getEventDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getEventIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventId:J

    return-wide v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getEventRRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventRRule:Ljava/lang/String;

    return-object v0
.end method

.method public getEventRecurrenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventRecurrenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventStartTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventStartTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSubTitleTempData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubTitleTempData:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSubTitleTempId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubTitleTempId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceBegin()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mInstanceBegin:J

    return-wide v0
.end method

.method public getInstanceEnd()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mInstanceEnd:J

    return-wide v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public isEventAllDay()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/alibaba/android/calendar/db/entry/EntryInstance;->mEventAllDay:Z

    return v0
.end method
