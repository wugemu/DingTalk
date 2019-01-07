.class public Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;
.super Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;
.source "WXMapPolyLineComponent.java"


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexComponent;
    names = {
        "weex-amap-polyline"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent",
        "<",
        "Lcom/amap/api/maps/model/Polyline;",
        ">;"
    }
.end annotation


# instance fields
.field private mColor:I

.field mPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mStyle:Ljava/lang/String;

.field private mWeight:F


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "dom"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mPosition:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mColor:I

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mWeight:F

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    .prologue
    .line 29
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    .prologue
    .line 29
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mWeight:F

    return v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method private initPolyLine()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$5;-><init>(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->postMapOperationTask(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->initPolyLine()V

    .line 45
    :cond_0
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 10
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "path"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "path":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 54
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 55
    .local v3, "position":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mPosition:Ljava/util/ArrayList;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    .end local v2    # "path":Lorg/json/JSONArray;
    .end local v3    # "position":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v4, "setPath"

    new-instance v5, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$1;

    invoke-direct {v5, p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$1;-><init>(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)V

    invoke-virtual {p0, v4, v5}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "strokeColor"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mColor:I

    .line 76
    const-string/jumbo v0, "setStrokeColor"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$2;-><init>(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public setStrokeStyle(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "strokeStyle"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mStyle:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "setStrokeStyle"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$4;-><init>(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public setStrokeWeight(F)V
    .locals 2
    .param p1, "param"    # F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "strokeWidth"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iput p1, p0, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->mWeight:F

    .line 90
    const-string/jumbo v0, "setStrokeWeight"

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent$3;-><init>(Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;)V

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapPolyLineComponent;->execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
