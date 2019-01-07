.class public Lcom/alibaba/alimei/sdk/db/calendar/entry/Colors;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "Colors.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "Colors"
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

.field public accountName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "account_name"
        nullable = false
    .end annotation
.end field

.field public accountType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "account_type"
        nullable = false
    .end annotation
.end field

.field public color:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "color"
        nullable = false
    .end annotation
.end field

.field public colorIndex:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "color_index"
        nullable = false
    .end annotation
.end field

.field public colorType:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "color_type"
        nullable = false
    .end annotation
.end field

.field public data:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "data"
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
