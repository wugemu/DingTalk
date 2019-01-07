.class public Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "Events.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "Events"
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
        columnOrder = 0x1
        name = "_sync_id"
    .end annotation
.end field

.field public accessLevel:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x18
        defaultValue = "0"
        name = "accessLevel"
        nullable = false
    .end annotation
.end field

.field public allDay:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x17
        defaultValue = "0"
        name = "allDay"
        nullable = false
    .end annotation
.end field

.field public availability:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x19
        defaultValue = "0"
        name = "availability"
        nullable = false
    .end annotation
.end field

.field public calendar_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "calendar_id"
        nullable = false
    .end annotation
.end field

.field public canSync:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x31
        defaultValue = "1"
        name = "canSync"
    .end annotation
.end field

.field public customAppPackage:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2e
        name = "customAppPackage"
    .end annotation
.end field

.field public customAppUri:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2f
        name = "customAppUri"
    .end annotation
.end field

.field public deleted:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2c
        defaultValue = "0"
        name = "deleted"
        nullable = false
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "description"
    .end annotation
.end field

.field public dirty:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "dirty"
    .end annotation
.end field

.field public dtend:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x14
        name = "dtend"
    .end annotation
.end field

.field public dtstart:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x13
        name = "dtstart"
    .end annotation
.end field

.field public duration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x16
        name = "duration"
    .end annotation
.end field

.field public eventColor:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "eventColor"
    .end annotation
.end field

.field public eventColor_index:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "eventColor_index"
    .end annotation
.end field

.field public eventEndTimezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2d
        name = "eventEndTimezone"
    .end annotation
.end field

.field public eventLocation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "eventLocation"
    .end annotation
.end field

.field public eventStatus:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "eventStatus"
    .end annotation
.end field

.field public eventTimezone:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x15
        name = "eventTimezone"
    .end annotation
.end field

.field public exdate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1f
        name = "exdate"
    .end annotation
.end field

.field public exrule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1e
        name = "exrule"
    .end annotation
.end field

.field public guestsCanInviteOthers:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x27
        defaultValue = "1"
        name = "guestsCanInviteOthers"
        nullable = false
    .end annotation
.end field

.field public guestsCanModify:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x26
        defaultValue = "0"
        name = "guestsCanModify"
        nullable = false
    .end annotation
.end field

.field public guestsCanSeeGuests:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x28
        defaultValue = "1"
        name = "guestsCanSeeGuests"
        nullable = false
    .end annotation
.end field

.field public hasAlarm:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1a
        defaultValue = "0"
        name = "hasAlarm"
        nullable = false
    .end annotation
.end field

.field public hasAttendeeData:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x25
        defaultValue = "0"
        name = "hasAttendeeData"
        nullable = false
    .end annotation
.end field

.field public hasExtendedProperties:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1b
        defaultValue = "0"
        name = "hasExtendedProperties"
        nullable = false
    .end annotation
.end field

.field public isOrganizer:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2b
        name = "isOrganizer"
    .end annotation
.end field

.field public lastDate:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x24
        name = "lastDate"
    .end annotation
.end field

.field public lastSynced:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        defaultValue = "0"
        name = "lastSynced"
    .end annotation
.end field

.field public message_account_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "message_account_id"
    .end annotation
.end field

.field public message_mailbox_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "message_mailbox_id"
    .end annotation
.end field

.field public message_server_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "message_server_id"
    .end annotation
.end field

.field public message_thread_topic:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        name = "message_thread_topic"
    .end annotation
.end field

.field public message_thread_topic_number:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "message_thread_topic_number"
    .end annotation
.end field

.field public message_time_stamp:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "message_time_stamp"
    .end annotation
.end field

.field public message_type:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "message_type"
    .end annotation
.end field

.field public organizer:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2a
        name = "organizer"
    .end annotation
.end field

.field public organizer_name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x29
        name = "organizer_name"
    .end annotation
.end field

.field public originalAllDay:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x23
        name = "originalAllDay"
    .end annotation
.end field

.field public originalInstanceTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x22
        name = "originalInstanceTime"
    .end annotation
.end field

.field public original_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x20
        name = "original_id"
    .end annotation
.end field

.field public original_sync_id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x21
        name = "original_sync_id"
    .end annotation
.end field

.field public rdate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1d
        name = "rdate"
    .end annotation
.end field

.field public rrule:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1c
        name = "rrule"
    .end annotation
.end field

.field public selfAttendeeStatus:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        defaultValue = "0"
        name = "selfAttendeeStatus"
        nullable = false
    .end annotation
.end field

.field public sync_data1:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x32
        name = "sync_data1"
    .end annotation
.end field

.field public sync_data10:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3b
        name = "sync_data10"
    .end annotation
.end field

.field public sync_data2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x33
        name = "sync_data2"
    .end annotation
.end field

.field public sync_data3:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x34
        name = "sync_data3"
    .end annotation
.end field

.field public sync_data4:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x35
        name = "sync_data4"
    .end annotation
.end field

.field public sync_data5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x36
        name = "sync_data5"
    .end annotation
.end field

.field public sync_data6:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x37
        name = "sync_data6"
    .end annotation
.end field

.field public sync_data7:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x38
        name = "sync_data7"
    .end annotation
.end field

.field public sync_data8:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x39
        name = "sync_data8"
    .end annotation
.end field

.field public sync_data9:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3a
        name = "sync_data9"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "title"
    .end annotation
.end field

.field public uid2445:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x30
        name = "uid2445"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method

.method public static isBodySaveFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "saveFile"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->clone()Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    move-result-object v0

    return-object v0
.end method

.method public isBodySaveFile()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "do not call save to save event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
