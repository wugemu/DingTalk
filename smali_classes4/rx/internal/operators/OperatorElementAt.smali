.class public final Lrx/internal/operators/OperatorElementAt;
.super Ljava/lang/Object;
.source "OperatorElementAt.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorElementAt$InnerProducer;
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


# instance fields
.field final a:I

.field final b:Z

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private a(Llgy;)Llgy;
    .locals 1
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
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    .local p1, "child":Llgy;, "Llgy<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorElementAt$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorElementAt$1;-><init>(Lrx/internal/operators/OperatorElementAt;Llgy;)V

    .line 88
    .local v0, "parent":Llgy;, "Llgy<TT;>;"
    invoke-virtual {p1, v0}, Llgy;->a(Llgz;)V

    .line 90
    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    check-cast p1, Llgy;

    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorElementAt;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
