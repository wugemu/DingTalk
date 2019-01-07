.class public final Lkjl$b;
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
        "kotlin/sequences/SequencesKt___SequencesKt$minus$2",
        "Lkotlin/sequences/Sequence;",
        "(Lkotlin/sequences/Sequence;[Ljava/lang/Object;)V",
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

.field final synthetic b:[Ljava/lang/Object;


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1155
    iget-object v2, p0, Lkjl$b;->b:[Ljava/lang/Object;

    const-string/jumbo v1, "$receiver"

    invoke-static {v2, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7578
    new-instance v1, Ljava/util/HashSet;

    array-length v3, v2

    invoke-static {v3}, Lkgp;->a(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v2, v1}, Lkfv;->a([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1156
    .local v0, "other":Ljava/util/HashSet;
    iget-object v2, p0, Lkjl$b;->a:Lkji;

    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$minus$2$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$2$iterator$1;-><init>(Ljava/util/HashSet;)V

    check-cast v1, Lkhl;

    invoke-static {v2, v1}, Lkjj;->a(Lkji;Lkhl;)Lkji;

    move-result-object v1

    invoke-interface {v1}, Lkji;->a()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
