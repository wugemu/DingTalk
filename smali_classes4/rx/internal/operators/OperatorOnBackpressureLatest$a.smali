.class final Lrx/internal/operators/OperatorOnBackpressureLatest$a;
.super Llgy;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
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
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$a;, "Lrx/internal/operators/OperatorOnBackpressureLatest$a<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-direct {p0}, Llgy;-><init>()V

    .line 200
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$a;->a:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    .line 201
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$a;, "Lrx/internal/operators/OperatorOnBackpressureLatest$a<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$a;->a(J)V

    .line 207
    return-void
.end method

.method final b(J)V
    .locals 2
    .param p1, "n"    # J

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$a;, "Lrx/internal/operators/OperatorOnBackpressureLatest$a<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$a;->a(J)V

    .line 225
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$a;, "Lrx/internal/operators/OperatorOnBackpressureLatest$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$a;->a:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onCompleted()V

    .line 222
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$a;, "Lrx/internal/operators/OperatorOnBackpressureLatest$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$a;->a:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onError(Ljava/lang/Throwable;)V

    .line 217
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$a;, "Lrx/internal/operators/OperatorOnBackpressureLatest$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$a;->a:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onNext(Ljava/lang/Object;)V

    .line 212
    return-void
.end method
