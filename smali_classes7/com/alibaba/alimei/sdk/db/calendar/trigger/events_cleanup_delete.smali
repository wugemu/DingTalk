.class public Lcom/alibaba/alimei/sdk/db/calendar/trigger/events_cleanup_delete;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "events_cleanup_delete.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "events_cleanup_delete"
    onTableName = "Events"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Delete:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "events_cleanup_delete"


# instance fields
.field public deleteAttendees:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM Attendees WHERE event_id=old._id;"
        statementOrder = 0x2
    .end annotation
.end field

.field public deleteCalendarAlerts:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM CalendarAlerts WHERE event_id=old._id;"
    .end annotation
.end field

.field public deleteEventsRawTimes:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM EventsRawTimes WHERE event_id=old._id;"
        statementOrder = 0x1
    .end annotation
.end field

.field public deleteExtendedProperties:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM ExtendedProperties WHERE event_id=old._id;"
        statementOrder = 0x4
    .end annotation
.end field

.field public deleteInstances:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM Instances WHERE event_id=old._id;"
        statementOrder = 0x0
    .end annotation
.end field

.field public deleteReminders:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM Reminders WHERE event_id=old._id;"
        statementOrder = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TriggerEntry;-><init>()V

    return-void
.end method
