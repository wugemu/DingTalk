.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showDefaultSessionTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

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
    .line 716
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$600(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 718
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$600(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v0

    .line 719
    .local v0, "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    if-eqz v0, :cond_0

    .line 720
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "tabItemCount"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 721
    .local v1, "tabItemCount":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createDefaultSessionTab(Landroid/content/Context;I)V

    .line 724
    .end local v0    # "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .end local v1    # "tabItemCount":I
    :cond_0
    return-void
.end method
