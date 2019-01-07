.class Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;
.super Ljava/lang/Object;
.source "Base.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Base;->getScanWifiListAsync(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

.field final synthetic val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 254
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "getScanWifiListAsync"

    const-string/jumbo v8, "getScanWifiListAsync timeout"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Base;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 257
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    invoke-static {v6, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 258
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 260
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMyssid()Ljava/lang/String;
    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v6, "macIp"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    #修改wifi
    invoke-static {}, Lcom/langzu/baozha/ddutil/DDUtil;->getMybssid()Ljava/lang/String;
    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v6, "rssi"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 265
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 267
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 268
    .local v3, "result":Lorg/json/JSONObject;
    const-string/jumbo v6, "resultCode"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    const-string/jumbo v6, "wifiList"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "getScanWifiListAsync"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getScanWifiListAsync connect wifi "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v6, v3, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "lightapp"

    const-string/jumbo v7, "getScanWifiListAsync"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v11, v12, v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$1;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    const/4 v8, 0x3

    const-string/jumbo v9, "wifi scan time out!"

    invoke-static {v6, v7, v12, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_0
.end method
