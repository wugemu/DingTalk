.class public Lcom/alibaba/alimei/contact/db/entry/CallLog;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "CallLog.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "callLog"
.end annotation


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final START_TIME:Ljava/lang/String; = "start_time"

.field public static final TABLE_NAME:Ljava/lang/String; = "callLog"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
    .end annotation
.end field

.field public display_name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "display_name"
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "duration"
        nullable = false
    .end annotation
.end field

.field public is_read:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "is_read"
    .end annotation
.end field

.field public newFlag:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "new"
    .end annotation
.end field

.field public phone_number:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "phone_number"
        nullable = false
    .end annotation
.end field

.field public start_time:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "start_time"
        nullable = false
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "type"
        nullable = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
