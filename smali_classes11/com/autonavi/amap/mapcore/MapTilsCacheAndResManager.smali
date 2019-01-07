.class public abstract Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;
.super Ljava/lang/Object;
.source "MapTilsCacheAndResManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;
    }
.end annotation


# static fields
.field public static final AUTONAVI_DATA_PATH:Ljava/lang/String; = "data"

.field public static final AUTONAVI_PATH:Ljava/lang/String; = "amap"

.field public static final ICONS_DATA:I = 0x2

.field public static final MAP_CACHE_PATH_NAME:Ljava/lang/String; = "cache"

.field public static final MAP_DATA_OFFLINE_PATH_NAME:Ljava/lang/String; = "vmap"

.field public static final MAP_MAP_ASSETS_NAME:Ljava/lang/String; = "map_assets"

.field public static final MAP_RES_EXT_PATH_NAME:Ljava/lang/String; = "vmap4res"

.field public static final MAP_TILES_PATH_NAME:Ljava/lang/String; = "vmap4tiles"

.field public static final STYLE_DATA:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManagerImpl;->instance(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract canUpate(Ljava/lang/String;)Z
.end method

.method public abstract checkDir()V
.end method

.method public abstract clearOnlineMapTilsCache()V
.end method

.method public abstract getBaseMapPath()Ljava/lang/String;
.end method

.method public abstract getIconsData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
.end method

.method public abstract getMapCachePath()Ljava/lang/String;
.end method

.method public abstract getMapExtResPath()Ljava/lang/String;
.end method

.method public abstract getMapOfflineDataPath()Ljava/lang/String;
.end method

.method public abstract getMapOnlineDataPath()Ljava/lang/String;
.end method

.method public abstract getOtherResData(Ljava/lang/String;)[B
.end method

.method public abstract getStyleData(Ljava/lang/String;Lcom/autonavi/amap/mapcore/MapTilsCacheAndResManager$RetStyleIconsFile;)[B
.end method

.method public abstract saveFile(Ljava/lang/String;II[B)V
.end method
