.class public final Llhp;
.super Ljava/lang/Object;
.source "OnSubscribeLift.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgs$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Llgs$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Llgs$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgs$b",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llgs$a;Llgs$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgs$a",
            "<TT;>;",
            "Llgs$b",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Llhp;, "Llhp<TT;TR;>;"
    .local p1, "parent":Llgs$a;, "Llgs$a<TT;>;"
    .local p2, "operator":Llgs$b;, "Llgs$b<+TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Llhp;->a:Llgs$a;

    .line 38
    iput-object p2, p0, Llhp;->b:Llgs$b;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    .local p0, "this":Llhp;, "Llhp<TT;TR;>;"
    check-cast p1, Llgy;

    .line 1044
    :try_start_0
    iget-object v0, p0, Llhp;->b:Llgs$b;

    invoke-static {v0}, Llkm;->a(Llgs$b;)Llgs$b;

    move-result-object v0

    invoke-interface {v0, p1}, Llgs$b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1047
    :try_start_1
    invoke-virtual {v0}, Llgy;->a()V

    .line 1048
    iget-object v1, p0, Llhp;->a:Llgs$a;

    invoke-interface {v1, v0}, Llgs$a;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v1

    .line 1053
    :try_start_2
    invoke-static {v1}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1054
    invoke-virtual {v0, v1}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1056
    :catch_1
    move-exception v0

    .line 1057
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 1060
    invoke-virtual {p1, v0}, Llgy;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
