.class public final Lffi;
.super Ljava/lang/Object;
.source "Lists.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static a(I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, " size <= 0"

    invoke-static {v0, v1}, Lffe;->a(ZLjava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "coll1":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "coll2":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 33
    if-nez p0, :cond_2

    .line 34
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-nez p1, :cond_3

    move v6, v7

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    if-eq p0, p1, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 42
    .local v2, "size1":I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 43
    .local v3, "size2":I
    if-eq v2, v3, :cond_4

    move v6, v7

    .line 44
    goto :goto_0

    .line 47
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    .local v0, "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 52
    .local v4, "t1":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 53
    .local v5, "t2":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_6

    .line 54
    if-eqz v5, :cond_5

    move v6, v7

    .line 55
    goto :goto_0

    .line 57
    :cond_6
    if-nez v5, :cond_7

    move v6, v7

    .line 58
    goto :goto_0

    .line 60
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 61
    goto :goto_0
.end method
