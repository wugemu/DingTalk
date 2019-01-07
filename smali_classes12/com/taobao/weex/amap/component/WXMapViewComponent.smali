.class public Lcom/taobao/weex/amap/component/WXMapViewComponent;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/maps/LocationSource;


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexComponent;
    names = {
        "weex-amap"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;,
        Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;",
        "Lcom/amap/api/location/AMapLocationListener;",
        "Lcom/amap/api/maps/LocationSource;"
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_MAPVIEW:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WXMapViewComponent"

.field private static permissions:[Ljava/lang/String;


# instance fields
.field private fakeBackgroundColor:I

.field private isCompassEnable:Z

.field private isIndoorSwitchEnable:Z

.field private isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isMyLocationEnable:Z

.field private isScaleEnable:Z

.field private isZoomEnable:Z

.field private mAMap:Lcom/amap/api/maps/AMap;

.field private mActivity:Landroid/app/Activity;

.field private mGesture:I

.field private mInfoWindowHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationChangedListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

.field private mLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field private mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

.field private mMapView:Lcom/amap/api/maps/TextureMapView;

.field private mUiSettings:Lcom/amap/api/maps/UiSettings;

.field private mZoomLevel:F

.field private mapContainer:Landroid/widget/FrameLayout;

.field private paddingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;Z)V
    .locals 3
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "dom"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p4, "isLazy"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;Z)V

    .line 69
    iput-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isScaleEnable:Z

    .line 70
    iput-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isZoomEnable:Z

    .line 71
    iput-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isCompassEnable:Z

    .line 72
    iput-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMyLocationEnable:Z

    .line 74
    const/16 v0, 0xf

    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mGesture:I

    .line 75
    iput-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isIndoorSwitchEnable:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mInfoWindowHashMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->paddingTasks:Ljava/util/Queue;

    .line 84
    const/16 v0, 0xf2

    const/16 v1, 0xee

    const/16 v2, 0xe8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->fakeBackgroundColor:I

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/TextureMapView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/amap/api/maps/TextureMapView;)Lcom/amap/api/maps/TextureMapView;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/TextureMapView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mapContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isZoomEnable:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isCompassEnable:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMyLocationEnable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->requestPermissions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/taobao/weex/amap/component/WXMapViewComponent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mGesture:I

    return p1
.end method

.method static synthetic access$1500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->updateGestureSetting()V

    return-void
.end method

