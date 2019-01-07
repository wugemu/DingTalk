.class Lcom/taobao/weex/amap/component/WXMapCircleComponent$1;
.super Ljava/lang/Object;
.source "WXMapCircleComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapCircleComponent;->setPath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

.field final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapCircleComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$1;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$1;->val$param:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "center":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 55
    iget-object v3, p0, Lcom/taobao/weex/amap/component/WXMapCircleComponent$1;->this$0:Lcom/taobao/weex/amap/component/WXMapCircleComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/amap/component/WXMapCircleComponent;->getWidget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Circle;

    .line 56
    .local v1, "circle":Lcom/amap/api/maps/model/Circle;
    if-eqz v1, :cond_0

    .line 57
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "center":Lorg/json/JSONArray;
    .end local v1    # "circle":Lcom/amap/api/maps/model/Circle;
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
