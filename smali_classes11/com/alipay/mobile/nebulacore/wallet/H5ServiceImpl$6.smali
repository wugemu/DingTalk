.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startPageFromActivity(Landroid/app/Activity;Linz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$h5Bundle:Linz;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/app/Activity;Linz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;->val$h5Bundle:Linz;

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
    .line 715
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Context;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$6;->val$h5Bundle:Linz;

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->startPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Z

    .line 717
    return-void
.end method
