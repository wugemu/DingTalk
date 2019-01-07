.class public final Lrx/internal/operators/OperatorGroupBy;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Llgs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$State;,
        Lrx/internal/operators/OperatorGroupBy$c;,
        Lrx/internal/operators/OperatorGroupBy$b;,
        Lrx/internal/operators/OperatorGroupBy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$b",
        "<",
        "Llkd",
        "<TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z

.field final e:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<",
            "Llhg",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private a(Llgy;)Llgy;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<-",
            "Llkd",
            "<TK;TV;>;>;)",
            "Llgy",
            "<-TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    .local p1, "child":Llgy;, "Llgy<-Llkd<TK;TV;>;>;"
    :try_start_0
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$b;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy;->a:Llhk;

    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy;->b:Llhk;

    iget v4, p0, Lrx/internal/operators/OperatorGroupBy;->c:I

    iget-boolean v5, p0, Lrx/internal/operators/OperatorGroupBy;->d:Z

    iget-object v6, p0, Lrx/internal/operators/OperatorGroupBy;->e:Llhk;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/OperatorGroupBy$b;-><init>(Llgy;Llhk;Llhk;IZLlhk;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "parent":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    new-instance v1, Lrx/internal/operators/OperatorGroupBy$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorGroupBy$1;-><init>(Lrx/internal/operators/OperatorGroupBy;Lrx/internal/operators/OperatorGroupBy$b;)V

    invoke-static {v1}, Llkz;->a(Llhf;)Llgz;

    move-result-object v1

    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V

    .line 94
    iget-object v1, v0, Lrx/internal/operators/OperatorGroupBy$b;->h:Lrx/internal/operators/OperatorGroupBy$a;

    invoke-virtual {p1, v1}, Llgy;->a(Llgu;)V

    .line 96
    .end local v0    # "parent":Lrx/internal/operators/OperatorGroupBy$b;, "Lrx/internal/operators/OperatorGroupBy$b<TT;TK;TV;>;"
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v7

    .line 81
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, p1}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    .line 1039
    invoke-static {}, Llke;->a()Llgt;

    move-result-object v1

    .line 1051
    new-instance v8, Llkj$1;

    invoke-direct {v8, v1}, Llkj$1;-><init>(Llgt;)V

    .line 83
    .local v8, "parent2":Llgy;, "Llgy<-TT;>;"
    invoke-virtual {v8}, Llgy;->unsubscribe()V

    move-object v0, v8

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TV;>;"
    check-cast p1, Llgy;

    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorGroupBy;->a(Llgy;)Llgy;

    move-result-object v0

    return-object v0
.end method
