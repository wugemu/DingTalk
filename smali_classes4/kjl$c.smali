.class public final Lkjl$c;
.super Ljava/lang/Object;
.source "_Sequences.kt"

# interfaces
.implements Lkji;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkjl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkji",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0096\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "kotlin/sequences/SequencesKt___SequencesKt$minus$3",
        "Lkotlin/sequences/Sequence;",
        "(Lkotlin/sequences/Sequence;Ljava/lang/Iterable;)V",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic a:Lkji;

.field final synthetic b:Ljava/lang/Iterable;


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1170
    iget-object v1, p0, Lkjl$c;->b:Ljava/lang/Iterable;

    const-string/jumbo v2, "$receiver"

    invoke-static {v1, v2}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    instance-of v2, v1, Ljava/util/Set;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/Collection;

    move-object v0, v1

    .line 1171
    .local v0, "other":Ljava/util/Collection;
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1172
    iget-object v1, p0, Lkjl$c;->a:Lkji;

    invoke-interface {v1}, Lkji;->a()Ljava/util/Iterator;

    move-result-object v1

    .line 1174
    :goto_1
    return-object v1

    .line 2069
    .end local v0    # "other":Ljava/util/Collection;
    :cond_0
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    .line 3051
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    instance-of v2, v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 2069
    :goto_2
    if-eqz v2, :cond_2

    invoke-static {v1}, Lkgc;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object v0, v1

    goto :goto_0

    .line 3051
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 2069
    :cond_2
    check-cast v1, Ljava/util/Collection;

    move-object v0, v1

    goto :goto_0

    .line 2070
    :cond_3
    invoke-static {v1}, Lkgc;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    move-object v0, v1

    goto :goto_0

    .line 1174
    .restart local v0    # "other":Ljava/util/Collection;
    :cond_4
    iget-object v2, p0, Lkjl$c;->a:Lkji;

    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3$iterator$1;-><init>(Ljava/util/Collection;)V

    check-cast v1, Lkhl;

    invoke-static {v2, v1}, Lkjj;->a(Lkji;Lkhl;)Lkji;

    move-result-object v1

    invoke-interface {v1}, Lkji;->a()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1
.end method
