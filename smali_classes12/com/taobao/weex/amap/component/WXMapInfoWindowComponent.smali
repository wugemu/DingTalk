.class public Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;
.super Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;
.source "WXMapInfoWindowComponent.java"


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexComponent;
    names = {
        "weex-amap-info-window"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer",
        "<",
        "Lcom/amap/api/maps/model/Marker;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "dom"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->setMarkerPosition(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->setMarkerInfoWindowOffset(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V

    return-void
.end method

.method private initMarker()V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    .line 128
    .local v0, "parent":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 129
    check-cast v1, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .line 130
    .local v1, "wxMapViewComponent":Lcom/taobao/weex/amap/component/WXMapViewComponent;
    new-instance v2, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$4;-><init>(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->postMapOperationTask(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 147
    .end local v1    # "wxMapViewComponent":Lcom/taobao/weex/amap/component/WXMapViewComponent;
    :cond_0
    return-void
.end method

.method private setMarkerInfoWindowOffset(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 5
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "position"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getOptions()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    .line 154
    .local v2, "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/maps/model/MarkerOptions;->setInfoWindowOffset(II)Lcom/amap/api/maps/model/MarkerOptions;

    .line 155
    invoke-virtual {p1, v2}, Lcom/amap/api/maps/model/Marker;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    .line 162
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    :goto_0
    return-void

    .line 157
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v3, "WXMapViewComponent"

    const-string/jumbo v4, "Marker is null!"

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setMarkerPosition(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
    .locals 8
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;
    .param p2, "position"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 168
    .local v2, "latLng":Lcom/amap/api/maps/model/LatLng;
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getOptions()Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v3

    .line 170
    .local v3, "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 171
    invoke-virtual {p1, v3}, Lcom/amap/api/maps/model/Marker;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    .line 178
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "latLng":Lcom/amap/api/maps/model/LatLng;
    .end local v3    # "markerOptions":Lcom/amap/api/maps/model/MarkerOptions;
    :goto_0
    return-void

    .line 173
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "latLng":Lcom/amap/api/maps/model/LatLng;
    :cond_0
    const-string/jumbo v4, "WXMapViewComponent"

    const-string/jumbo v5, "Marker is null!"

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "latLng":Lcom/amap/api/maps/model/LatLng;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-super {p0}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->destroy()V

    .line 115
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getWidget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getWidget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    .line 117
    .local v0, "marker":Lcom/amap/api/maps/model/Marker;
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getCachedInfoWindow()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    .line 124
    .end local v0    # "marker":Lcom/amap/api/maps/model/Marker;
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string/jumbo v1, "WXMapViewComponent"

    const-string/jumbo v2, "Marker is null"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 32
    check-cast p1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXFrameLayout;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXFrameLayout;)V
    .locals 1
    .param p1, "host"    # Lcom/taobao/weex/ui/view/WXFrameLayout;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->onHostViewInitialized(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->initMarker()V

    .line 50
    :cond_0
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offset"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    const-string/jumbo v0, "setOffset"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$2;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$2;-><init>(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public setOpened(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "opened"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "open"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    const-string/jumbo v0, "setOpened"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$3;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$3;-><init>(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "position"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    const-string/jumbo v0, "setPosition"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent$1;-><init>(Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    const-string/jumbo v1, "WXMapViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setProperty: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 72
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 65
    :pswitch_0
    const-string/jumbo v2, "position"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "position":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->setPosition(Ljava/lang/String;)V

    .line 70
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x2c929929
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "open"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "opened":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->updateProperties(Ljava/util/Map;)V

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->setOpened(Ljava/lang/Boolean;)V

    .line 60
    :cond_0
    return-void
.end method
