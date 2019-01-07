.class public Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "Calendars.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "Calendars"
.end annotation


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
    .end annotation
.end field

.field public _sync_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "_sync_id"
    .end annotation
.end field

.field public account_name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "account_name"
    .end annotation
.end field

.field public account_type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "account_type"
    .end annotation
.end field

.field public allowedAttendeeTypes:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x18
        defaultValue = "0,1,2"
        name = "allowedAttendeeTypes"
    .end annotation
.end field

.field public allowedAvailability:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x17
        defaultValue = "0,1"
        name = "allowedAvailability"
    .end annotation
.end field

.field public allowedReminders:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x16
        defaultValue = "0,1"
        name = "allowedReminders"
    .end annotation
.end field

.field public cal_sync1:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1a
        name = "cal_sync1"
    .end annotation
.end field

.field public cal_sync10:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x23
        name = "cal_sync10"
    .end annotation
.end field

.field public cal_sync2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1b
        name = "cal_sync2"
    .end annotation
.end field

.field public cal_sync3:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1c
        name = "cal_sync3"
    .end annotation
.end field

.field public cal_sync4:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1d
        name = "cal_sync4"
    .end annotation
.end field

.field public cal_sync5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1e
        name = "cal_sync5"
    .end annotation
.end field

.field public cal_sync6:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1f
        name = "cal_sync6"
    .end annotation
.end field

.field public cal_sync7:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x20
        name = "cal_sync7"
    .end annotation
.end field

.field public cal_sync8:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x21
        name = "cal_sync8"
    .end annotation
.end field

.field public cal_sync9:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x22
        name = "cal_sync9"
    .end annotation
.end field

.field public calendar_access_level:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "calendar_access_level"
    .end annotation
.end field

.field public calendar_color:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "calendar_color"
    .end annotation
.end field

.field public calendar_color_index:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "calendar_color_index"
    .end annotation
.end field

.field public calendar_displayName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "calendar_displayName"
    .end annotation
.end field

.field public calendar_location:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "calendar_location"
    .end annotation
.end field

.field public calendar_timezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "calendar_timezone"
    .end annotation
.end field

.field public canModifyTimeZone:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        defaultValue = "1"
        name = "canModifyTimeZone"
    .end annotation
.end field

.field public canOrganizerRespond:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        defaultValue = "1"
        name = "canOrganizerRespond"
        nullable = false
    .end annotation
.end field

.field public canPartiallyUpdate:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        defaultValue = "0"
        name = "canPartiallyUpdate"
    .end annotation
.end field

.field public deleted:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x19
        defaultValue = "0"
        name = "deleted"
        nullable = false
    .end annotation
.end field

.field public dirty:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "dirty"
    .end annotation
.end field

.field public isPrimary:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "isPrimary"
    .end annotation
.end field

.field public maxReminders:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x15
        defaultValue = "5"
        name = "maxReminders"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "name"
    .end annotation
.end field

.field public ownerAccount:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "ownerAccount"
    .end annotation
.end field

.field public parentId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "parentId"
    .end annotation
.end field

.field public server_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "mailbox_server_id"
    .end annotation
.end field

.field public sync_events:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        defaultValue = "0"
        name = "sync_events"
        nullable = false
    .end annotation
.end field

.field public visible:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        defaultValue = "1"
        name = "visible"
        nullable = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
