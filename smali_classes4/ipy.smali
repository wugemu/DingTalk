.class public abstract Lipy;
.super Ljava/lang/Object;
.source "BaseGwService.java"


# instance fields
.field a:Landroid/os/HandlerThread;

.field b:Landroid/os/Handler;

.field c:Landroid/os/Handler;

.field d:Lipz;


# direct methods
.method constructor <init>(Lipz;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lipz;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lipy;->c:Landroid/os/Handler;

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lipy;->a:Landroid/os/HandlerThread;

    .line 28
    iput-object p1, p0, Lipy;->d:Lipz;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lipy;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lipy;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lipy;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 52
    :cond_0
    iput-object v1, p0, Lipy;->a:Landroid/os/HandlerThread;

    .line 54
    iput-object v1, p0, Lipy;->b:Landroid/os/Handler;

    .line 55
    iput-object v1, p0, Lipy;->d:Lipz;

    .line 56
    iput-object v1, p0, Lipy;->c:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public abstract a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V
.end method

.method public abstract a(Lcom/alipay/mobile/security/bio/api/BioResponse;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)V
.end method
