.class public abstract Llkc;
.super Llgs;
.source "ConnectableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgs",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Llgs$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Llkc;, "Llkc<TT;>;"
    .local p1, "onSubscribe":Llgs$a;, "Llgs$a<TT;>;"
    invoke-direct {p0, p1}, Llgs;-><init>(Llgs$a;)V

    .line 39
    return-void
.end method


# virtual methods
.method public abstract a(Llhg;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llhg",
            "<-",
            "Llgz;",
            ">;)V"
        }
    .end annotation
.end method
