.class final Lrx/internal/operators/OperatorGroupBy$c;
.super Llkd;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Llkd",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/internal/operators/OperatorGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/internal/operators/OperatorGroupBy$State",
            "<TT;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$c;, "Lrx/internal/operators/OperatorGroupBy$c<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    invoke-direct {p0, p1, p2}, Llkd;-><init>(Ljava/lang/Object;Llgs$a;)V

    .line 405
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$c;->b:Lrx/internal/operators/OperatorGroupBy$State;

    .line 406
    return-void
.end method

.method public static a(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$b;Z)Lrx/internal/operators/OperatorGroupBy$c;
    .locals 2
    .param p1, "bufferSize"    # I
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lrx/internal/operators/OperatorGroupBy$b",
            "<*TK;TT;>;Z)",
            "Lrx/internal/operators/OperatorGroupBy$c",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parent":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<*TK;TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lrx/internal/operators/OperatorGroupBy$State;-><init>(ILrx/internal/operators/OperatorGroupBy$b;Ljava/lang/Object;Z)V

    .line 400
    .local v0, "state":Lrx/internal/operators/OperatorGroupBy$State;, "Lrx/internal/operators/OperatorGroupBy$State<TT;TK;>;"
    new-instance v1, Lrx/internal/operators/OperatorGroupBy$c;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorGroupBy$c;-><init>(Ljava/lang/Object;Lrx/internal/operators/OperatorGroupBy$State;)V

    return-object v1
.end method
