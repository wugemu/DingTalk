.class Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;
.super Ljava/lang/Object;
.source "H5JSInjectPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;->getPhoneStateInfo4Debug(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 97
    .local v5, "pid":I
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 99
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 100
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "success"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;->val$bridgeContext:Liny;

    invoke-interface {v8, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 126
    :goto_0
    return-void

    .line 106
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->getInstance()Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;

    move-result-object v3

    .line 107
    .local v3, "h5DevCpuTracker":Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->updateProcess()V

    .line 109
    const-string/jumbo v8, "activity"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 110
    .local v1, "am":Landroid/app/ActivityManager;
    new-array v8, v9, [I

    aput v5, v8, v10

    invoke-virtual {v1, v8}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    .line 111
    .local v4, "mem":[Landroid/os/Debug$MemoryInfo;
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 114
    .restart local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    const-string/jumbo v8, "success"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v8, "cpurate"

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5DevCpuTracker;->getProcessCpuUsagePercent()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 117
    .local v7, "subMem":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "totalPrivateDirty"

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v8, "totalPss"

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v8, "meminfo"

    invoke-virtual {v6, v8, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;->val$bridgeContext:Liny;

    invoke-interface {v8, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v7    # "subMem":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "H5JSInjectPlugin"

    const-string/jumbo v9, "catch exception "

    invoke-static {v8, v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    const-string/jumbo v8, "success"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin$1;->val$bridgeContext:Liny;

    invoke-interface {v8, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0
.end method
