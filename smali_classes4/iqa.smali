.class public final Liqa;
.super Lipy;
.source "JsonGwService.java"


# instance fields
.field e:Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lipz;)V
    .locals 3
    .param p1, "service"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "listener"    # Lipz;

    .prologue
    .line 29
    const-string/jumbo v1, "zim-json-upload"

    invoke-direct {p0, p2, v1}, Lipy;-><init>(Lipz;Ljava/lang/String;)V

    .line 31
    const-class v1, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    .line 32
    .local v0, "rpcService":Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;
    const-class v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    iput-object v1, p0, Liqa;->e:Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    .line 34
    iget-object v1, p0, Liqa;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Liqa;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Liqa;->b:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lipy;->a()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Liqa;->e:Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    .line 141
    return-void
.end method

.method public final a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Liqa;->b:Landroid/os/Handler;

    new-instance v1, Liqa$1;

    invoke-direct {v1, p0, p1}, Liqa$1;-><init>(Liqa;Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public final a(Lcom/alipay/mobile/security/bio/api/BioResponse;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)V
    .locals 2
    .param p1, "bioResponse"    # Lcom/alipay/mobile/security/bio/api/BioResponse;
    .param p2, "request"    # Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Liqa;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Liqa;->b:Landroid/os/Handler;

    new-instance v1, Liqa$2;

    invoke-direct {v1, p0, p2, p1}, Liqa$2;-><init>(Liqa;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;Lcom/alipay/mobile/security/bio/api/BioResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    return-void
.end method
