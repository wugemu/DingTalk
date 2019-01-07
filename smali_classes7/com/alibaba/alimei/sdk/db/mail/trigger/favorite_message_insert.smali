.class public Lcom/alibaba/alimei/sdk/db/mail/trigger/favorite_message_insert;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "favorite_message_insert.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "favorite_message_insert"
    onTableName = "Message"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->Insert:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Before:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    whenExpression = "NEW.flagFavorite=1"
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "favorite_message_insert"


# instance fields
.field public updateMailbox:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "update Mailbox set favoriteCount=favoriteCount+ 1 where _id=NEW.mailboxKey; "
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
