.class public abstract Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.super Lkotlin/jvm/internal/Lambda;
.source "CoroutineImpl.kt"

# interfaces
.implements Lkgw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkgw",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002\u00a2\u0006\u0002\u0010\u0007J$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016J\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00022\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016J\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H$J\u0012\u0010\u0019\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u00058\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/coroutines/experimental/Continuation;",
        "",
        "arity",
        "",
        "completion",
        "(ILkotlin/coroutines/experimental/Continuation;)V",
        "_context",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "_facade",
        "context",
        "getContext",
        "()Lkotlin/coroutines/experimental/CoroutineContext;",
        "facade",
        "getFacade",
        "()Lkotlin/coroutines/experimental/Continuation;",
        "label",
        "create",
        "",
        "value",
        "doResume",
        "data",
        "exception",
        "",
        "resume",
        "resumeWithException",
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
.field private final _context:Lkgy;

.field private _facade:Lkgw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkgw",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected completion:Lkgw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkgw",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected label:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkgw;)V
    .locals 1
    .param p1, "arity"    # I
    .param p2, "completion"    # Lkgw;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkgw",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .line 33
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    iput-object p2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkgw;

    .line 38
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkgw;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    .line 40
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkgw;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkgw;->getContext()Lkgy;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkgy;

    return-void

    .line 38
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lkgw;)Lkgw;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "completion"    # Lkgw;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkgw",
            "<*>;)",
            "Lkgw",
            "<",
            "Lkfs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v0, "completion"

    invoke-static {p2, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "create(Any?;Continuation) has not been overridden"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public create(Lkgw;)Lkgw;
    .locals 2
    .param p1, "completion"    # Lkgw;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkgw",
            "<*>;)",
            "Lkgw",
            "<",
            "Lkfs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v0, "completion"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "create(Continuation) has not been overridden"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected abstract doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public getContext()Lkgy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkgy;

    if-nez v0, :cond_0

    invoke-static {}, Lkib;->a()V

    :cond_0
    return-object v0
.end method

.method public final getFacade()Lkgw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkgw",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkgw;

    if-nez v0, :cond_2

    iget-object v2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_context:Lkgy;

    if-nez v2, :cond_0

    invoke-static {}, Lkib;->a()V

    :cond_0
    move-object v0, p0

    check-cast v0, Lkgw;

    const-string/jumbo v1, "context"

    invoke-static {v2, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "continuation"

    invoke-static {v0, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    sget-object v1, Lkgx;->a:Lkgx$a;

    check-cast v1, Lkgy$b;

    invoke-interface {v2, v1}, Lkgy;->a(Lkgy$b;)Lkgy$a;

    move-result-object v1

    check-cast v1, Lkgx;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkgx;->a()Lkgw;

    move-result-object v1

    if-nez v1, :cond_4

    .line 48
    :cond_1
    :goto_0
    iput-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkgw;

    .line 49
    :cond_2
    iget-object v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->_facade:Lkgw;

    if-nez v0, :cond_3

    invoke-static {}, Lkib;->a()V

    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    iget-object v2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkgw;

    if-nez v2, :cond_0

    invoke-static {}, Lkib;->a()V

    .line 54
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-static {}, Lkhb;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v3, v1, :cond_1

    if-nez v2, :cond_2

    new-instance v1, Lkotlin/TypeCastException;

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-interface {v2, v1}, Lkgw;->resumeWithException(Ljava/lang/Throwable;)V

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    :try_start_1
    move-object v0, v2

    check-cast v0, Lkgw;

    move-object v1, v0

    invoke-interface {v1, v3}, Lkgw;->resume(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public resumeWithException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v1, "exception"

    invoke-static {p1, v1}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->completion:Lkgw;

    if-nez v2, :cond_0

    invoke-static {}, Lkib;->a()V

    .line 60
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    invoke-static {}, Lkhb;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v3, v1, :cond_1

    if-nez v2, :cond_2

    new-instance v1, Lkotlin/TypeCastException;

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.coroutines.experimental.Continuation<kotlin.Any?>"

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-interface {v2, v1}, Lkgw;->resumeWithException(Ljava/lang/Throwable;)V

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    :try_start_1
    move-object v0, v2

    check-cast v0, Lkgw;

    move-object v1, v0

    invoke-interface {v1, v3}, Lkgw;->resume(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
