.class public Lcom/alibaba/alimei/sdk/db/mail/trigger/favorite_message_favorite;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "favorite_message_favorite.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "favorite_message_favorite"
    ofColumnName = "flagFavorite"
    onTableName = "Message"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->Before:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    whenExpression = "OLD.flagFavorite!=NEW.flagFavorite"
.end annotation


# static fields
.field public static final TRIGGER_NAME:Ljava/lang/String; = "favorite_message_favorite"


# instance fields
.field public updateMailbox:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "update Mailbox set favoriteCount=favoriteCount+ case NEW.flagFavorite when 1 then 1 else -1 end   where _id=OLD.mailboxKey; "
        statementOrder = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TriggerEntry;-><init>()V

    return-void
.end method
