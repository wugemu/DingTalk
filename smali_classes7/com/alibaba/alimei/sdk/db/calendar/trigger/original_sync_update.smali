.class public Lcom/alibaba/alimei/sdk/db/calendar/trigger/original_sync_update;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "original_sync_update.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "original_sync_update"
    ofColumnName = "_sync_id"
    onTableName = "Events"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "original_sync_update"


# instance fields
.field public updateEvents:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "UPDATE Events SET original_sync_id=new._sync_id WHERE original_id=old._id;"
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
