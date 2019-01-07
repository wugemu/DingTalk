.class public Lcom/alibaba/alimei/sdk/db/calendar/trigger/calendar_cleanup;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "calendar_cleanup.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "calendar_cleanup"
    onTableName = "Calendars"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Delete:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "calendar_cleanup"


# instance fields
.field public deleteEventsStatement:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM Events where calendar_id=old._id;"
        statementOrder = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TriggerEntry;-><init>()V

    return-void
.end method
