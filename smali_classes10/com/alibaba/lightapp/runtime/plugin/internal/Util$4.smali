.class Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->collectCell(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x3

    .line 436
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 438
    .local v9, "resultJsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lcom/amap/location/collection/CellCollector;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/amap/location/collection/CellCollector;-><init>(Landroid/content/Context;)V

    .line 1000
    .local v2, "cellCollector":Lcom/amap/location/collection/CellCollector;
    iget-object v10, v2, Lcom/amap/location/collection/CellCollector;->a:Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_0

    const/4 v1, 0x0

    .line 441
    .local v1, "amapCell":Liuw;
    :goto_0
    if-nez v1, :cond_1

    .line 442
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    const/4 v11, 0x3

    const-string/jumbo v12, "Result amapCell is null"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 527
    .end local v1    # "amapCell":Liuw;
    .end local v2    # "cellCollector":Lcom/amap/location/collection/CellCollector;
    :goto_1
    return-void

    .line 1000
    .restart local v2    # "cellCollector":Lcom/amap/location/collection/CellCollector;
    :cond_0
    iget-object v10, v2, Lcom/amap/location/collection/CellCollector;->a:Landroid/telephony/TelephonyManager;

    iget-object v11, v2, Lcom/amap/location/collection/CellCollector;->a:Landroid/telephony/TelephonyManager;

    invoke-static {v11}, Lcom/amap/location/collection/CellCollector;->a(Landroid/telephony/TelephonyManager;)Landroid/telephony/CellLocation;

    move-result-object v11

    iget-object v12, v2, Lcom/amap/location/collection/CellCollector;->a:Landroid/telephony/TelephonyManager;

    invoke-static {v12}, Lcom/amap/location/collection/CellCollector;->b(Landroid/telephony/TelephonyManager;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2, v10, v11, v12}, Lcom/amap/location/collection/CellCollector;->a(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;Ljava/util/List;)Liuw;

    move-result-object v1

    goto :goto_0

    .line 446
    .restart local v1    # "amapCell":Liuw;
    :cond_1
    const-string/jumbo v10, "radioType"

    iget v11, v1, Liuw;->a:I

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 447
    iget-object v10, v1, Liuw;->b:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 448
    const-string/jumbo v10, "operator"

    iget-object v11, v1, Liuw;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    :cond_2
    iget-object v10, v1, Liuw;->c:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-object v10, v1, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 452
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 453
    .local v6, "cellPartsArray":Lorg/json/JSONArray;
    iget-object v10, v1, Liuw;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 454
    .local v5, "cellPartObject":Ljava/lang/Object;
    if-eqz v5, :cond_3

    instance-of v11, v5, Liux;

    if-eqz v11, :cond_3

    .line 455
    move-object v0, v5

    check-cast v0, Liux;

    move-object v3, v0

    .line 456
    .local v3, "cellPart":Liux;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 458
    .local v4, "cellPartJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "arfcn"

    iget v12, v3, Liux;->j:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    const-string/jumbo v11, "asulevel"

    iget v12, v3, Liux;->e:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    const-string/jumbo v11, "bid"

    iget v12, v3, Liux;->p:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 464
    const-string/jumbo v11, "bsic"

    iget v12, v3, Liux;->k:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 466
    const-string/jumbo v11, "cid"

    iget v12, v3, Liux;->i:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 468
    const-string/jumbo v11, "earfcn"

    iget v12, v3, Liux;->l:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v11, "interfaceType"

    iget v12, v3, Liux;->c:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 472
    const-string/jumbo v11, "isMain"

    iget v12, v3, Liux;->b:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 474
    const-string/jumbo v11, "lac"

    iget v12, v3, Liux;->h:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    const-string/jumbo v11, "lat"

    iget v12, v3, Liux;->q:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string/jumbo v11, "lon"

    iget v12, v3, Liux;->r:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    const-string/jumbo v11, "main_cell"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    const-string/jumbo v11, "mcc"

    iget v12, v3, Liux;->f:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 484
    const-string/jumbo v11, "mnc"

    iget v12, v3, Liux;->g:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    const-string/jumbo v11, "neighbor_cell"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 488
    const-string/jumbo v11, "nid"

    iget v12, v3, Liux;->o:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    const-string/jumbo v11, "pci"

    iget v12, v3, Liux;->m:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 492
    const-string/jumbo v11, "psc"

    iget v12, v3, Liux;->s:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 494
    const-string/jumbo v11, "rssi"

    iget v12, v3, Liux;->d:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    const-string/jumbo v11, "sid"

    iget v12, v3, Liux;->n:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 498
    const-string/jumbo v11, "type"

    iget v12, v3, Liux;->a:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 500
    const-string/jumbo v11, "type_cdma"

    const/4 v12, 0x2

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 502
    const-string/jumbo v11, "type_gsm"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    const-string/jumbo v11, "type_lte"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    const-string/jumbo v11, "type_new_api_cell"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    const-string/jumbo v11, "type_old_api_cell"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    const-string/jumbo v11, "type_wcdma"

    const/4 v12, 0x3

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string/jumbo v11, "uarfcn"

    iget v12, v3, Liux;->t:I

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 521
    .end local v1    # "amapCell":Liuw;
    .end local v2    # "cellCollector":Lcom/amap/location/collection/CellCollector;
    .end local v3    # "cellPart":Liux;
    .end local v4    # "cellPartJsonObject":Lorg/json/JSONObject;
    .end local v5    # "cellPartObject":Ljava/lang/Object;
    .end local v6    # "cellPartsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    .line 522
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 524
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "message":Ljava/lang/String;
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    if-eqz v8, :cond_6

    .end local v8    # "message":Ljava/lang/String;
    :goto_3
    invoke-static {v13, v8}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 517
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v1    # "amapCell":Liuw;
    .restart local v2    # "cellCollector":Lcom/amap/location/collection/CellCollector;
    .restart local v6    # "cellPartsArray":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string/jumbo v10, "cellParts"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    .end local v6    # "cellPartsArray":Lorg/json/JSONArray;
    :cond_5
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v11, v11, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v10, v9, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 525
    .end local v1    # "amapCell":Liuw;
    .end local v2    # "cellCollector":Lcom/amap/location/collection/CellCollector;
    .restart local v7    # "e":Ljava/lang/Throwable;
    .restart local v8    # "message":Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, ""

    goto :goto_3
.end method
