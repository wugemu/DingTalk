.class public Lcom/alibaba/android/searchengine/models/FtsDBConfigure;
.super Ljava/lang/Object;
.source "FtsDBConfigure.java"


# instance fields
.field public dbName:[B

.field public tables:[Lcom/alibaba/android/searchengine/models/FtsConfigureTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromDBConfigure(Lcom/alibaba/android/searchengine/models/DBConfigure;)Lcom/alibaba/android/searchengine/models/FtsDBConfigure;
    .locals 7
    .param p0, "dbConfigure"    # Lcom/alibaba/android/searchengine/models/DBConfigure;

    .prologue
    .line 16
    if-nez p0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 34
    :cond_0
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/alibaba/android/searchengine/models/FtsDBConfigure;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/FtsDBConfigure;-><init>()V

    .line 21
    .local v0, "ftsDBConfigure":Lcom/alibaba/android/searchengine/models/FtsDBConfigure;
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/DBConfigure;->dbName:Ljava/lang/String;

    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/searchengine/models/FtsDBConfigure;->dbName:[B

    .line 23
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "i":I
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/android/searchengine/models/FtsConfigureTable;

    iput-object v4, v0, Lcom/alibaba/android/searchengine/models/FtsDBConfigure;->tables:[Lcom/alibaba/android/searchengine/models/FtsConfigureTable;

    .line 26
    iget-object v4, p0, Lcom/alibaba/android/searchengine/models/DBConfigure;->tables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/searchengine/models/ConfigureTable;

    .line 27
    .local v3, "table":Lcom/alibaba/android/searchengine/models/ConfigureTable;
    if-eqz v3, :cond_2

    .line 30
    iget-object v5, v0, Lcom/alibaba/android/searchengine/models/FtsDBConfigure;->tables:[Lcom/alibaba/android/searchengine/models/FtsConfigureTable;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-static {v3}, Lcom/alibaba/android/searchengine/models/FtsConfigureTable;->fromTable(Lcom/alibaba/android/searchengine/models/ConfigureTable;)Lcom/alibaba/android/searchengine/models/FtsConfigureTable;

    move-result-object v6

    aput-object v6, v5, v1

    move v1, v2

    .line 31
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method
