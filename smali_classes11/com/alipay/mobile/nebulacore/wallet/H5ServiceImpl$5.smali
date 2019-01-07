.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->sendToWebFromMainProcess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$jsonObject:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

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
    .line 678
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 679
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_0

    .line 680
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$appId:Ljava/lang/String;

    invoke-interface {v1, v6}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isXiaoChengXu(Ljava/lang/String;)Z

    move-result v5

    .line 681
    .local v5, "openMulti":Z
    const-string/jumbo v6, "H5ServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "appId "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$appId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$action:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " jsonObject:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " openMulti "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    if-nez v5, :cond_1

    .line 685
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getTopH5Page()Liop;

    move-result-object v4

    .line 686
    .local v4, "h5Page":Liop;
    if-eqz v4, :cond_0

    .line 687
    invoke-interface {v4}, Liop;->getBridge()Linx;

    move-result-object v2

    .line 688
    .local v2, "h5Bridge":Linx;
    if-eqz v2, :cond_0

    .line 689
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$action:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 706
    .end local v2    # "h5Bridge":Linx;
    .end local v4    # "h5Page":Liop;
    .end local v5    # "openMulti":Z
    :cond_0
    :goto_0
    return-void

    .line 693
    .restart local v5    # "openMulti":Z
    :cond_1
    const-class v6, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 695
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 694
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 696
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v3, :cond_0

    .line 697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 698
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "func"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_2

    .line 700
    const-string/jumbo v6, "param"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->val$appId:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->sendDataToTinyProcess(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
