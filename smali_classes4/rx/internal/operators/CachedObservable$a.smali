.class final Lrx/internal/operators/CachedObservable$a;
.super Llik;
.source "CachedObservable.java"

# interfaces
.implements Llgt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llik;",
        "Llgt",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final d:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Llky;

.field volatile c:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    sput-object v0, Lrx/internal/operators/CachedObservable$a;->d:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 218
    .local p0, "this":Lrx/internal/operators/CachedObservable$a;, "Lrx/internal/operators/CachedObservable$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$a;->c:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 219
    .local v0, "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 220
    .local v1, "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    invoke-virtual {v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/CachedObservable$a;, "Lrx/internal/operators/CachedObservable$a<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$a;->f:Z

    if-nez v1, :cond_0

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$a;->f:Z

    .line 208
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$a;->a(Ljava/lang/Object;)V

    .line 210
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$a;->b:Llky;

    invoke-virtual {v1}, Llky;->unsubscribe()V

    .line 211
    invoke-direct {p0}, Lrx/internal/operators/CachedObservable$a;->a()V

    .line 213
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    .local p0, "this":Lrx/internal/operators/CachedObservable$a;, "Lrx/internal/operators/CachedObservable$a<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$a;->f:Z

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$a;->f:Z

    .line 198
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$a;->a(Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$a;->b:Llky;

    invoke-virtual {v1}, Llky;->unsubscribe()V

    .line 201
    invoke-direct {p0}, Lrx/internal/operators/CachedObservable$a;->a()V

    .line 203
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    .local p0, "this":Lrx/internal/operators/CachedObservable$a;, "Lrx/internal/operators/CachedObservable$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$a;->f:Z

    if-nez v1, :cond_0

    .line 189
    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$a;->a(Ljava/lang/Object;)V

    .line 191
    invoke-direct {p0}, Lrx/internal/operators/CachedObservable$a;->a()V

    .line 193
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method
