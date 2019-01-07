.class public Lcom/amap/api/mapcore/util/p;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;


# static fields
.field public static volatile a:Landroid/content/Context;


# instance fields
.field public b:I

.field private c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/maps/AMapOptions;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/amap/api/mapcore/util/p;->b:I

    .line 28
    iput v0, p0, Lcom/amap/api/mapcore/util/p;->d:I

    .line 32
    const-string/jumbo v1, "MapFragmentDelegateImp"

    iput-object v1, p0, Lcom/amap/api/mapcore/util/p;->e:Ljava/lang/String;

    .line 35
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/amap/api/mapcore/util/p;->d:I

    .line 36
    return-void
.end method


# virtual methods
.method a(Lcom/amap/api/maps/AMapOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCamera()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getRotateGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 148
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 149
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getTiltGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 151
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 152
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setCompassEnabled(Z)V

    .line 153
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    .line 154
    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setLogoPosition(I)V

    .line 155
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapType(I)V

    .line 156
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setZOrderOnTop(Z)V

    .line 158
    :cond_1
    return-void
.end method

.method public getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->e:Ljava/lang/String;

    const-string/jumbo v1, "Context \u4e3a null \uff0c\u5982\u679c\u4f7f\u7528\u52a8\u6001\u52a0\u8f7dSupportMapFragment\u65f6\uff0c\u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 62
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 64
    const/16 v1, 0x78

    if-gt v0, v1, :cond_2

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    .line 80
    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore/util/p;->d:I

    if-nez v0, :cond_8

    .line 81
    new-instance v0, Lcom/amap/api/mapcore/util/c;

    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/c;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    goto :goto_0

    .line 66
    :cond_2
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_3

    .line 67
    const v0, 0x3f4ccccd    # 0.8f

    :try_start_1
    sput v0, Lcom/amap/api/mapcore/util/g;->a:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 68
    :cond_3
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_4

    .line 69
    const v0, 0x3f5eb852    # 0.87f

    :try_start_2
    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    .line 70
    :cond_4
    const/16 v1, 0x140

    if-gt v0, v1, :cond_5

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    .line 72
    :cond_5
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_6

    .line 73
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    .line 74
    :cond_6
    const/16 v1, 0x280

    if-gt v0, v1, :cond_7

    .line 75
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    .line 77
    :cond_7
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    .line 84
    :cond_8
    new-instance v0, Lcom/amap/api/mapcore/util/d;

    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/d;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/p;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    iget v1, p0, Lcom/amap/api/mapcore/util/p;->b:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setVisibilityEx(I)V

    .line 121
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 122
    const-string/jumbo v0, "MapOptions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 127
    sget-object v0, Lcom/amap/api/maps/AMapOptions;->CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/p;->a(Lcom/amap/api/maps/AMapOptions;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->clear()V

    .line 183
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->destroy()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    .line 186
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Lcom/amap/api/maps/AMapOptions;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    .line 100
    return-void
.end method

.method public onLowMemory()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onActivityPause()V

    .line 173
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onActivityResume()V

    .line 165
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    .line 201
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/p;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMapOptions;->camera(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    .line 203
    iget-object v1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/maps/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    .line 204
    const-string/jumbo v1, "MapOptions"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    .line 41
    :cond_0
    return-void
.end method

.method public setOptions(Lcom/amap/api/maps/AMapOptions;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    .line 45
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 218
    iput p1, p0, Lcom/amap/api/mapcore/util/p;->b:I

    .line 219
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setVisibilityEx(I)V

    .line 222
    :cond_0
    return-void
.end method
