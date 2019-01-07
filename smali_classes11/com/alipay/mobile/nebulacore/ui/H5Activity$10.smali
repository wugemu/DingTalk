.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showTabBar(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

.field final synthetic val$data:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->val$data:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 739
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->val$data:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->val$data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 740
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 741
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$700(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    .line 759
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    const/4 v1, 0x0

    .line 744
    .local v1, "success":Z
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$600(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 745
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 746
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$600(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v0

    .line 747
    .local v0, "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    if-eqz v0, :cond_3

    .line 748
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->val$data:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 751
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;

    move-result-object v4

    .line 748
    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createSessionTab(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v1

    .line 754
    .end local v0    # "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    :cond_3
    if-nez v1, :cond_1

    .line 755
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 756
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$800(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    goto :goto_0
.end method
