.class Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;
.super Ljava/lang/Object;
.source "H5SessionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->pushWindow(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 683
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 684
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .line 685
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v1

    .line 687
    .local v1, "h5SessionTabManager":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object v4

    .line 688
    .local v4, "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 689
    .local v0, "fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Liop;

    move-result-object v2

    .line 690
    .local v2, "page":Liop;
    if-eqz v2, :cond_0

    .line 691
    const-string/jumbo v6, "h5PageClose_tab"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 695
    .end local v0    # "fragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v2    # "page":Liop;
    :cond_1
    if-eqz v1, :cond_2

    .line 696
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 698
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 699
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v3

    .line 700
    .local v3, "sessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    if-eqz v3, :cond_3

    .line 701
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->setHasShowTab(Z)V

    .line 706
    .end local v1    # "h5SessionTabManager":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;
    .end local v3    # "sessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .end local v4    # "tabFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;>;"
    :cond_3
    return-void
.end method
