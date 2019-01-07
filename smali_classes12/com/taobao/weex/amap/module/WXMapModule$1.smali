.class Lcom/taobao/weex/amap/module/WXMapModule$1;
.super Ljava/lang/Object;
.source "WXMapModule.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/module/WXMapModule;->getUserLocation(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/module/WXMapModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$client:Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/module/WXMapModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/amap/api/location/AMapLocationClient;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->this$0:Lcom/taobao/weex/amap/module/WXMapModule;

    iput-object p2, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->val$client:Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 10
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 103
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    if-nez v4, :cond_3

    .line 104
    iget-object v4, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v4, :cond_0

    .line 105
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    .local v2, "map":Ljava/util/HashMap;
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 107
    .local v0, "data":Ljava/util/HashMap;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "position":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-string/jumbo v4, "position"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v5, "result"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    cmpl-double v4, v6, v8

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v6, v8

    if-lez v4, :cond_2

    const-string/jumbo v4, "success"

    :goto_0
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v4, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v4, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 119
    .end local v0    # "data":Ljava/util/HashMap;
    .end local v2    # "map":Ljava/util/HashMap;
    .end local v3    # "position":Ljava/util/ArrayList;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->val$client:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->val$client:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 121
    iget-object v4, p0, Lcom/taobao/weex/amap/module/WXMapModule$1;->val$client:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 123
    :cond_1
    return-void

    .line 112
    .restart local v0    # "data":Ljava/util/HashMap;
    .restart local v2    # "map":Ljava/util/HashMap;
    .restart local v3    # "position":Ljava/util/ArrayList;
    :cond_2
    const-string/jumbo v4, "failed"

    goto :goto_0

    .line 116
    .end local v0    # "data":Ljava/util/HashMap;
    .end local v2    # "map":Ljava/util/HashMap;
    .end local v3    # "position":Ljava/util/ArrayList;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5b9a\u4f4d\u5931\u8d25,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "errText":Ljava/lang/String;
    const-string/jumbo v4, "WXMapModule"

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
