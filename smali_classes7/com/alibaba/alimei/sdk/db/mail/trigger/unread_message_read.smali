.class public Lcom/alibaba/alimei/sdk/db/mail/trigger/unread_message_read;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "unread_message_read.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "unread_message_read"
    ofColumnName = "flagRead"
    onTableName = "Message"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Before:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    whenExpression = " OLD.flagRead !=NEW.flagRead"
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "unread_message_read"


# instance fields
.field public updateMailbox:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "update Mailbox set unreadCount=unreadCount + case OLD.flagRead when 0 then -1 else 1 end where _id=OLD.mailboxKey; "
        statementOrder = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TriggerEntry;-><init>()V

    return-void
.end method
