.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3$1;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->onShowDefaultTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3$1;->this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;

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
    .line 291
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3$1;->this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 293
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "delay"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3$1;->this$1:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;->val$h5Page:Liop;

    const-string/jumbo v2, "showLoading"

    invoke-interface {v1, v2, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 298
    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method