.class public Lcom/j256/ormlite/dao/EagerForeignCollection;
.super Lcom/j256/ormlite/dao/BaseForeignCollection;
.source "EagerForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableWrappedIterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/dao/BaseForeignCollection",
        "<TT;TID;>;",
        "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2304b05d8755d8d9L


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "parentId"    # Ljava/lang/Object;
    .param p4, "foreignFieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p5, "orderColumn"    # Ljava/lang/String;
    .param p6, "orderAscending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct/range {p0 .. p6}, Lcom/j256/ormlite/dao/BaseForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    .line 35
    if-nez p3, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->b(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/j256/ormlite/dao/EagerForeignCollection;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-super {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-super {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 187
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    return-void
.end method

.method public closeLastIterator()V
    .locals 0

    .prologue
    .line 192
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public closeableIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 211
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    instance-of v1, p1, Lcom/j256/ormlite/dao/EagerForeignCollection;

    if-nez v1, :cond_0

    .line 309
    const/4 v1, 0x0

    .line 313
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 312
    check-cast v0, Lcom/j256/ormlite/dao/EagerForeignCollection;

    .line 313
    .local v0, "other":Lcom/j256/ormlite/dao/EagerForeignCollection;
    iget-object v1, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    iget-object v2, v0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    return-object p0
.end method

.method public getWrappedIterable(I)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEager()Z
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorThrow(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/dao/EagerForeignCollection$1;-><init>(Lcom/j256/ormlite/dao/EagerForeignCollection;)V

    return-object v0
.end method

.method public refreshAll()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v2, 0x0

    .line 291
    .local v2, "updatedC":I
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "data":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->d(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 293
    goto :goto_0

    .line 294
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_0
    return v2
.end method

.method public refreshCollection()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->b(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    .line 300
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    iget-object v4, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 256
    :cond_1
    :goto_0
    return v2

    .line 254
    :cond_2
    move-object v0, p1

    .line 256
    .local v0, "castData":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->e(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Could not delete data element from dao"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 265
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 266
    .local v1, "data":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "data":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-super {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateAll()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v2, 0x0

    .line 282
    .local v2, "updatedC":I
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "data":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->c(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 284
    goto :goto_0

    .line 285
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_0
    return v2
.end method
