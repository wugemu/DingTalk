.class public final Lkgv;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkgy;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0000H\u0002J\u0013\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J5\u0010\u0011\u001a\u0002H\u0012\"\u0004\u0008\u0000\u0010\u00122\u0006\u0010\u0013\u001a\u0002H\u00122\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J(\u0010\u0017\u001a\u0004\u0018\u0001H\u0018\"\u0008\u0008\u0000\u0010\u0018*\u00020\u00042\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001aH\u0096\u0002\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0014\u0010\u001e\u001a\u00020\u00012\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0016J\u0011\u0010\u001f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0096\u0002J\u0008\u0010 \u001a\u00020\u001dH\u0002J\u0008\u0010!\u001a\u00020\"H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006#"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/CombinedContext;",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "left",
        "element",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V",
        "getElement",
        "()Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "getLeft",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "contains",
        "",
        "containsAll",
        "context",
        "equals",
        "other",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key;",
        "(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "plus",
        "size",
        "toString",
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
.field private final a:Lkgy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkgy$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkgy;Lkgy$a;)V
    .locals 1
    .param p1, "left"    # Lkgy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Lkgy$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string/jumbo v0, "left"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "element"

    invoke-static {p2, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkgv;->a:Lkgy;

    iput-object p2, p0, Lkgv;->b:Lkgy$a;

    return-void
.end method

.method private final a()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lkgv;->a:Lkgy;

    instance-of v0, v0, Lkgv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkgv;->a:Lkgy;

    check-cast v0, Lkgv;

    invoke-direct {v0}, Lkgv;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private final a(Lkgy$a;)Z
    .locals 1
    .param p1, "element"    # Lkgy$a;

    .prologue
    .line 91
    invoke-interface {p1}, Lkgy$a;->b()Lkgy$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkgv;->a(Lkgy$b;)Lkgy$a;

    move-result-object v0

    invoke-static {v0, p1}, Lkib;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lkhm;)Ljava/lang/Object;
    .locals 2
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkhm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkhm",
            "<-TR;-",
            "Lkgy$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v0, "operation"

    invoke-static {p2, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lkgv;->a:Lkgy;

    invoke-interface {v0, p1, p2}, Lkgy;->a(Ljava/lang/Object;Lkhm;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkgv;->b:Lkgy$a;

    invoke-interface {p2, v0, v1}, Lkhm;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lkgy$b;)Lkgy$a;
    .locals 4
    .param p1, "key"    # Lkgy$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkgy$a;",
            ">(",
            "Lkgy$b",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v3, "key"

    invoke-static {p1, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 59
    check-cast v0, Lkgv;

    .line 61
    .local v0, "cur":Lkgv;
    :goto_0
    iget-object v3, v0, Lkgv;->b:Lkgy$a;

    invoke-interface {v3, p1}, Lkgy$a;->a(Lkgy$b;)Lkgy$a;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lkgy$a;

    .line 66
    :goto_1
    return-object v1

    .line 62
    :cond_0
    iget-object v2, v0, Lkgv;->a:Lkgy;

    .line 63
    .local v2, "next":Lkgy;
    instance-of v3, v2, Lkgv;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 64
    check-cast v0, Lkgv;

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v2, p1}, Lkgy;->a(Lkgy$b;)Lkgy$a;

    move-result-object v1

    goto :goto_1
.end method

.method public final b(Lkgy$b;)Lkgy;
    .locals 3
    .param p1, "key"    # Lkgy$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkgy$b",
            "<*>;)",
            "Lkgy;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v1, "key"

    invoke-static {p1, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lkgv;->b:Lkgy$a;

    invoke-interface {v1, p1}, Lkgy$a;->a(Lkgy$b;)Lkgy$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkgv;->a:Lkgy;

    .line 82
    .end local p0    # "this":Lkgv;
    :goto_0
    return-object v1

    .line 79
    .restart local p0    # "this":Lkgv;
    :cond_0
    iget-object v1, p0, Lkgv;->a:Lkgy;

    invoke-interface {v1, p1}, Lkgy;->b(Lkgy$b;)Lkgy;

    move-result-object v0

    .line 81
    .local v0, "newLeft":Lkgy;
    iget-object v1, p0, Lkgv;->a:Lkgy;

    if-ne v0, v1, :cond_1

    check-cast p0, Lkgy;

    .end local p0    # "this":Lkgv;
    move-object v1, p0

    goto :goto_0

    .line 82
    .restart local p0    # "this":Lkgv;
    :cond_1
    sget-object v1, Lkha;->a:Lkha;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lkgv;->b:Lkgy$a;

    check-cast v1, Lkgy;

    goto :goto_0

    .line 83
    :cond_2
    new-instance v1, Lkgv;

    iget-object v2, p0, Lkgv;->b:Lkgy$a;

    invoke-direct {v1, v0, v2}, Lkgv;-><init>(Lkgy;Lkgy$a;)V

    check-cast v1, Lkgy;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 107
    move-object v0, p0

    check-cast v0, Lkgv;

    if-eq v0, p1, :cond_0

    instance-of v0, p1, Lkgv;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkgv;

    invoke-direct {v0}, Lkgv;->a()I

    move-result v0

    invoke-direct {p0}, Lkgv;->a()I

    move-result v2

    if-ne v0, v2, :cond_4

    check-cast p1, Lkgv;

    .line 1096
    .end local p0    # "this":Lkgv;
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    iget-object v0, p0, Lkgv;->b:Lkgy$a;

    invoke-direct {p1, v0}, Lkgv;->a(Lkgy$a;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 107
    :goto_1
    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 1097
    :cond_1
    iget-object v0, p0, Lkgv;->a:Lkgy;

    .line 1098
    instance-of v2, v0, Lkgv;

    if-eqz v2, :cond_2

    .line 1099
    check-cast v0, Lkgv;

    move-object p0, v0

    goto :goto_0

    .line 1101
    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.coroutines.experimental.CoroutineContext.Element"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Lkgy$a;

    invoke-direct {p1, v0}, Lkgv;->a(Lkgy$a;)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 107
    goto :goto_2
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lkgv;->a:Lkgy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkgv;->b:Lkgy$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    sget-object v0, Lkotlin/coroutines/experimental/CombinedContext$toString$1;->INSTANCE:Lkotlin/coroutines/experimental/CombinedContext$toString$1;

    check-cast v0, Lkhm;

    invoke-virtual {p0, v2, v0}, Lkgv;->a(Ljava/lang/Object;Lkhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method
