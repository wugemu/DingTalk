.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->performSwitchTab(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$h5Page:Liop;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;Liop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$bridgeContext:Liny;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$h5Page:Liop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$bridgeContext:Liny;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$100(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;)V

    .line 283
    return-void
.end method

.method public onGetSyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$bridgeContext:Liny;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$100(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;)V

    .line 278
    return-void
.end method

.method public onShowDefaultTab()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method
