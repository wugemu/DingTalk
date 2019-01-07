.class public Lcom/autonavi/amap/mapcore/MapCore;
.super Ljava/lang/Object;
.source "MapCore.java"


# static fields
.field public static final AM_DATA_BMP_BASEMAP:I = 0x2

.field public static final AM_DATA_GEO_BUILDING:I = 0x1

.field public static final AM_DATA_GUIDE:I = 0xb

.field public static final AM_DATA_INDOOR:I = 0xa

.field public static final AM_DATA_MODEL:I = 0x6

.field public static final AM_DATA_POI:I = 0x8

.field public static final AM_DATA_ROADMAP:I = 0x0

.field public static final AM_DATA_SATELLITE:I = 0x3

.field public static final AM_DATA_SCENIC_WIDGET:I = 0x65

.field public static final AM_DATA_SCREEN:I = 0x5

.field public static final AM_DATA_STANDARD:I = 0x7

.field public static final AM_DATA_VEC_TMC:I = 0x4

.field public static final AM_DATA_VERSION:I = 0x9

.field public static final MAPRENDER_BASEMAPBEGIN:I = 0x1

.field public static final MAPRENDER_BUILDINGBEGIN:I = 0x2

.field public static final MAPRENDER_CAN_STOP_AND_FULLSCREEN_RENDEROVER:I = 0x3e7

.field public static final MAPRENDER_ENTER:I = 0x0

.field public static final MAPRENDER_GRID_CAN_FILL:I = 0xb

.field public static final MAPRENDER_LABELSBEGIN:I = 0x3

.field public static final MAPRENDER_LABELSEND:I = 0x4

.field public static final MAPRENDER_NOMORENEEDRENDER:I = 0x6

.field public static final MAPRENDER_ORTHOPROJECTION:I = 0x7

.field public static final MAPRENDER_RENDEROVER:I = 0x5

.field public static final TEXTURE_BACKGROUND:I = 0x1

.field public static final TEXTURE_ICON:I = 0x0

.field public static final TEXTURE_RAILWAY:I = 0x8

.field public static final TEXTURE_ROADARROW:I = 0x2

.field public static final TEXTURE_ROADROUND:I = 0x3

.field public static final TEXTURE_TMC_BLACK:I = 0x7

.field public static final TEXTURE_TMC_GREEN:I = 0x6

.field public static final TEXTURE_TMC_RED:I = 0x4

.field public static final TEXTURE_TMC_YELLOW:I = 0x5


# instance fields
.field private browserCount:I

.field isAnimationStep:Z

.field isGestureStep:Z

.field isMoveCameraStep:Z

.field mContext:Landroid/content/Context;

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapMessage;",
            ">;"
        }
    .end annotation
.end field

.field mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

.field private mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapMessage;",
            ">;"
        }
    .end annotation
.end field

.field private map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

.field private map_gesture_count:I

.field native_instance:J

.field native_mapprojection_instance:J

.field private surface_height:I

.field private surface_width:I

.field private textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

.field tmp_3072bytes_data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    :try_start_0
    const-string/jumbo v0, "gdinamapv4sdk752"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "gdinamapv4sdk752ex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    .line 64
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    iput-wide v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    .line 69
    iput-wide v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_mapprojection_instance:J

    .line 70
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    .line 71
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    .line 72
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_height:I

    .line 73
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_width:I

    .line 74
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 75
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->browserCount:I

    .line 76
    iput v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_gesture_count:I

    .line 193
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->isMoveCameraStep:Z

    .line 194
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->isAnimationStep:Z

    .line 195
    iput-boolean v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->isGestureStep:Z

    .line 88
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    .line 90
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->checkDir()V

    .line 91
    return-void
.end method

