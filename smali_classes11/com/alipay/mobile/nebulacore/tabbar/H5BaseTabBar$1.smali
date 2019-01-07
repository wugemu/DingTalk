.class Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;
.super Ljava/lang/Object;
.source "H5BaseTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->createTabBar(Lcom/alibaba/fastjson/JSONObject;Liny;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

.field final synthetic val$bridgeContext:Liny;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabItemClicked(ILandroid/view/View;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->tabHost:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->val$bridgeContext:Liny;

    if-eqz v2, :cond_0

    .line 86
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 87
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "tag"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 89
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->val$bridgeContext:Liny;

    const-string/jumbo v3, "tabClick"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Liny;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 92
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method
