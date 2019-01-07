.class Lcom/taobao/weex/amap/component/WXMapViewComponent$14;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->setGestures(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

.field final synthetic val$gestures:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->val$gestures:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amap/api/maps/TextureMapView;)V
    .locals 7
    .param p1, "mapView"    # Lcom/amap/api/maps/TextureMapView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    :try_start_0
    const-string/jumbo v4, "WXMapViewComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setGestures: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->val$gestures:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->val$gestures:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v4}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$900(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/UiSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 452
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 453
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "gesture":Ljava/lang/String;
    const-string/jumbo v4, "zoom"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    iget-object v4, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v4}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$900(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/UiSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 452
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    :cond_0
    const-string/jumbo v4, "rotate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 457
    iget-object v4, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v4}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$900(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/UiSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "gesture":Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 469
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-void

    .line 458
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "gesture":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    :try_start_1
    const-string/jumbo v4, "tilt"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    iget-object v4, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v4}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$900(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/UiSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    goto :goto_1

    .line 460
    :cond_3
    const-string/jumbo v4, "scroll"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 461
    iget-object v4, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v4}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$900(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/UiSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    goto :goto_1

    .line 463
    :cond_4
    const-string/jumbo v4, "WXMapViewComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Wrong gesture: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
