.class public final Lkjv$a;
.super Lkft;
.source "Regex.kt"

# interfaces
.implements Lkjt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkjv;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkft",
        "<",
        "Lkjr;",
        ">;",
        "Lkjt;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0096\u0002J\u0013\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0011\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0010H\u0096\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "kotlin/text/MatcherMatchResult$groups$1",
        "Lkotlin/text/MatchNamedGroupCollection;",
        "Lkotlin/collections/AbstractCollection;",
        "Lkotlin/text/MatchGroup;",
        "(Lkotlin/text/MatcherMatchResult;)V",
        "size",
        "",
        "getSize",
        "()I",
        "get",
        "index",
        "name",
        "",
        "isEmpty",
        "",
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
.field public final synthetic a:Lkjv;


# direct methods
.method constructor <init>(Lkjv;)V
    .locals 0
    .param p1, "$outer"    # Lkjv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 236
    iput-object p1, p0, Lkjv$a;->a:Lkjv;

    invoke-direct {p0}, Lkft;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lkjv$a;->a:Lkjv;

    .line 2229
    iget-object v0, v0, Lkjv;->a:Ljava/util/regex/MatchResult;

    .line 237
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 236
    if-eqz p1, :cond_0

    instance-of v0, p1, Lkjr;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lkjr;

    .line 5236
    invoke-super {p0, p1}, Lkft;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lkjr;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 240
    const-string/jumbo v0, "$receiver"

    invoke-static {p0, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3141
    const/4 v1, 0x0

    new-instance v0, Lkir;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lkir;-><init>(II)V

    .line 240
    check-cast v0, Ljava/lang/Iterable;

    const-string/jumbo v1, "$receiver"

    invoke-static {v0, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4048
    new-instance v1, Lkgi$a;

    invoke-direct {v1, v0}, Lkgi$a;-><init>(Ljava/lang/Iterable;)V

    move-object v0, v1

    check-cast v0, Lkji;

    .line 240
    new-instance v1, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    invoke-direct {v1, p0}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Lkjv$a;)V

    check-cast v1, Lkhl;

    const-string/jumbo v2, "$receiver"

    invoke-static {v0, v2}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "transform"

    invoke-static {v1, v2}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4685
    new-instance v2, Lkjm;

    invoke-direct {v2, v0, v1}, Lkjm;-><init>(Lkji;Lkhl;)V

    move-object v0, v2

    check-cast v0, Lkji;

    .line 240
    invoke-interface {v0}, Lkji;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
