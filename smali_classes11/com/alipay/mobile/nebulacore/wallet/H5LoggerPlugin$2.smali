.class Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;
.super Ljava/lang/Object;
.source "H5LoggerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->logSessionFromNative(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

.field final synthetic val$param:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->val$param:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 525
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;

    move-result-object v5

    if-nez v5, :cond_0

    .line 551
    :goto_0
    return-void

    .line 529
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;

    move-result-object v5

    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "appId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;

    move-result-object v5

    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "appVersion"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "highestAppVersion":Ljava/lang/String;
    sget-object v5, Liov$a;->k:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 532
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;

    move-result-object v6

    invoke-interface {v6}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 533
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v6, "currentTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v6, "package_nick"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    .line 534
    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;

    move-result-object v7

    invoke-interface {v7}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "package_nick"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v6, "install"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    .line 535
    invoke-static {v7, v0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$200(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v6, "fromKeepAlive"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->val$param:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v8, "fromKeepAlive"

    .line 536
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 537
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string/jumbo v6, "localmaxnbv"

    invoke-virtual {v5, v6, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    .line 538
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;

    move-result-object v6

    invoke-interface {v6}, Liop;->getPageData()Lior;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 540
    .local v1, "h5LogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableRecordStartupParams()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 541
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->access$100(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Liop;

    move-result-object v6

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->getStartupParamsMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 543
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v5

    const-string/jumbo v6, "webapp"

    .line 544
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v5

    const-string/jumbo v6, "HD-VM"

    .line 545
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v3

    .line 546
    .local v3, "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 547
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "h5LogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v2    # "highestAppVersion":Ljava/lang/String;
    .end local v3    # "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    :catch_0
    move-exception v4

    .line 548
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5LoggerPlugin"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
