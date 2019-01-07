.class public final Lrx/internal/operators/OnSubscribeUsing;
.super Ljava/lang/Object;
.source "OnSubscribeUsing.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeUsing$DisposeAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Llhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhj",
            "<TResource;>;"
        }
    .end annotation
.end field

.field private final b:Llhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhk",
            "<-TResource;+",
            "Llgs",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method private static a(Llhf;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "disposeOnceOnly"    # Llhf;

    .prologue
    .line 114
    :try_start_0
    invoke-interface {p0}, Llhf;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing;, "Lrx/internal/operators/OnSubscribeUsing<TT;TResource;>;"
    check-cast p1, Llgy;

    .line 1054
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeUsing;->a:Llhj;

    invoke-interface {v0}, Llhj;->call()Ljava/lang/Object;

    move-result-object v0

    .line 1056
    new-instance v1, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeUsing;->c:Llhg;

    invoke-direct {v1, v2, v0}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;-><init>(Llhg;Ljava/lang/Object;)V

    .line 1059
    invoke-virtual {p1, v1}, Llgy;->a(Llgz;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1064
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeUsing;->b:Llhk;

    .line 1066
    invoke-interface {v2, v0}, Llhk;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgs;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1082
    :try_start_2
    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeUsing;->d:Z

    if-eqz v2, :cond_1

    .line 1085
    invoke-virtual {v0, v1}, Llgs;->a(Llhf;)Llgs;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1094
    :goto_0
    :try_start_3
    invoke-static {p1}, Llkj;->a(Llgy;)Llgy;

    move-result-object v2

    invoke-virtual {v0, v2}, Llgs;->a(Llgy;)Llgz;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1109
    :goto_1
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    :try_start_4
    invoke-static {v1}, Lrx/internal/operators/OnSubscribeUsing;->a(Llhf;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1069
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1070
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1071
    if-eqz v1, :cond_0

    .line 1072
    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v2}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1106
    :catch_1
    move-exception v0

    .line 1108
    invoke-static {v0, p1}, Llhe;->a(Ljava/lang/Throwable;Llgt;)V

    goto :goto_1

    .line 1075
    :cond_0
    :try_start_5
    invoke-virtual {p1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1089
    :cond_1
    invoke-virtual {v0, v1}, Llgs;->b(Llhf;)Llgs;

    move-result-object v0

    goto :goto_0

    .line 1095
    :catch_2
    move-exception v0

    .line 1096
    invoke-static {v1}, Lrx/internal/operators/OnSubscribeUsing;->a(Llhf;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1097
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1098
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1099
    if-eqz v1, :cond_2

    .line 1100
    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p1, v2}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1103
    :cond_2
    invoke-virtual {p1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