.method private OnMapCharsWidthsRequired([III)[B
    .locals 1

    .prologue
    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapCharsWidthsRequired(Lcom/autonavi/amap/mapcore/MapCore;[III)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 794
    :goto_0
    return-object v0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnMapDestory()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 744
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapDestory(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private OnMapProcessEvent()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 715
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 717
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ab;->a(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 718
    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 719
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->isAnimationStep:Z

    .line 734
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 741
    :cond_1
    :goto_1
    return-void

    .line 723
    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->isAnimationStep:Z

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->isAnimationStep:Z

    .line 726
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onChangeFinish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private declared-synchronized OnMapReferencechanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 803
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapReferencechanged(Lcom/autonavi/amap/mapcore/MapCore;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private OnMapSufaceChanged(II)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 689
    :try_start_0
    iput p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_width:I

    .line 690
    iput p2, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_height:I

    .line 691
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSufaceChanged(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private OnMapSurfaceCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 677
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSurfaceCreate(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private OnMapSurfaceRenderer(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 701
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, p0, p1}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/autonavi/amap/mapcore/MapCore;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_width:I

    return v0
.end method

.method static synthetic access$100(Lcom/autonavi/amap/mapcore/MapCore;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_height:I

    return v0
.end method

.method static synthetic access$200(Lcom/autonavi/amap/mapcore/MapCore;)Lcom/amap/api/mapcore/util/ab;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    return-object v0
.end method

.method private gestureBegin()V
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_gesture_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_gesture_count:I

    .line 301
    return-void
.end method

.method private gestureEnd()V
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_gesture_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_gesture_count:I

    .line 306
    return-void
.end method

.method private static native nativeAddPoiFilter(JIIIFFLjava/lang/String;)V
.end method

.method private static native nativeCanStopRenderMap(J)Z
.end method

.method private static native nativeChangeMapEnv(JLjava/lang/String;)V
.end method

.method private static native nativeClearPoiFilter(J)V
.end method

.method private static native nativeDestroy(JLcom/autonavi/amap/mapcore/MapCore;)V
.end method

.method private static native nativeGetMapStateInstance(J)I
.end method

.method private static native nativeGetMapstate(J)J
.end method

.method private static native nativeGetScreenGrids(J[BI)V
.end method

.method private static native nativeGetSelectedMapPois(JIII[B)I
.end method

.method private static native nativeNewInstance(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativePutCharbitmap(JI[B)V
.end method

.method private static native nativePutMapdata(JI[B)I
.end method

.method private static native nativePutMapdata(JI[BI)I
.end method

.method private static native nativeRemovePoiFilter(JLjava/lang/String;)V
.end method

.method private static native nativeSelectMapPois(JIII[B)I
.end method

.method private static native nativeSetCityBound(J[B)V
.end method

.method private static native nativeSetIndoorBuildingToBeActive(JLjava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeSetInternalTexture(J[BI)V
.end method

.method private static native nativeSetInternaltexture(J[BI)V
.end method

.method private static native nativeSetMapstate(JJ)V
.end method

.method private static native nativeSetParmater(JIIIII)V
.end method

.method private static native nativeSetStyleData(J[BII)V
.end method

.method private static native nativeSetparameter(JIIIII)V
.end method

.method private static native nativeSurfaceChange(JLcom/autonavi/amap/mapcore/MapCore;II)V
.end method

.method private static native nativeSurfaceCreate(JLcom/autonavi/amap/mapcore/MapCore;)V
.end method

.method private static native nativeSurfaceRenderMap(JLcom/autonavi/amap/mapcore/MapCore;)V
.end method

.method private processGestureMessage()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 215
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 216
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->isGestureStep:Z

    if-eqz v0, :cond_0

    .line 217
    iput-boolean v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->isGestureStep:Z

    .line 219
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onChangeFinish()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->isGestureStep:Z

    .line 229
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 236
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 238
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapMessage;

    if-eqz v0, :cond_7

    .line 239
    iget v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->width:I

    if-nez v2, :cond_3

    .line 240
    iget v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_width:I

    iput v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->width:I

    .line 242
    :cond_3
    iget v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->height:I

    if-nez v2, :cond_4

    .line 243
    iget v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_height:I

    iput v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->height:I

    .line 245
    :cond_4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapMessage;->getMapGestureState()I

    move-result v2

    .line 247
    const/16 v3, 0x64

    if-ne v2, v3, :cond_5

    .line 248
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapCore;->gestureBegin()V

    goto :goto_1

    .line 249
    :cond_5
    const/16 v3, 0x65

    if-ne v2, v3, :cond_6

    .line 250
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapMessage;->runCameraUpdate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_1

    .line 251
    :cond_6
    const/16 v0, 0x66

    if-ne v2, v0, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapCore;->gestureEnd()V

    goto :goto_1

    .line 256
    :cond_7
    invoke-virtual {p0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 257
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    goto :goto_0
.end method

.method private processMessage()V
    .locals 1

    .prologue
    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapCore;->processGestureMessage()V

    .line 201
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapCore;->processStateMapMessage()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processStateMapMessage()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 266
    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->isMoveCameraStep:Z

    if-eqz v0, :cond_0

    .line 268
    iput-boolean v3, p0, Lcom/autonavi/amap/mapcore/MapCore;->isMoveCameraStep:Z

    .line 269
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onChangeFinish()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->isMoveCameraStep:Z

    .line 276
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_0

    .line 282
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 283
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapMessage;

    if-eqz v0, :cond_4

    .line 284
    iget v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->width:I

    if-nez v2, :cond_2

    .line 285
    iget v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_width:I

    iput v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->width:I

    .line 287
    :cond_2
    iget v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->height:I

    if-nez v2, :cond_3

    .line 288
    iget v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_height:I

    iput v2, v0, Lcom/autonavi/amap/mapcore/MapMessage;->height:I

    .line 290
    :cond_3
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 291
    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapMessage;->runCameraUpdate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    goto :goto_1

    .line 294
    :cond_4
    invoke-virtual {p0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V

    .line 295
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public OnMapDataRequired(I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 765
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public OnMapLabelsRequired([II)V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/autonavi/amap/mapcore/IMapCallback;->OnMapLabelsRequired(Lcom/autonavi/amap/mapcore/MapCore;[II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized addGestureMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    .locals 1

    .prologue
    .line 347
    monitor-enter p0

    if-nez p1, :cond_0

    .line 350
    :goto_0
    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addMapAnimation(Lcom/autonavi/amap/mapcore/ADGLAnimation;)Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/ADGLAnimation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ab;->a(Lcom/autonavi/amap/mapcore/ADGLAnimation;)V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized addMessage(Lcom/autonavi/amap/mapcore/MapMessage;)V
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    if-nez p1, :cond_0

    .line 322
    :goto_0
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canStopRenderMap()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 668
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 669
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->nativeCanStopRenderMap(J)Z

    move-result v0

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized clearAllGestureMessage()V
    .locals 1

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGestureMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_gesture_count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAllMessages()V
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapCore;->clearAllGestureMessage()V

    .line 310
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAnimations()V
    .locals 1

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 831
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 832
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeDestroy(JLcom/autonavi/amap/mapcore/MapCore;)V

    .line 833
    iput-wide v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    .line 834
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 836
    iput-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    .line 838
    :cond_0
    return-void
.end method

.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/MapCore;->processMessage()V

    .line 189
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceRenderMap(JLcom/autonavi/amap/mapcore/MapCore;)V

    .line 191
    :cond_0
    return-void
.end method

.method public fillCurGridListWithDataType(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v7, 0xc00

    const/4 v0, 0x0

    .line 842
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 845
    :try_start_0
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    invoke-static {v2, v3, v1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativeGetScreenGrids(J[BI)V

    .line 847
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    const/4 v3, 0x0

    const/4 v1, 0x1

    aget-byte v3, v2, v3

    .line 848
    if-lez v3, :cond_0

    const/16 v2, 0x64

    if-gt v3, v2, :cond_0

    if-nez p1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    move v1, v0

    .line 855
    :goto_1
    if-ge v1, v3, :cond_0

    if-ge v2, v7, :cond_0

    .line 856
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v4, v2

    .line 857
    if-lez v2, :cond_2

    const/16 v4, 0x14

    if-gt v2, v4, :cond_2

    add-int v4, v0, v2

    if-gt v4, v7, :cond_2

    .line 858
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    const-string/jumbo v6, "utf-8"

    invoke-direct {v4, v5, v0, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 859
    add-int/2addr v0, v2

    .line 860
    const/16 v2, 0xa

    if-ne p2, v2, :cond_3

    .line 861
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    invoke-static {v2, v0}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v2

    .line 863
    add-int/lit8 v0, v0, 0x2

    .line 864
    add-int/lit8 v0, v0, 0x1

    .line 865
    new-instance v5, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    const/4 v6, 0x0

    invoke-direct {v5, v4, p2, v2, v6}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 868
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 869
    new-instance v2, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-direct {v2, v4, p2}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 873
    :catch_0
    move-exception v0

    .line 874
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getAnimateionsCount()I
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ab;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInstanceHandle()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    return-wide v0
.end method

.method public declared-synchronized getMapCount()I
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMapstate()Lcom/autonavi/amap/mapcore/MapProjection;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 442
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_mapprojection_instance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_mapprojection_instance:J

    invoke-direct {v0, v2, v3, p0}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(JLcom/autonavi/amap/mapcore/MapCore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPoiItem(III)Lcom/amap/api/maps/model/Poi;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 589
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMaploaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-object v0

    .line 593
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->getSelectedMapPoi(III)Lcom/autonavi/amap/mapcore/SelectedMapPoi;

    move-result-object v8

    .line 594
    if-eqz v8, :cond_0

    .line 595
    new-instance v4, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    .line 596
    iget v1, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapx:I

    iget v2, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapy:I

    invoke-static {v1, v2, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 597
    new-instance v7, Lcom/amap/api/maps/model/Poi;

    iget-object v9, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->name:Ljava/lang/String;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v2, v8, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->poiid:Ljava/lang/String;

    invoke-direct {v7, v9, v1, v2}, Lcom/amap/api/maps/model/Poi;-><init>(Ljava/lang/String;Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    .line 602
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSelectedMapPoi(III)Lcom/autonavi/amap/mapcore/SelectedMapPoi;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 607
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 608
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 609
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->nativeGetSelectedMapPois(JIII[B)I

    move-result v0

    .line 612
    if-nez v0, :cond_0

    move-object v0, v6

    .line 658
    :goto_0
    return-object v0

    .line 614
    :cond_0
    if-lez v0, :cond_3

    .line 615
    new-instance v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/SelectedMapPoi;-><init>()V

    .line 617
    invoke-static {v5, v7}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->winx:I

    .line 619
    const/4 v1, 0x4

    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->winy:I

    .line 621
    const/16 v1, 0x8

    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapx:I

    .line 623
    const/16 v1, 0xc

    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->mapy:I

    .line 625
    const/16 v1, 0x10

    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconXmin:I

    .line 627
    const/16 v1, 0x14

    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconXmax:I

    .line 629
    const/16 v1, 0x18

    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconYmin:I

    .line 631
    const/16 v1, 0x1c

    invoke-static {v5, v1}, Lcom/autonavi/amap/mapcore/Convert;->getInt([BI)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->iconYmax:I

    .line 633
    const/16 v2, 0x20

    const/16 v1, 0x21

    aget-byte v3, v5, v2

    .line 634
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    move v1, v7

    .line 635
    :goto_1
    if-ge v1, v3, :cond_1

    .line 636
    invoke-static {v5, v2}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v6

    int-to-char v6, v6

    .line 637
    add-int/lit8 v2, v2, 0x2

    .line 638
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->name:Ljava/lang/String;

    .line 642
    add-int/lit8 v1, v2, 0x1

    aget-byte v3, v5, v2

    .line 643
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    move v1, v7

    .line 644
    :goto_2
    if-ge v1, v3, :cond_2

    .line 645
    invoke-static {v5, v2}, Lcom/autonavi/amap/mapcore/Convert;->getShort([BI)S

    move-result v6

    int-to-char v6, v6

    .line 646
    add-int/lit8 v2, v2, 0x2

    .line 647
    if-eqz v6, :cond_2

    .line 650
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 652
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/SelectedMapPoi;->poiid:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move-object v0, v6

    .line 658
    goto/16 :goto_0
.end method

.method public declared-synchronized getStateMessage()Lcom/autonavi/amap/mapcore/MapMessage;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapCore;->getMapCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 339
    :goto_0
    monitor-exit p0

    return-object v0

    .line 334
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapMessage;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :try_start_2
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 336
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public declared-synchronized getStateMessageCount()I
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mStateMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMapEngineValid()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newMap()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->checkDir()V

    .line 95
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;->getBaseMapPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/amap/api/mapcore/util/ab;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/ab;-><init>()V

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->map_anims_mgr:Lcom/amap/api/mapcore/util/ab;

    .line 98
    new-instance v1, Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;-><init>()V

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 99
    const/16 v1, 0xc00

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->tmp_3072bytes_data:[B

    .line 100
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getFontVersion()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->nativeNewInstance(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    .line 102
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 103
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/MapCore;->nativeGetMapstate(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_mapprojection_instance:J

    .line 108
    :cond_0
    return-void
.end method

.method public onIndoorBuildingActivity([B)V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v0, p0, p1}, Lcom/autonavi/amap/mapcore/IMapCallback;->onIndoorBuildingActivity(Lcom/autonavi/amap/mapcore/MapCore;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onIndoorDataRequired(I[Ljava/lang/String;[I[I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 821
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v0, :cond_0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/IMapCallback;->onIndoorDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;[I[I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putCharbitmap(I[B)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 662
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 663
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutCharbitmap(JI[B)V

    .line 665
    :cond_0
    return-void
.end method

.method public putMapData([BIIII)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 559
    .line 560
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 565
    array-length v2, p1

    if-ne v2, p3, :cond_3

    if-nez p2, :cond_3

    .line 567
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v2, v3, p4, p1}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutMapdata(JI[B)I

    move-result v2

    if-lez v2, :cond_2

    .line 580
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/IMapCallback;->requestRender()V

    .line 584
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 567
    goto :goto_0

    .line 570
    :cond_3
    new-array v2, p3, [B

    .line 571
    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v4, v5, p4, v2}, Lcom/autonavi/amap/mapcore/MapCore;->nativePutMapdata(JI[B)I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public setGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 116
    return-void
.end method

.method public setIndoorBuildingToBeActive(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetIndoorBuildingToBeActive(JLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setInternaltexture([BI)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 431
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 432
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetInternaltexture(J[BI)V

    .line 435
    :cond_0
    return-void
.end method

.method public setMapCallback(Lcom/autonavi/amap/mapcore/IMapCallback;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMapcallback:Lcom/autonavi/amap/mapcore/IMapCallback;

    .line 120
    return-void
.end method

.method public setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;)V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/amap/mapcore/MapCore;->setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;Z)V

    .line 451
    return-void
.end method

.method public setMapstate(Lcom/autonavi/amap/mapcore/MapProjection;Z)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 457
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_2

    .line 461
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 463
    if-nez v0, :cond_0

    .line 464
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 465
    iget-object v0, v2, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v2, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 467
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 468
    iget-object v0, v2, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v2, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7, v8, v9, v4}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 470
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v4, v0, v2

    .line 471
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_0
    move-object v6, v0

    .line 474
    new-instance v0, Lcom/autonavi/amap/mapcore/MapProjection;

    invoke-direct {v0, p0}, Lcom/autonavi/amap/mapcore/MapProjection;-><init>(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 475
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v3, 0x1

    aget-object v3, v6, v3

    iget v4, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_width:I

    iget v5, p0, Lcom/autonavi/amap/mapcore/MapCore;->surface_height:I

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/MapProjection;Lcom/autonavi/amap/mapcore/MapConfig;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;II)F

    move-result v1

    .line 476
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapProjection;->recycle()V

    .line 478
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    .line 480
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitZoomLevel(F)V

    .line 483
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getMapZoomer()F

    move-result v0

    .line 498
    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setMapZoomer(F)V

    .line 499
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 503
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 504
    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 505
    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    .line 506
    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    .line 508
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->recalculate()V

    .line 509
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lcom/amap/api/mapcore/util/en;->a(Lcom/autonavi/amap/mapcore/interfaces/IAMap;ZLcom/autonavi/amap/mapcore/MapProjection;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    .line 511
    array-length v0, v3

    new-array v4, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    .line 514
    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 515
    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 517
    aget-object v7, v3, v0

    iget v7, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aget-object v8, v3, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v7, v8, v5}, Lcom/autonavi/amap/mapcore/MapProjection;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 519
    aput-object v5, v4, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_1
    invoke-static {v6, v4, v2, v1}, Lcom/amap/api/mapcore/util/en;->a([Lcom/autonavi/amap/mapcore/IPoint;[Lcom/autonavi/amap/mapcore/IPoint;II)[Ljava/lang/Integer;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_4

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 524
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 525
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 528
    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/autonavi/amap/mapcore/MapProjection;->setGeoCenter(II)V

    .line 533
    :cond_2
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapProjection;->getInstanceHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetMapstate(JJ)V

    .line 538
    :cond_3
    return-void

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public setParameter(IIIII)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 543
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetparameter(JIIIII)V

    .line 546
    :cond_0
    return-void
.end method

.method public setStyleData([BII)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 422
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 423
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSetStyleData(J[BII)V

    .line 427
    :cond_0
    return-void
.end method

.method public startMapSlidAnim(Lcom/autonavi/amap/mapcore/IPoint;FF)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onFling()V

    .line 355
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/amap/mapcore/MapCore$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore$1;-><init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/IPoint;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method public surfaceChange(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    const/16 v0, 0x78

    const/16 v1, 0x32

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 133
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 134
    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v2, v3, p0, p2, p3}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceChange(JLcom/autonavi/amap/mapcore/MapCore;II)V

    .line 136
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 137
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 139
    const/16 v2, 0x64

    .line 143
    if-le v3, v0, :cond_7

    .line 144
    const/16 v2, 0xa0

    if-gt v3, v2, :cond_2

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_1

    move v1, v0

    :goto_0
    move v5, v6

    move v3, v0

    move v2, v1

    .line 177
    :goto_1
    const/16 v1, 0x803

    mul-float v0, v4, v8

    float-to-int v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 179
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->mMap:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    int-to-float v1, v2

    div-float/2addr v1, v8

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setZoomScaleParam(F)V

    .line 181
    const/16 v1, 0x3e9

    move-object v0, p0

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 182
    const/16 v1, 0x3ff

    move-object v0, p0

    move v2, v6

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->setParameter(IIIII)V

    .line 184
    :cond_0
    return-void

    .line 149
    :cond_1
    const/16 v1, 0x64

    .line 150
    const/16 v0, 0xa0

    goto :goto_0

    .line 153
    :cond_2
    const/16 v0, 0xf0

    if-gt v3, v0, :cond_4

    .line 154
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_3

    .line 155
    const/16 v1, 0x3c

    .line 156
    const/16 v3, 0xc8

    .line 157
    const/4 v5, 0x2

    move v2, v1

    goto :goto_1

    .line 159
    :cond_3
    const/16 v1, 0x46

    .line 160
    const/16 v3, 0x96

    .line 161
    const/4 v5, 0x2

    move v2, v1

    goto :goto_1

    .line 163
    :cond_4
    const/16 v0, 0x140

    if-gt v3, v0, :cond_5

    .line 165
    const/16 v3, 0xb4

    .line 166
    const/4 v5, 0x3

    move v2, v1

    goto :goto_1

    .line 167
    :cond_5
    const/16 v0, 0x1e0

    if-gt v3, v0, :cond_6

    .line 169
    const/16 v3, 0x12c

    .line 170
    const/4 v5, 0x3

    move v2, v1

    goto :goto_1

    .line 172
    :cond_6
    const/16 v1, 0x28

    .line 173
    const/16 v3, 0x168

    .line 174
    const/4 v5, 0x4

    move v2, v1

    goto :goto_1

    :cond_7
    move v5, v6

    move v3, v1

    goto :goto_1
.end method

.method public surfaceCreate(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 128
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/MapCore;->native_instance:J

    invoke-static {v0, v1, p0}, Lcom/autonavi/amap/mapcore/MapCore;->nativeSurfaceCreate(JLcom/autonavi/amap/mapcore/MapCore;)V

    .line 130
    :cond_0
    return-void
.end method
