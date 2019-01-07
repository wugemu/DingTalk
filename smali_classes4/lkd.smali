.class public Llkd;
.super Llgs;
.source "GroupedObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Llgs",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Llgs$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Llgs$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Llkd;, "Llkd<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "onSubscribe":Llgs$a;, "Llgs$a<TT;>;"
    invoke-direct {p0, p2}, Llgs;-><init>(Llgs$a;)V

    .line 97
    iput-object p1, p0, Llkd;->b:Ljava/lang/Object;

    .line 98
    return-void
.end method
