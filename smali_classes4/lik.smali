.class public Llik;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final g:I

.field public h:[Ljava/lang/Object;

.field i:[Ljava/lang/Object;

.field public volatile j:I

.field k:I


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    iget v1, p0, Llik;->j:I

    if-nez v1, :cond_0

    .line 58
    iget v1, p0, Llik;->g:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Llik;->h:[Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Llik;->h:[Ljava/lang/Object;

    iput-object v1, p0, Llik;->i:[Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Llik;->h:[Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 61
    iput v3, p0, Llik;->k:I

    .line 62
    iput v3, p0, Llik;->j:I

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    iget v1, p0, Llik;->k:I

    iget v2, p0, Llik;->g:I

    if-ne v1, v2, :cond_1

    .line 66
    iget v1, p0, Llik;->g:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 67
    .local v0, "t":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 68
    iget-object v1, p0, Llik;->i:[Ljava/lang/Object;

    iget v2, p0, Llik;->g:I

    aput-object v0, v1, v2

    .line 69
    iput-object v0, p0, Llik;->i:[Ljava/lang/Object;

    .line 70
    iput v3, p0, Llik;->k:I

    .line 71
    iget v1, p0, Llik;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llik;->j:I

    goto :goto_0

    .line 73
    .end local v0    # "t":[Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Llik;->i:[Ljava/lang/Object;

    iget v2, p0, Llik;->k:I

    aput-object p1, v1, v2

    .line 74
    iget v1, p0, Llik;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llik;->k:I

    .line 75
    iget v1, p0, Llik;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llik;->j:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 134
    .line 1114
    iget v4, p0, Llik;->g:I

    .line 1115
    iget v5, p0, Llik;->j:I

    .line 1116
    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v0, v5, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2083
    iget-object v0, p0, Llik;->h:[Ljava/lang/Object;

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 1121
    :cond_0
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1122
    aget-object v7, v3, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v2, v2, 0x1

    .line 1124
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    .line 1126
    aget-object v0, v3, v4

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    move v0, v1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
