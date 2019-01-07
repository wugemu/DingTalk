.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Llgs;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llgs",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string/jumbo v1, "rx.just.strong-mode"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "wp":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lrx/internal/util/ScalarSynchronousObservable;->c:Z

    .line 49
    return-void
.end method


# virtual methods
.method public final b(Llgv;)Llgs;
    .locals 4
    .param p1, "scheduler"    # Llgv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgv;",
            ")",
            "Llgs",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    instance-of v2, p1, Llib;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 98
    check-cast v0, Llib;

    .line 99
    .local v0, "els":Llib;
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Llib;)V

    .line 125
    .end local v0    # "els":Llib;
    .local v1, "onSchedule":Llhk;, "Llhk<Llhf;Llgz;>;"
    :goto_0
    new-instance v2, Lrx/internal/util/ScalarSynchronousObservable$a;

    iget-object v3, p0, Lrx/internal/util/ScalarSynchronousObservable;->b:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lrx/internal/util/ScalarSynchronousObservable$a;-><init>(Ljava/lang/Object;Llhk;)V

    invoke-static {v2}, Lrx/internal/util/ScalarSynchronousObservable;->b(Llgs$a;)Llgs;

    move-result-object v2

    return-object v2

    .line 106
    .end local v1    # "onSchedule":Llhk;, "Llhk<Llhf;Llgz;>;"
    :cond_0
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Llgv;)V

    .restart local v1    # "onSchedule":Llhk;, "Llhk<Llhf;Llgz;>;"
    goto :goto_0
.end method
