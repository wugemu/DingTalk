.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Liom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalletListener"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->bundle:Landroid/os/Bundle;

    .line 370
    return-void
.end method


# virtual methods
.method public onPageCreated(Liop;)V
    .locals 0
    .param p1, "page"    # Liop;

    .prologue
    .line 391
    return-void
.end method

.method public onPageDestroyed(Liop;)V
    .locals 0
    .param p1, "page"    # Liop;

    .prologue
    .line 395
    return-void
.end method

.method public onSessionCreated(Lipc;)V
    .locals 4
    .param p1, "session"    # Lipc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    instance-of v1, p1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 375
    check-cast v1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->setParams(Landroid/os/Bundle;)V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v1, "H5ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSessionCreated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerSessionCreateLink(Lipc;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public onSessionDestroyed(Lipc;)V
    .locals 2
    .param p1, "session"    # Lipc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    const-string/jumbo v0, "laiwangDomains"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lipe;->a(Ljava/lang/String;Z)V

    .line 387
    return-void
.end method