.method static synthetic access$1602(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isIndoorSwitchEnable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mInfoWindowHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->initMap()V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/amap/component/WXMapViewComponent;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mZoomLevel:F

    return v0
.end method

.method static synthetic access$402(Lcom/taobao/weex/amap/component/WXMapViewComponent;F)F
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mZoomLevel:F

    return p1
.end method

.method static synthetic access$500(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/AMap;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->execPaddingTasks()V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/amap/api/maps/model/LatLng;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->convertLatLng(Lcom/amap/api/maps/model/LatLng;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isScaleEnable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Lcom/amap/api/maps/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    return-object v0
.end method

.method private convertLatLng(Lcom/amap/api/maps/model/LatLng;)Ljava/util/Map;
    .locals 4
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 688
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 689
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "latitude"

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string/jumbo v1, "longitude"

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    return-object v0
.end method

.method private execPaddingTasks()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 635
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->paddingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->paddingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;

    .line 637
    .local v0, "task":Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    if-eqz v1, :cond_0

    .line 638
    const-string/jumbo v1, "WXMapViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exec padding task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    invoke-interface {v0, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;->execute(Lcom/amap/api/maps/TextureMapView;)V

    goto :goto_0

    .line 642
    .end local v0    # "task":Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;
    :cond_1
    return-void
.end method

.method private initMap()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/TextureMapView;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    .line 124
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 141
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapViewComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$3;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$4;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$5;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V

    .line 213
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->setUpMap()V

    .line 215
    :cond_0
    return-void
.end method

.method private requestPermissions()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "granted":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/taobao/weex/amap/component/WXMapViewComponent;->permissions:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/taobao/weex/amap/component/WXMapViewComponent;->permissions:[Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setUpMap()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    .line 220
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    iget-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isScaleEnable:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    iget-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isZoomEnable:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    iget-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isCompassEnable:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setCompassEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    iget-boolean v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isIndoorSwitchEnable:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setIndoorSwitchEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/taobao/weex/amap/component/WXMapViewComponent;->permissions:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMyLocationEnable:Z

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->setMyLocationStatus(Z)V

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->updateGestureSetting()V

    .line 229
    return-void
.end method

.method private updateGestureSetting()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 232
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mGesture:I

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 259
    :goto_0
    const-string/jumbo v0, "WXMapViewComponent"

    const-string/jumbo v1, "init map end "

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 235
    :cond_0
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mGesture:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    .line 236
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 241
    :goto_1
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mGesture:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 242
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 247
    :goto_2
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mGesture:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 248
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 253
    :goto_3
    iget v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mGesture:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 254
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    goto :goto_1

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    goto :goto_2

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    goto :goto_3

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 560
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationChangedListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    .line 561
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 563
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 565
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 567
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 569
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 574
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 576
    :cond_0
    return-void
.end method

.method protected addSubView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 413
    return-void
.end method

.method public checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 615
    const/4 v1, 0x1

    .line 616
    .local v1, "granted":Z
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 617
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p2

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 618
    .local v4, "permission":Ljava/lang/String;
    invoke-static {p1, v4}, Ldp;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 619
    const/4 v1, 0x0

    .line 620
    invoke-static {p1, v4}, Lcd;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 621
    const-string/jumbo v5, "please give me the permissions"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 617
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "permission":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public deactivate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 580
    iput-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationChangedListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    .line 581
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 583
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 585
    :cond_0
    iput-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 586
    return-void
.end method

.method public getCachedInfoWindow()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mInfoWindowHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mapContainer:Landroid/widget/FrameLayout;

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mapContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->fakeBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 94
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mActivity:Landroid/app/Activity;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mapContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onActivityCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityCreate()V

    .line 273
    const-string/jumbo v0, "WXMapViewComponent"

    const-string/jumbo v1, "onActivityCreate"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onDestroy()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 316
    :cond_1
    const-string/jumbo v0, "WXMapViewComponent"

    const-string/jumbo v1, "onActivityDestroy"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onPause()V

    .line 280
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->deactivate()V

    .line 282
    :cond_0
    const-string/jumbo v0, "WXMapViewComponent"

    const-string/jumbo v1, "onActivityPause"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onResume()V

    .line 290
    :cond_0
    const-string/jumbo v0, "WXMapViewComponent"

    const-string/jumbo v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 590
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationChangedListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 591
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mLocationChangedListener:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    invoke-interface {v1, p1}, Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5b9a\u4f4d\u5931\u8d25,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "errText":Ljava/lang/String;
    const-string/jumbo v1, "AmapErr"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 602
    packed-switch p1, :pswitch_data_0

    .line 611
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 612
    return-void

    .line 604
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p2}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMyLocationEnable:Z

    if-eqz v0, :cond_0

    .line 605
    iget-boolean v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMyLocationEnable:Z

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->setMyLocationEnable(Z)V

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V
    .locals 3
    .param p1, "task"    # Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 645
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const-string/jumbo v0, "WXMapViewComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exec task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mMapView:Lcom/amap/api/maps/TextureMapView;

    invoke-interface {p1, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;->execute(Lcom/amap/api/maps/TextureMapView;)V

    .line 652
    :goto_0
    return-void

    .line 649
    :cond_0
    const-string/jumbo v0, "WXMapViewComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Padding task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->paddingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "sdkKey"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    invoke-static {v1}, Lcom/amap/api/maps/MapsInitializer;->setApiKey(Ljava/lang/String;)V

    .line 326
    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClient;->setApiKey(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v3, "WXMapViewComponent"

    const-string/jumbo v4, "Set API key success"

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCenter(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "center"
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$12;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$12;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 429
    return-void
.end method

.method public setCompass(Z)V
    .locals 1
    .param p1, "compass"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "compass"
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$9;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$9;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 377
    return-void
.end method

.method public setCustomEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "customEnabled"
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$17;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$17;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 509
    return-void
.end method

.method public setCustomStylePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "pathObject"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "customStylePath"
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$18;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$18;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 529
    return-void
.end method

.method public setGesture(I)V
    .locals 1
    .param p1, "gesture"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "gesture"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$13;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$13;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 441
    return-void
.end method

.method public setGestures(Ljava/lang/String;)V
    .locals 1
    .param p1, "gestures"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "gestures"
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$14;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 471
    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 8
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->setHostLayoutParams(Landroid/widget/FrameLayout;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Landroid/widget/FrameLayout;IIIIII)V
    .locals 4
    .param p1, "host"    # Landroid/widget/FrameLayout;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXVContainer;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mapContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent$1;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    :cond_0
    return-void
.end method

.method public setIndoorSwitchEnable(Z)V
    .locals 1
    .param p1, "indoorSwitchEnable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "indoorswitch"
    .end annotation

    .prologue
    .line 533
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$19;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$19;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 540
    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public setMyLocationEnable(Z)V
    .locals 1
    .param p1, "myLocationEnable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "geolocation"
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$10;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$10;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 390
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "myLocationEnabled"
    .end annotation

    .prologue
    .line 475
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$15;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$15;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 482
    return-void
.end method

.method public setMyLocationStatus(Z)V
    .locals 4
    .param p1, "isActive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 544
    if-eqz p1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setLocationSource(Lcom/amap/api/maps/LocationSource;)V

    .line 546
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/taobao/weex/amap/component/WXMapViewComponent;->permissions:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->setMyLocationType(I)V

    .line 556
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->deactivate()V

    .line 552
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setLocationSource(Lcom/amap/api/maps/LocationSource;)V

    .line 553
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mAMap:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 554
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent;->mUiSettings:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setScaleEnable(Z)V
    .locals 1
    .param p1, "scaleEnable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scale"
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$6;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$6;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 345
    return-void
.end method

.method public setShowMyLocation(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showMyLocation"
    .end annotation

    .prologue
    .line 486
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$16;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 498
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "zoom"
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$8;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$8;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;I)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 366
    return-void
.end method

.method public setZoomEnable(Z)V
    .locals 1
    .param p1, "zoomEnable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "zoomEnable"
    .end annotation

    .prologue
    .line 349
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$7;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 356
    return-void
.end method

.method public setZoomPosition(Ljava/lang/String;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "zoomPosition"
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$11;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$11;-><init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 408
    return-void
.end method
