.class public Lcom/alibaba/android/searchengine/models/FtsConfigureTable;
.super Ljava/lang/Object;
.source "FtsConfigureTable.java"


# instance fields
.field public bizType:[B

.field public columns:[Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;

.field public shardingTablePrefix:[B

.field public shardingTableRule:[B

.field public tableName:[B

.field public tablePriority:I

.field public tableVersion:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromTable(Lcom/alibaba/android/searchengine/models/ConfigureTable;)Lcom/alibaba/android/searchengine/models/FtsConfigureTable;
    .locals 7
    .param p0, "table"    # Lcom/alibaba/android/searchengine/models/ConfigureTable;

    .prologue
    .line 21
    if-nez p0, :cond_1

    .line 22
    const/4 v1, 0x0

    .line 43
    :cond_0
    return-object v1

    .line 25
    :cond_1
    new-instance v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;

    invoke-direct {v1}, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;-><init>()V

    .line 26
    .local v1, "ftsTable":Lcom/alibaba/android/searchengine/models/FtsConfigureTable;
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableVersion:Ljava/lang/String;

    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->tableVersion:[B

    .line 27
    iget v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tablePriority:I

    iput v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->tablePriority:I

    .line 28
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->bizType:Ljava/lang/String;

    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->bizType:[B

    .line 29
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->tableName:Ljava/lang/String;

    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->tableName:[B

    .line 30
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->shardingTablePrefix:Ljava/lang/String;

    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->shardingTablePrefix:[B

    .line 31
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->shardingTableRule:Ljava/lang/String;

    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->shardingTableRule:[B

    .line 33
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "i":I
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;

    iput-object v4, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->columns:[Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;

    .line 36
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/ConfigureTable;->columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/searchengine/models/ConfigureColumn;

    .line 37
    .local v0, "column":Lcom/alibaba/android/searchengine/models/ConfigureColumn;
    if-eqz v0, :cond_2

    .line 40
    iget-object v5, v1, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->columns:[Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v0}, Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;->fromColumn(Lcom/alibaba/android/searchengine/models/ConfigureColumn;)Lcom/alibaba/android/searchengine/models/FtsConfigureColumn;

    move-result-object v6

    aput-object v6, v5, v2

    move v2, v3

    .line 41
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method
