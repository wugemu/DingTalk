.class public abstract Lcmf;
.super Lcmi;
.source "RPCRequestHandlerExt2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcmi",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmb",
            "<TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Runnable;

.field private c:Z


# direct methods
.method public constructor <init>(Lcmb;J)V
    .locals 2
    .param p2, "localTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmb",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcmf;, "Lcmf<TT;TV;>;"
    .local p1, "listener":Lcmb;, "Lcmb<TV;>;"
    invoke-direct {p0}, Lcmi;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmf;->c:Z

    .line 42
    iput-object p1, p0, Lcmf;->a:Lcmb;

    .line 44
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmf;->c:Z

    .line 46
    new-instance v0, Lcmf$1;

    invoke-direct {v0, p0, p2, p3}, Lcmf$1;-><init>(Lcmf;J)V

    invoke-virtual {p0, v0}, Lcmf;->addBeforeFiler(Liyt;)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic a(Lcmf;)Lcmb;
    .locals 1
    .param p0, "x0"    # Lcmf;

    .prologue
    .line 28
    iget-object v0, p0, Lcmf;->a:Lcmb;

    return-object v0
.end method

.method static synthetic a(Lcmf;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcmf;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iput-object p1, p0, Lcmf;->b:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcmf;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcmf;

    .prologue
    .line 28
    iget-object v0, p0, Lcmf;->b:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 65
    .local p0, "this":Lcmf;, "Lcmf<TT;TV;>;"
    iget-boolean v0, p0, Lcmf;->c:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcmf;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcmf;->a:Lcmb;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcmf;->a:Lcmb;

    invoke-interface {v0, p1, p2}, Lcmb;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    .local p0, "this":Lcmf;, "Lcmf<TT;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcmf;->c:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcmf;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcmf;->a:Lcmb;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcmf;->a:Lcmb;

    invoke-virtual {p0, p1}, Lcmf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcmb;->onDataReceived(Ljava/lang/Object;)V

    .line 84
    :cond_1
    return-void
.end method
