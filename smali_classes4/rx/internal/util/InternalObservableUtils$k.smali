.class final Lrx/internal/util/InternalObservableUtils$k;
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
    name = "k"
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
.field private final a:Ljava/util/concurrent/TimeUnit;

.field private final b:Llgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Llgv;


# direct methods
.method constructor <init>(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Llgv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$k;, "Lrx/internal/util/InternalObservableUtils$k<TT;>;"
    .local p1, "source":Llgs;, "Llgs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p4, p0, Lrx/internal/util/InternalObservableUtils$k;->a:Ljava/util/concurrent/TimeUnit;

    .line 307
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$k;->b:Llgs;

    .line 308
    iput-wide p2, p0, Lrx/internal/util/InternalObservableUtils$k;->c:J

    .line 309
    iput-object p5, p0, Lrx/internal/util/InternalObservableUtils$k;->d:Llgv;

    .line 310
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 299
    .line 9314
    .local p0, "this":Lrx/internal/util/InternalObservableUtils$k;, "Lrx/internal/util/InternalObservableUtils$k<TT;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$k;->b:Llgs;

    iget-wide v2, p0, Lrx/internal/util/InternalObservableUtils$k;->c:J

    iget-object v1, p0, Lrx/internal/util/InternalObservableUtils$k;->a:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lrx/internal/util/InternalObservableUtils$k;->d:Llgv;

    .line 10013
    invoke-static {v0, v2, v3, v1, v4}, Lrx/internal/operators/OperatorReplay;->a(Llgs;JLjava/util/concurrent/TimeUnit;Llgv;)Llkc;

    move-result-object v0

    .line 299
    return-object v0
.end method
