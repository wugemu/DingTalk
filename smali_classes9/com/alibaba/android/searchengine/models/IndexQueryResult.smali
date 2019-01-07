.class public Lcom/alibaba/android/searchengine/models/IndexQueryResult;
.super Ljava/lang/Object;
.source "IndexQueryResult.java"


# instance fields
.field public tableResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFtsSearchResult(Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;)Lcom/alibaba/android/searchengine/models/IndexQueryResult;
    .locals 14
    .param p0, "ftsSearchResult"    # Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;

    .prologue
    const/4 v4, 0x0

    .line 23
    if-eqz p0, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;->rowResults:[Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;

    if-nez v8, :cond_1

    .line 77
    :cond_0
    return-object v4

    .line 27
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v7, "tableResultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;>;"
    iget-object v8, p0, Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;->dbName:[B

    invoke-static {v8}, Leui;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "dbName":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;->rowResults:[Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_5

    aget-object v2, v9, v8

    .line 30
    .local v2, "ftsRowResult":Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;
    if-eqz v2, :cond_4

    .line 34
    invoke-static {v2}, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->fromFtsRowResult(Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;)Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;

    move-result-object v3

    .line 35
    .local v3, "rowResult":Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;
    if-eqz v3, :cond_4

    .line 39
    iget-object v11, v3, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->tableName:Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;

    .line 40
    .local v6, "tableResult":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    if-nez v6, :cond_2

    .line 41
    new-instance v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;

    .end local v6    # "tableResult":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    invoke-direct {v6}, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;-><init>()V

    .line 42
    .restart local v6    # "tableResult":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    iput-object v0, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->dbName:Ljava/lang/String;

    .line 43
    iget-object v11, v3, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->tableName:Ljava/lang/String;

    iput-object v11, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->tableName:Ljava/lang/String;

    .line 44
    iget-object v11, v3, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->tableName:Ljava/lang/String;

    invoke-interface {v7, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    iget-object v11, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->pkeys:Ljava/util/List;

    if-nez v11, :cond_3

    .line 47
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->pkeys:Ljava/util/List;

    .line 49
    :cond_3
    iget-object v11, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->pkeys:Ljava/util/List;

    iget-wide v12, v3, Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;->rowid:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .end local v3    # "rowResult":Lcom/alibaba/android/searchengine/models/IndexQueryRowResult;
    .end local v6    # "tableResult":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "ftsRowResult":Lcom/alibaba/android/searchengine/models/FtsIndexQueryRowResult;
    :cond_5
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 56
    new-instance v4, Lcom/alibaba/android/searchengine/models/IndexQueryResult;

    invoke-direct {v4}, Lcom/alibaba/android/searchengine/models/IndexQueryResult;-><init>()V

    .line 57
    .local v4, "searchResult":Lcom/alibaba/android/searchengine/models/IndexQueryResult;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v4, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    .line 58
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;>;"
    if-eqz v1, :cond_6

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    .local v5, "tableName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;

    .line 70
    .restart local v6    # "tableResult":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    if-eqz v6, :cond_6

    .line 74
    iget-object v9, v4, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
