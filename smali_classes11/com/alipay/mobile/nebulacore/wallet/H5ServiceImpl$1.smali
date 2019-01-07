.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startPage(Linn;Linz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

.field final synthetic val$bundle:Linz;

.field final synthetic val$h5Context:Lcom/alipay/mobile/nebulacore/wallet/WalletContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Lcom/alipay/mobile/nebulacore/wallet/WalletContext;Linz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;->val$h5Context:Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;->val$bundle:Linz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;->val$h5Context:Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$1;->val$bundle:Linz;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->startPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Z

    .line 256
    return-void
.end method
