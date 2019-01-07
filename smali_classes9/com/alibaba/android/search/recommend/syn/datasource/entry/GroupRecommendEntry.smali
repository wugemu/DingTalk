.class public Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "GroupRecommendEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_group_intimacy"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tb_group_intimacy"


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "cid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_group_intimacy_cid:1"
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "modifyTime"
        nullable = false
        sort = 0x3
    .end annotation
.end field

.field public score:D
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "score"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 31
    return-void
.end method
