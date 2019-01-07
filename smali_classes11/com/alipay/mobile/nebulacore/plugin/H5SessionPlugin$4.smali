.class Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;
.super Ljava/lang/Object;
.source "H5SessionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->logPushWindow(Lior;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

.field final synthetic val$pageData:Lior;

.field final synthetic val$param:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Lior;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->val$pageData:Lior;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->val$param:Landroid/os/Bundle;

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
    .line 965
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->val$pageData:Lior;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->val$param:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->val$param:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    const-string/jumbo v1, "H5_TRANS_PUSHWINDOW"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 967
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->val$param:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->getStartupParamsMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 968
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$4;->val$pageData:Lior;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 969
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 971
    .end local v0    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_0
    return-void
.end method
