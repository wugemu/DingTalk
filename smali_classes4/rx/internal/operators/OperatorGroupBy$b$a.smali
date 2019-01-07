.class final Lrx/internal/operators/OperatorGroupBy$b$a;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Llhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llhg",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b$a;, "Lrx/internal/operators/OperatorGroupBy$b$a<TK;>;"
    .local p1, "evictedKeys":Ljava/util/Queue;, "Ljava/util/Queue<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$b$a;->a:Ljava/util/Queue;

    .line 169
    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$b$a;, "Lrx/internal/operators/OperatorGroupBy$b$a<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$b$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
