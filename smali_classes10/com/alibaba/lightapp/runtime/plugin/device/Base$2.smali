.class Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;
.super Ljava/lang/Object;
.source "Base.java"

# interfaces
.implements Lcit$a;


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

.field final synthetic val$timeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Ljava/lang/Runnable;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->val$timeOutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceiver(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 287
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->val$timeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 290
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 293
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 295
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v6}, Lhha;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 296
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 297
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "ssid"

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string/jumbo v6, "macIp"

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string/jumbo v6, "rssi"

    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "scanResult":Landroid/net/wifi/ScanResult;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "getScanWifiListAsync"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v10, v11, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Ljava/lang/String;ZILjava/lang/String;)V

    .line 326
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 304
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    .local v3, "result":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v5, "resultCode"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    const-string/jumbo v5, "wifiList"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 314
    :goto_2
    :try_start_3
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "getScanWifiListAsync"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "getScanWifiListAsync "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :catch_1
    move-exception v0

    .line 309
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "getScanWifiListAsync"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 323
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v5, "lightapp"

    const-string/jumbo v6, "getScanWifiListAsync"

    const-string/jumbo v7, "getScanWifiListAsync empty"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Base;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Base$2;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    const-string/jumbo v7, "scan result is null!"

    invoke-static {v5, v6, v10, v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Base;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Base;Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_1
.end method
