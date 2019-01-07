.class public final Lrx/internal/operators/OperatorGroupBy$a;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/internal/operators/OperatorGroupBy$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$b",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorGroupBy$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorGroupBy$b",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "parent":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$a;->a:Lrx/internal/operators/OperatorGroupBy$b;

    .line 104
    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$a;->a:Lrx/internal/operators/OperatorGroupBy$b;

    .line 1282
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_0
    iget-object v1, v0, Lrx/internal/operators/OperatorGroupBy$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Llhn;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1287
    invoke-virtual {v0}, Lrx/internal/operators/OperatorGroupBy$b;->b()V

    .line 108
    return-void
.end method
