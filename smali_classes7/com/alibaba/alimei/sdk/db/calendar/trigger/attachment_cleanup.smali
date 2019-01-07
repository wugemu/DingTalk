.class public Lcom/alibaba/alimei/sdk/db/calendar/trigger/attachment_cleanup;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "attachment_cleanup.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "events_cleanup_delete"
    onTableName = "Events"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Delete:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.end annotation


# instance fields
.field public deleteAttachments:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "DELETE FROM Attachments WHERE eventKey=old._id;"
        statementOrder = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TriggerEntry;-><init>()V

    return-void
.end method
