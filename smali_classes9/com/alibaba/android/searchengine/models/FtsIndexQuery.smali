.class public Lcom/alibaba/android/searchengine/models/FtsIndexQuery;
.super Ljava/lang/Object;
.source "FtsIndexQuery.java"


# instance fields
.field asc:Z

.field public bizType:[B

.field public commonCondition:[B

.field public highLightColumns:[[B

.field limitOffset:I

.field limitSize:I

.field public matchCondition:[B

.field public orderByColumns:[[B

.field relationType:I

.field public returnColumns:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSearchQuery(Lcom/alibaba/android/searchengine/models/IndexQuery;)Lcom/alibaba/android/searchengine/models/FtsIndexQuery;
    .locals 11
    .param p0, "indexQuery"    # Lcom/alibaba/android/searchengine/models/IndexQuery;

    .prologue
    .line 26
    if-nez p0, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 72
    :cond_0
    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;-><init>()V

    .line 31
    .local v0, "ftsIndexQuery":Lcom/alibaba/android/searchengine/models/FtsIndexQuery;
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->bizType:Ljava/lang/String;

    invoke-static {v6}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->bizType:[B

    .line 32
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->matchCondition:Ljava/lang/String;

    invoke-static {v6}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->matchCondition:[B

    .line 33
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->commonCondition:Ljava/lang/String;

    invoke-static {v6}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->commonCondition:[B

    .line 34
    iget-boolean v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->asc:Z

    iput-boolean v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->asc:Z

    .line 35
    iget v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->limitOffset:I

    iput v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->limitOffset:I

    .line 36
    iget v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->limitSize:I

    iput v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->limitSize:I

    .line 37
    iget v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->relationType:I

    iput v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->relationType:I

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, "i":I
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->orderByColumns:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 41
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->orderByColumns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [[B

    iput-object v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->orderByColumns:[[B

    .line 42
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->orderByColumns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 43
    .local v4, "orderByColumn":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 46
    iget-object v7, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->orderByColumns:[[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v2

    move v2, v3

    .line 47
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 50
    .end local v4    # "orderByColumn":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->returnColumns:[Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 51
    const/4 v2, 0x0

    .line 52
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->returnColumns:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [[B

    iput-object v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->returnColumns:[[B

    .line 53
    iget-object v7, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->returnColumns:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_1
    if-ge v6, v8, :cond_4

    aget-object v5, v7, v6

    .line 54
    .local v5, "returnColumn":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 57
    iget-object v9, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->returnColumns:[[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-static {v5}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v9, v3

    .line 53
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .end local v5    # "returnColumn":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 61
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->highLightColumns:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 62
    const/4 v2, 0x0

    .line 63
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->highLightColumns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [[B

    iput-object v6, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->highLightColumns:[[B

    .line 64
    iget-object v6, p0, Lcom/alibaba/android/searchengine/models/IndexQuery;->highLightColumns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "highLightColumn":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 68
    iget-object v7, v0, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->highLightColumns:[[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-static {v1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v2

    move v2, v3

    .line 69
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .end local v1    # "highLightColumn":Ljava/lang/String;
    .end local v2    # "i":I
    .restart local v3    # "i":I
    .restart local v5    # "returnColumn":Ljava/lang/String;
    :cond_7
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method
