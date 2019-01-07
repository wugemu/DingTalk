.class public Lcom/alibaba/alimei/sdk/db/mail/trigger/message_delete;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "message_delete.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "message_delete"
    onTableName = "Message"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Delete:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Before:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "message_delete"


# instance fields
.field public deleteAttachment:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "delete from Attachment where messageKey=OLD._id; "
        statementOrder = 0x0
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
