.class public Lcom/alibaba/alimei/sdk/db/calendar/entry/Views;
.super Lcom/alibaba/alimei/orm/ViewEntry;
.source "Views.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/View;
    from = "Events JOIN Calendars ON (Events.calendar_id=Calendars._id)"
    name = "view_events"
.end annotation


# static fields
.field public static final DISPLAY_COLOR:Ljava/lang/String; = "ifnull(eventColor,calendar_color)"

.field public static final EVENTS:Ljava/lang/String; = "view_events"

.field public static final FROM:Ljava/lang/String; = "Events JOIN Calendars ON (Events.calendar_id=Calendars._id)"

.field static final IS_ORGANIZER:Ljava/lang/String; = "COALESCE(isOrganizer, organizer = ownerAccount)"


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "_id"
        columnOrder = 0x1
        name = "_id"
        tableName = "Events"
    .end annotation
.end field

.field public _sync_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "_sync_id"
        columnOrder = 0x39
        name = "_sync_id"
        tableName = "Events"
    .end annotation
.end field

.field public accessLevel:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x16
        name = "accessLevel"
        tableName = "Events"
    .end annotation
.end field

.field public account_name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "account_name"
        columnOrder = 0x3d
        name = "account_name"
        tableName = "Calendars"
    .end annotation
.end field

.field public account_type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "account_type"
        columnOrder = 0x3e
        name = "account_type"
        tableName = "Calendars"
    .end annotation
.end field

.field public allDay:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x15
        name = "allDay"
        tableName = "Events"
    .end annotation
.end field

.field public allowedAttendeeTypes:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x48
        name = "allowedAttendeeTypes"
        tableName = "Calendars"
    .end annotation
.end field

.field public allowedAvailability:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x49
        name = "allowedAvailability"
        tableName = "Calendars"
    .end annotation
.end field

.field public allowedReminders:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x47
        name = "allowedReminders"
        tableName = "Calendars"
    .end annotation
.end field

.field public availability:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x17
        name = "availability"
        tableName = "Events"
    .end annotation
.end field

.field public cal_sync1:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x4d
        name = "cal_sync1"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync10:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x56
        name = "cal_sync10"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x4e
        name = "cal_sync2"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync3:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x4f
        name = "cal_sync3"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync4:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x50
        name = "cal_sync4"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x51
        name = "cal_sync5"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync6:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x52
        name = "cal_sync6"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync7:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x53
        name = "cal_sync7"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync8:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x54
        name = "cal_sync8"
        tableName = "Calendars"
    .end annotation
.end field

.field public cal_sync9:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x55
        name = "cal_sync9"
        tableName = "Calendars"
    .end annotation
.end field

.field public calendar_access_level:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x45
        name = "calendar_access_level"
        tableName = "Calendars"
    .end annotation
.end field

.field public calendar_color:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x43
        name = "calendar_color"
        tableName = "Calendars"
    .end annotation
.end field

.field public calendar_color_index:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x44
        name = "calendar_color_index"
        tableName = "Calendars"
    .end annotation
.end field

.field public calendar_displayName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "calendar_displayName"
        columnOrder = 0x40
        name = "calendar_displayName"
        tableName = "Calendars"
    .end annotation
.end field

.field public calendar_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x24
        name = "calendar_id"
        tableName = "Events"
    .end annotation
.end field

.field public calendar_location:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x41
        name = "calendar_location"
        tableName = "Calendars"
    .end annotation
.end field

.field public calendar_timezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "calendar_timezone"
        columnOrder = 0x3f
        name = "calendar_timezone"
        tableName = "Calendars"
    .end annotation
.end field

.field public canModifyTimeZone:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x4b
        name = "canModifyTimeZone"
        tableName = "Calendars"
    .end annotation
.end field

.field public canOrganizerRespond:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x4a
        name = "canOrganizerRespond"
        tableName = "Calendars"
    .end annotation
.end field

.field public canPartiallyUpdate:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x4c
        name = "canPartiallyUpdate"
        tableName = "Calendars"
    .end annotation
.end field

.field public canSync:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x3a
        name = "canSync"
        tableName = "Events"
    .end annotation
.end field

.field public customAppPackage:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x2b
        name = "customAppPackage"
        tableName = "Events"
    .end annotation
.end field

.field public customAppUri:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x2c
        name = "customAppUri"
        tableName = "Events"
    .end annotation
.end field

.field public deleted:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "deleted"
        columnOrder = 0x38
        name = "deleted"
        tableName = "Events"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x3
        name = "description"
        tableName = "Events"
    .end annotation
.end field

.field public dirty:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "dirty"
        columnOrder = 0x3b
        name = "dirty"
        tableName = "Events"
    .end annotation
.end field

.field public displayColor:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "displayColor"
        columnOrder = 0x59
        name = "ifnull(eventColor,calendar_color)"
    .end annotation
.end field

.field public dtend:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xa
        name = "dtend"
        tableName = "Events"
    .end annotation
.end field

.field public dtstart:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x9
        name = "dtstart"
        tableName = "Events"
    .end annotation
.end field

.field public duration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xb
        name = "duration"
        tableName = "Events"
    .end annotation
.end field

.field public eventColor:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x5
        name = "eventColor"
        tableName = "Events"
    .end annotation
.end field

