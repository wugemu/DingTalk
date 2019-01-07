.class public final Lkjh$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkjh;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
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
        "\u0000#\n\u0000\n\u0002\u0010(\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\t\u0010\u0014\u001a\u00020\u0015H\u0096\u0002J\u000e\u0010\u0016\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0008R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u001e\u0010\u0006\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "kotlin/sequences/FilteringSequence$iterator$1",
        "",
        "(Lkotlin/sequences/FilteringSequence;)V",
        "iterator",
        "getIterator",
        "()Ljava/util/Iterator;",
        "nextItem",
        "getNextItem",
        "()Ljava/lang/Object;",
        "setNextItem",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "nextState",
        "",
        "getNextState",
        "()I",
        "setNextState",
        "(I)V",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
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
.field final synthetic a:Lkjh;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkjh;)V
    .locals 1
    .param p1, "$outer"    # Lkjh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lkjh$a;->a:Lkjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3090
    iget-object v0, p1, Lkjh;->a:Lkji;

    .line 96
    invoke-interface {v0}, Lkji;->a()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lkjh$a;->b:Ljava/util/Iterator;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lkjh$a;->c:I

    return-void
.end method

.method private final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    :cond_0
    iget-object v1, p0, Lkjh$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lkjh$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "item":Ljava/lang/Object;
    iget-object v1, p0, Lkjh$a;->a:Lkjh;

    .line 1090
    iget-object v1, v1, Lkjh;->c:Lkhl;

    .line 103
    invoke-interface {v1, v0}, Lkhl;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lkjh$a;->a:Lkjh;

    .line 2090
    iget-boolean v2, v2, Lkjh;->b:Z

    .line 103
    if-ne v1, v2, :cond_0

    .line 104
    iput-object v0, p0, Lkjh$a;->d:Ljava/lang/Object;

    .line 105
    const/4 v1, 0x1

    iput v1, p0, Lkjh$a;->c:I

    .line 110
    .end local v0    # "item":Ljava/lang/Object;
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lkjh$a;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 124
    iget v1, p0, Lkjh$a;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 125
    invoke-direct {p0}, Lkjh$a;->a()V

    .line 126
    :cond_0
    iget v1, p0, Lkjh$a;->c:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 113
    iget v1, p0, Lkjh$a;->c:I

    if-ne v1, v2, :cond_0

    .line 114
    invoke-direct {p0}, Lkjh$a;->a()V

    .line 115
    :cond_0
    iget v1, p0, Lkjh$a;->c:I

    if-nez v1, :cond_1

    .line 116
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 117
    :cond_1
    iget-object v0, p0, Lkjh$a;->d:Ljava/lang/Object;

    .line 118
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lkjh$a;->d:Ljava/lang/Object;

    .line 119
    iput v2, p0, Lkjh$a;->c:I

    .line 120
    check-cast v0, Ljava/lang/Object;

    .end local v0    # "result":Ljava/lang/Object;
    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
