.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->beginShowTab(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$data:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$data:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$tag:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1081
    iget-object v6, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 319
    check-cast v6, Liop;

    .line 320
    .local v6, "h5Page":Liop;
    if-eqz v6, :cond_0

    .line 321
    const-string/jumbo v0, "hideLoading"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$data:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$data:Lcom/alibaba/fastjson/JSONObject;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 324
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$tag:Ljava/lang/String;

    .line 323
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$200(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v7

    .line 326
    .local v7, "isSuccess":Z
    if-nez v7, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$bridgeContext:Liny;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 337
    .end local v7    # "isSuccess":Z
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 332
    .local v8, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v0, "error"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v0, "errorMessage"

    const-string/jumbo v1, "invalid config"

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;->val$bridgeContext:Liny;

    invoke-interface {v0, v8}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0
.end method
