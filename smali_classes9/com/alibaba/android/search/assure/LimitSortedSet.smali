.class public Lcom/alibaba/android/search/assure/LimitSortedSet;
.super Ljava/lang/Object;
.source "LimitSortedSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private count:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final maxSize:I


# direct methods
.method constructor <init>(ILjava/util/Comparator;)V
    .locals 2
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "maxSize <= 0"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcpd;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    .line 36
    iput p1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->maxSize:I

    .line 37
    iput-object p2, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->mComparator:Ljava/util/Comparator;

    .line 38
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/alibaba/android/search/assure/LimitSortedSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/assure/LimitSortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    .local p1, "list":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    .line 28
    iget v0, p1, Lcom/alibaba/android/search/assure/LimitSortedSet;->maxSize:I

    iput v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->maxSize:I

    .line 29
    iget-object v0, p1, Lcom/alibaba/android/search/assure/LimitSortedSet;->mComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->mComparator:Ljava/util/Comparator;

    .line 30
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 55
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :cond_0
    monitor-exit p0

    .line 70
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    .local v0, "isAdded":Z
    iget v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    iget v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    iget v2, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->maxSize:I

    if-le v1, v2, :cond_2

    .line 64
    iget v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->maxSize:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/assure/LimitSortedSet;->trimToSize(I)V

    .line 67
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/LimitSortedSet;->entryAdded(Ljava/lang/Object;)V

    .line 70
    :cond_3
    monitor-exit p0

    goto :goto_0

    .end local v0    # "isAdded":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    .line 51
    return-void
.end method

.method protected entryAdded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method protected entryRemoved(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 115
    if-ne p0, p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v5

    .line 119
    :cond_1
    instance-of v7, p1, Lcom/alibaba/android/search/assure/LimitSortedSet;

    if-nez v7, :cond_2

    move v5, v6

    .line 120
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 123
    check-cast v2, Lcom/alibaba/android/search/assure/LimitSortedSet;

    .line 125
    .local v2, "limitSortedSet":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    iget v7, v2, Lcom/alibaba/android/search/assure/LimitSortedSet;->maxSize:I

    iget v8, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->maxSize:I

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    iget v7, v2, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    iget v8, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    if-eq v7, v8, :cond_4

    move v5, v6

    .line 130
    goto :goto_0

    .line 133
    :cond_4
    iget-object v0, v2, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    .line 135
    .local v0, "evaluatedList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 137
    .local v3, "size":I
    iget-object v7, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v3, v7, :cond_5

    move v5, v6

    .line 138
    goto :goto_0

    .line 141
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 143
    .local v4, "theE":Ljava/lang/Object;, "TE;"
    if-nez v4, :cond_6

    move v5, v6

    .line 144
    goto :goto_0

    .line 147
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move v5, v6

    .line 148
    goto :goto_0

    .line 141
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    iget v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    .local p1, "entry":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/LimitSortedSet;->entryRemoved(Ljava/lang/Object;)V

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resort()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized snapshot()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimToSize(I)V
    .locals 3
    .param p1, "maxSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    .local p0, "this":Lcom/alibaba/android/search/assure/LimitSortedSet;, "Lcom/alibaba/android/search/assure/LimitSortedSet<TE;>;"
    monitor-enter p0

    .line 90
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    if-le v1, p1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "entry":Ljava/lang/Object;, "TE;"
    iget v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/android/search/assure/LimitSortedSet;->count:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/assure/LimitSortedSet;->entryRemoved(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v0    # "entry":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
