.class public Lcom/alibaba/wukong/im/category/CategoryEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "CategoryEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_category"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_category"


# instance fields
.field public categoryId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "category_id"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_category_id:1"
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "create_time"
        sort = 0x3
    .end annotation
.end field

.field public index:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "sort_index"
        sort = 0x5
    .end annotation
.end field

.field public modifiedTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "modified_time"
        sort = 0x4
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "title"
        sort = 0x2
    .end annotation
.end field

.field public tooLong2Sync:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "too_long_2_sync"
        sort = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 34
    return-void
.end method
