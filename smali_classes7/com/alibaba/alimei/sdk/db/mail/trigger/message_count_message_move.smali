.class public Lcom/alibaba/alimei/sdk/db/mail/trigger/message_count_message_move;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "message_count_message_move.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "message_count_message_move"
    ofColumnName = "mailboxKey"
    onTableName = "Message"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->After:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "message_count_message_move"


# instance fields
.field public updateMailbox:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; "
        statementOrder = 0x0
    .end annotation
.end field

.field public updateMailbox2:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "update Mailbox set messageCount=messageCount+1  where _id=NEW.mailboxKey; "
        statementOrder = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TriggerEntry;-><init>()V

    return-void
.end method
