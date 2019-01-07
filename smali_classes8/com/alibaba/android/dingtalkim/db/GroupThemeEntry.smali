.class public Lcom/alibaba/android/dingtalkim/db/GroupThemeEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "GroupThemeEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_group_theme"
.end annotation


# static fields
.field public static final NAME_CONTENT:Ljava/lang/String; = "content"

.field public static final NAME_THEME_ID:Ljava/lang/String; = "themeId"

.field public static final NAME_VERSION:Ljava/lang/String; = "version"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_group_theme"


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "content"
        sort = 0x3
    .end annotation
.end field

.field public themeId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "themeId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_group_theme_id"
    .end annotation
.end field

.field public version:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "version"
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
