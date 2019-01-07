.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createSessionTabInternal(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

.field final synthetic val$finalSessionId:Ljava/lang/String;

.field final synthetic val$h5FragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->val$h5FragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->val$finalSessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabItemClicked(ILandroid/view/View;)V
    .locals 9
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 478
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v6, v6, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-nez v6, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$300(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 484
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->isFastClick()Z

    move-result v6

    if-nez v6, :cond_0

    .line 487
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 490
    .local v5, "tag":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 491
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$400(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v0

    .line 492
    .local v0, "currentFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Liop;

    move-result-object v3

    .line 494
    .local v3, "h5Page":Liop;
    if-eqz v3, :cond_0

    .line 495
    invoke-interface {v3}, Liop;->getBridge()Linx;

    move-result-object v2

    .line 496
    .local v2, "h5Bridge":Linx;
    if-eqz v2, :cond_0

    .line 497
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 498
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "tag"

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 500
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "data"

    invoke-virtual {v1, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string/jumbo v6, "H5BaseTabBar"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tabClick :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string/jumbo v6, "tabClick"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v1, v7}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 503
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->val$h5FragmentManager:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->val$finalSessionId:Ljava/lang/String;

    invoke-static {v6, p1, v7, v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$500(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
