.class public abstract Llkv;
.super Llgs;
.source "Subject.java"

# interfaces
.implements Llgt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Llgs",
        "<TR;>;",
        "Llgt",
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
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Llkv;, "Llkv<TT;TR;>;"
    .local p1, "onSubscribe":Llgs$a;, "Llgs$a<TR;>;"
    invoke-direct {p0, p1}, Llgs;-><init>(Llgs$a;)V

    .line 28
    return-void
.end method
