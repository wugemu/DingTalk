.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->sendServiceWorkerPushMessage(Ljava/util/HashMap;Lioa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

.field final synthetic val$h5CallBack:Lioa;

.field final synthetic val$hashMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/util/HashMap;Lioa;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;->val$hashMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;->val$h5CallBack:Lioa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 543
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v0

    .line 544
    .local v0, "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    if-nez v0, :cond_0

    .line 545
    const-string/jumbo v1, "H5ServiceImpl"

    const-string/jumbo v2, "ucService == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->disableHWACByUCStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    invoke-static {v2, v2}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/service/UcService;->init(Z)Z

    .line 553
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;->val$hashMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$2;->val$h5CallBack:Lioa;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->access$000(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/util/HashMap;Lioa;)V

    goto :goto_0

    .line 549
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 551
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->isAbove14Level()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/service/UcService;->init(Z)Z

    goto :goto_2
.end method
