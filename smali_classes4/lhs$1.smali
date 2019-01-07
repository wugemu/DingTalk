.class final Llhs$1;
.super Llgy;
.source "OperatorDoAfterTerminate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llgy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llgy;

.field final synthetic b:Llhs;


# direct methods
.method constructor <init>(Llhs;Llgy;Llgy;)V
    .locals 0
    .param p1, "this$0"    # Llhs;

    .prologue
    .line 46
    .local p0, "this":Llhs$1;, "Llhs$1;"
    .local p2, "subscriber":Llgy;, "Llgy<*>;"
    iput-object p1, p0, Llhs$1;->b:Llhs;

    iput-object p3, p0, Llhs$1;->a:Llgy;

    invoke-direct {p0, p2}, Llgy;-><init>(Llgy;)V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    .local p0, "this":Llhs$1;, "Llhs$1;"
    :try_start_0
    iget-object v1, p0, Llhs$1;->b:Llhs;

    iget-object v1, v1, Llhs;->a:Llhf;

    invoke-interface {v1}, Llhf;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 76
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Llhs$1;, "Llhs$1;"
    :try_start_0
    iget-object v0, p0, Llhs$1;->a:Llgy;

    invoke-virtual {v0}, Llgy;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-direct {p0}, Llhs$1;->b()V

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Llhs$1;->b()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Llhs$1;, "Llhs$1;"
    :try_start_0
    iget-object v0, p0, Llhs$1;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-direct {p0}, Llhs$1;->b()V

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Llhs$1;->b()V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Llhs$1;, "Llhs$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Llhs$1;->a:Llgy;

    invoke-virtual {v0, p1}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
