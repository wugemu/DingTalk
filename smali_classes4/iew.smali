.class public abstract Liew;
.super Liyq;
.source "RequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Liyq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    .local p0, "this":Liew;, "Liew<TT;>;"
    invoke-direct {p0}, Liyq;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Liew;->a:Landroid/os/Handler;

    .line 1013
    sget-object v0, Liev;->a:Liev;

    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Liev;

    invoke-direct {v0}, Liev;-><init>()V

    sput-object v0, Liev;->a:Liev;

    .line 1016
    :cond_0
    sget-object v0, Liev;->a:Liev;

    .line 14
    invoke-virtual {p0, v0}, Liew;->addBeforeFiler(Liyt;)V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "r"    # Lcom/laiwang/idl/service/ResultError;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 19
    .local p0, "this":Liew;, "Liew<TT;>;"
    invoke-super {p0, p1, p2}, Liyq;->caught(Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    .line 1024
    iget-object v0, p0, Liew;->a:Landroid/os/Handler;

    new-instance v1, Liew$1;

    invoke-direct {v1, p0, p1, p2}, Liew$1;-><init>(Liew;Lcom/laiwang/idl/service/ResultError;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    .local p0, "this":Liew;, "Liew<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Liew;->a:Landroid/os/Handler;

    new-instance v1, Liew$2;

    invoke-direct {v1, p0, p1}, Liew$2;-><init>(Liew;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
