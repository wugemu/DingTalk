.class final Lrx/internal/util/InternalObservableUtils$m;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Llhj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llhj",
        "<",
        "Llkc",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/TimeUnit;

.field private final c:Llgv;

.field private final d:I

.field private final e:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llgs;IJLjava/util/concurrent/TimeUnit;Llgv;)V
    .locals 1
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Llgv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$m;, "Lrx/internal/util/InternalObservableUtils$m<TT;>;"
    .local p1, "source":Llgs;, "Llgs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-wide p3, p0, Lrx/internal/util/InternalObservableUtils$m;->a:J

    .line 346
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$m;->b:Ljava/util/concurrent/TimeUnit;

    .line 347
    iput-object p6, p0, Lrx/internal/util/InternalObservableUtils$m;->c:Llgv;

    .line 348
    iput p2, p0, Lrx/internal/util/InternalObservableUtils$m;->d:I

    .line 349
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$m;->e:Llgs;

    .line 350
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 336
    .line 9354
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$m;, "Lrx/internal/util/InternalObservableUtils$m<TT;>;"
    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$m;->e:Llgs;

    iget v6, p0, Lrx/internal/util/InternalObservableUtils$m;->d:I

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$m;->a:J

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$m;->b:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/internal/util/InternalObservableUtils$m;->c:Llgv;

    .line 9924
    if-gez v6, :cond_0

    .line 9925
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9927
    :cond_0
    invoke-static/range {v1 .. v6}, Lrx/internal/operators/OperatorReplay;->a(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;I)Llkc;

    move-result-object v0

    .line 336
    return-object v0
.end method
