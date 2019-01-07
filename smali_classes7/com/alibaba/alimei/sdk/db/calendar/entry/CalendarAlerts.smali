.class public Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "CalendarAlerts.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "CalendarAlerts"
.end annotation


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
    .end annotation
.end field

.field public alarmTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "alarmTime"
        nullable = false
    .end annotation
.end field

.field public begin:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "begin"
        nullable = false
    .end annotation
.end field

.field public creationTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        defaultValue = "0"
        name = "creationTime"
        nullable = false
    .end annotation
.end field

.field public end:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "end"
        nullable = false
    .end annotation
.end field

.field public event_id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "event_id"
    .end annotation
.end field

.field public minutes:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "minutes"
    .end annotation
.end field

.field public notifyTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        defaultValue = "0"
        name = "notifyTime"
        nullable = false
    .end annotation
.end field

.field public receivedTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        defaultValue = "0"
        name = "receivedTime"
        nullable = false
    .end annotation
.end field

.field public state:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        name = "state"
        nullable = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
