.class public final Lrx/internal/operators/OperatorOnBackpressureLatest;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureLatest.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureLatest$a;,
        Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Llgy;)Llgy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-TT;>;)",
            "Llgy",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "child":Llgy;, "Llgy<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;-><init>(Llgy;)V

    .line 47
    .local v1, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureLatest$a;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$a;-><init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V

    .line 48
    .local v0, "parent":Lrx/internal/operators/OperatorOnBackpressureLatest$a;, "Lrx/internal/operators/OperatorOnBackpressureLatest$a<TT;>;"
    iput-object v0, v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->parent:Lrx/internal/operators/OperatorOnBackpressureLatest$a;

    .line 49
    invoke-virtual {p0, v0}, Llgy;->a(Llgz;)V

    .line 50
    invoke-virtual {p0, v1}, Llgy;->a(Llgz;)V

    .line 51
    invoke-virtual {p0, v1}, Llgy;->a(Llgu;)V

    .line 52
    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    check-cast p1, Llgy;

    invoke-static {p1}, Lrx/internal/operators/OperatorOnBackpressureLatest;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
