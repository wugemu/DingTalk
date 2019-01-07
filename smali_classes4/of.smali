.class public final Lof;
.super Ljava/lang/Object;
.source "DDLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 82
    .local p0, "this":Lof;, "Lof<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x2710

    iput v0, p0, Lof;->c:I

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lof;->a:Ljava/util/LinkedHashMap;

    .line 88
    return-void
.end method

.method private a(I)V
    .locals 7
    .param p1, "maxSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 208
    .local p0, "this":Lof;, "Lof<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 209
    :try_start_0
    iget v4, p0, Lof;->b:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lof;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lof;->b:I

    if-eqz v4, :cond_1

    .line 210
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 214
    :cond_1
    :try_start_1
    iget v4, p0, Lof;->b:I

    if-gt v4, p1, :cond_2

    .line 215
    monitor-exit p0

    .line 230
    :goto_1
    return-void

    .line 222
    :cond_2
    const/4 v2, 0x0

    .line 223
    .local v2, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v4, p0, Lof;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v2, v0

    .line 229
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    if-nez v2, :cond_4

    .line 230
    monitor-exit p0

    goto :goto_1

    .line 233
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 235
    .local v3, "value":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lof;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget v4, p0, Lof;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lof;->b:I

    .line 237
    iget v4, p0, Lof;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lof;->f:I

    .line 238
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    .local p0, "this":Lof;, "Lof<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v1, p0, Lof;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    .line 132
    iget v1, p0, Lof;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lof;->g:I

    .line 133
    monitor-exit p0

    .line 147
    .end local v0    # "mapValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    .line 135
    .restart local v0    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget v1, p0, Lof;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lof;->h:I

    .line 136
    monitor-exit p0

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    .end local v0    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    .local p0, "this":Lof;, "Lof<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    monitor-enter p0

    .line 184
    :try_start_0
    iget v1, p0, Lof;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lof;->d:I

    .line 185
    iget v1, p0, Lof;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lof;->b:I

    .line 186
    iget-object v1, p0, Lof;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 188
    iget v1, p0, Lof;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lof;->b:I

    .line 190
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget v1, p0, Lof;->c:I

    invoke-direct {p0, v1}, Lof;->a(I)V

    .line 197
    return-object v0

    .line 190
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lof;, "Lof<TK;TV;>;"
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lof;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 109
    iput v1, p0, Lof;->d:I

    .line 110
    iput v1, p0, Lof;->e:I

    .line 111
    iput v1, p0, Lof;->f:I

    .line 112
    iput v1, p0, Lof;->g:I

    .line 113
    iput v1, p0, Lof;->h:I

    .line 114
    iput v1, p0, Lof;->b:I

    .line 115
    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lof;, "Lof<TK;TV;>;"
    const/4 v1, 0x0

    .line 395
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lof;->g:I

    iget v3, p0, Lof;->h:I

    add-int v0, v2, v3

    .line 396
    .local v0, "accesses":I
    if-eqz v0, :cond_0

    iget v2, p0, Lof;->g:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 397
    .local v1, "hitPercent":I
    :cond_0
    const-string/jumbo v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lof;->c:I

    .line 398
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lof;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lof;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 397
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 395
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