.field public eventColor_index:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x6
        name = "eventColor_index"
        tableName = "Events"
    .end annotation
.end field

.field public eventEndTimezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xd
        name = "eventEndTimezone"
        tableName = "Events"
    .end annotation
.end field

.field public eventLocation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x4
        name = "eventLocation"
        tableName = "Events"
    .end annotation
.end field

.field public eventStatus:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x7
        name = "eventStatus"
        tableName = "Events"
    .end annotation
.end field

.field public eventTimezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xc
        name = "eventTimezone"
        tableName = "Events"
    .end annotation
.end field

.field public exdate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x1d
        name = "exdate"
        tableName = "Events"
    .end annotation
.end field

.field public exrule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x1c
        name = "exrule"
        tableName = "Events"
    .end annotation
.end field

.field public guestsCanInviteOthers:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x25
        name = "guestsCanInviteOthers"
        tableName = "Events"
    .end annotation
.end field

.field public guestsCanModify:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x26
        name = "guestsCanModify"
        tableName = "Events"
    .end annotation
.end field

.field public guestsCanSeeGuests:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x27
        name = "guestsCanSeeGuests"
        tableName = "Events"
    .end annotation
.end field

.field public hasAlarm:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x18
        name = "hasAlarm"
        tableName = "Events"
    .end annotation
.end field

.field public hasAttendeeData:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x23
        name = "hasAttendeeData"
        tableName = "Events"
    .end annotation
.end field

.field public hasExtendedProperties:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x19
        name = "hasExtendedProperties"
        tableName = "Events"
    .end annotation
.end field

.field public isOrganizer:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "isOrganizer"
        columnOrder = 0x2a
        name = "COALESCE(isOrganizer, organizer = ownerAccount)"
    .end annotation
.end field

.field public lastDate:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x22
        name = "lastDate"
        tableName = "Events"
    .end annotation
.end field

.field public lastSynced:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = "lastSynced"
        columnOrder = 0x3c
        name = "lastSynced"
        tableName = "Events"
    .end annotation
.end field

.field public mCalendarParentId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x5a
        name = "parentId"
        tableName = "Calendars"
    .end annotation
.end field

.field public mFolderServerId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x5b
        name = "mailbox_server_id"
        tableName = "Calendars"
    .end annotation
.end field

.field public maxReminders:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x46
        name = "maxReminders"
        tableName = "Calendars"
    .end annotation
.end field

.field public message_account_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x10
        name = "message_account_id"
        tableName = "Events"
    .end annotation
.end field

.field public message_mailbox_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xf
        name = "message_mailbox_id"
        tableName = "Events"
    .end annotation
.end field

.field public message_server_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0xe
        name = "message_server_id"
        tableName = "Events"
    .end annotation
.end field

.field public message_thread_topic:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x11
        name = "message_thread_topic"
        tableName = "Events"
    .end annotation
.end field

.field public message_thread_topic_number:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x12
        name = "message_thread_topic_number"
        tableName = "Events"
    .end annotation
.end field

.field public message_time_stamp:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x14
        name = "message_time_stamp"
        tableName = "Events"
    .end annotation
.end field

.field public message_type:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x13
        name = "message_type"
        tableName = "Events"
    .end annotation
.end field

.field public organizer:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x28
        name = "organizer"
        tableName = "Events"
    .end annotation
.end field

.field public organizer_name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x29
        name = "organizer_name"
        tableName = "Events"
    .end annotation
.end field

.field public originalAllDay:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x21
        name = "originalAllDay"
        tableName = "Events"
    .end annotation
.end field

.field public originalInstanceTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x20
        name = "originalInstanceTime"
        tableName = "Events"
    .end annotation
.end field

.field public original_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x1f
        name = "original_id"
        tableName = "Events"
    .end annotation
.end field

.field public original_sync_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x1e
        name = "original_sync_id"
        tableName = "Events"
    .end annotation
.end field

.field public ownerAccount:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x57
        name = "ownerAccount"
        tableName = "Calendars"
    .end annotation
.end field

.field public rdate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x1b
        name = "rdate"
        tableName = "Events"
    .end annotation
.end field

.field public rrule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x1a
        name = "rrule"
        tableName = "Events"
    .end annotation
.end field

.field public selfAttendeeStatus:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x8
        name = "selfAttendeeStatus"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data1:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x2e
        name = "sync_data1"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data10:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x37
        name = "sync_data10"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x2f
        name = "sync_data2"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data3:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x30
        name = "sync_data3"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data4:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x31
        name = "sync_data4"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x32
        name = "sync_data5"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data6:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x33
        name = "sync_data6"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data7:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x34
        name = "sync_data7"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data8:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x35
        name = "sync_data8"
        tableName = "Events"
    .end annotation
.end field

.field public sync_data9:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x36
        name = "sync_data9"
        tableName = "Events"
    .end annotation
.end field

.field public sync_events:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x58
        name = "sync_events"
        tableName = "Calendars"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x2
        name = "title"
        tableName = "Events"
    .end annotation
.end field

.field public uid2445:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x2d
        name = "uid2445"
        tableName = "Events"
    .end annotation
.end field

.field public visible:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        columnOrder = 0x42
        name = "visible"
        tableName = "Calendars"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/ViewEntry;-><init>()V

    return-void
.end method
