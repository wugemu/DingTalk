.class final Lfr$c;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfr;


# direct methods
.method constructor <init>(Lfr;)V
    .locals 0
    .param p1, "this$0"    # Lfr;

    .prologue
    .line 267
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    iput-object p1, p0, Lfr$c;->a:Lfr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 281
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v0}, Lfr;->c()V

    .line 282
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 286
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v0, p1}, Lfr;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v0}, Lfr;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lfr;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    invoke-static {p0, p1}, Lfr;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    const/4 v4, 0x0

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, "result":I
    iget-object v3, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v3}, Lfr;->a()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 348
    iget-object v3, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v3, v0, v4}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v1

    .line 349
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 351
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v0}, Lfr;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 301
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    new-instance v0, Lfr$a;

    iget-object v1, p0, Lfr$c;->a:Lfr;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr$a;-><init>(Lfr;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 306
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    iget-object v1, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v1, p1}, Lfr;->a(Ljava/lang/Object;)I

    move-result v0

    .line 307
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 308
    iget-object v1, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v1, v0}, Lfr;->a(I)V

    .line 309
    const/4 v1, 0x1

    .line 311
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v0}, Lfr;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lfr;->b(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v0}, Lfr;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lfr;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    invoke-virtual {v0}, Lfr;->a()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 331
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 336
    .local p0, "this":Lfr$c;, "Lfr<TK;TV;>.c;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lfr$c;->a:Lfr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfr;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
