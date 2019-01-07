.class public Lcom/alibaba/alimei/sdk/db/calendar/trigger/calendar_color_update;
.super Lcom/alibaba/alimei/orm/TriggerEntry;
.source "calendar_color_update.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger;
    name = "calendar_color_update"
    ofColumnName = "eventColor_index"
    onTableName = "Events"
    triggerOperation = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    triggerType = .enum Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->NONE:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    whenExpression = " NEW.eventColor_index NOT NULL"
.end annotation


# static fields
.field private static final SQL_CONDITION_ACCOUNT_NAME:Ljava/lang/String; = "SELECT account_name FROM Calendars WHERE _id=NEW.calendar_id"

.field private static final SQL_CONDITION_ACCOUNT_TYPE:Ljava/lang/String; = "SELECT account_type FROM Calendars WHERE _id=NEW.calendar_id"

.field private static final SQL_SELECT_COLOR:Ljava/lang/String; = "SELECT color FROM Colors WHERE account_name IN (SELECT account_name FROM Calendars WHERE _id=NEW.calendar_id) AND account_type IN (SELECT account_type FROM Calendars WHERE _id=NEW.calendar_id) AND color_index = NEW.eventColor_index AND color_type=1"

.field public static final TRIGGER_NAME:Ljava/lang/String; = "calendar_color_update"


# instance fields
.field public updateEvents:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
        statement = "UPDATE Events SET eventColor=(SELECT color FROM Colors WHERE account_name IN (SELECT account_name FROM Calendars WHERE _id=NEW.calendar_id) AND account_type IN (SELECT account_type FROM Calendars WHERE _id=NEW.calendar_id) AND color_index = NEW.eventColor_index AND color_type=1) WHERE _id= OLD._id;"
        statementOrder = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TriggerEntry;-><init>()V

    return-void
.end method
