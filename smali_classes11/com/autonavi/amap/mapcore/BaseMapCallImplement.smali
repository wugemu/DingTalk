.class public abstract Lcom/autonavi/amap/mapcore/BaseMapCallImplement;
.super Ljava/lang/Object;
.source "BaseMapCallImplement.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/IBaseMapCallback;
.implements Lcom/autonavi/amap/mapcore/IMapCallback;


# instance fields
.field private bldReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

.field private curBldMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curIndoorMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curPoiMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curRegionMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curRoadMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curScreenGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curStiMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private curVectmcMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private indoorMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field mapGridFillLock:Ljava/lang/Object;

.field private poiReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private regionReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private roadReqMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private stiReqMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

.field tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

.field private vectmcReqMapGirds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private versionMapGrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->roadReqMapGrids:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldReqMapGrids:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->regionReqMapGrids:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->poiReqMapGrids:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->versionMapGrids:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->indoorMapGrids:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcReqMapGirds:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiReqMapGirds:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRoadMapGrids:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curBldMapGrids:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRegionMapGrids:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curPoiMapGrids:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curVectmcMapGirds:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curStiMapGirds:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curScreenGirds:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curIndoorMapGirds:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 28
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    .line 29
    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    return-void
.end method

.method private isGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 267
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 268
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const/4 v2, 0x1

    .line 271
    :cond_0
    return v2

    .line 267
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isIndoorGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 334
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 335
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const/4 v2, 0x1

    .line 338
    :cond_0
    return v2

    .line 334
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public OnMapCharsWidthsRequired(Lcom/autonavi/amap/mapcore/MapCore;[III)[B
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-virtual {v0, p2}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getCharsWidths([I)[B

    move-result-object v0

    return-object v0
.end method

.method public OnMapDataRequired(Lcom/autonavi/amap/mapcore/MapCore;I[Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getReqGridList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 47
    new-instance v2, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    aget-object v3, p3, v0

    invoke-direct {v2, v3, p2}, Lcom/autonavi/amap/mapcore/MapSourceGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_2
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 50
    invoke-virtual {p0, p1, v1, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public OnMapDestory(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1

    .prologue
    .line 545
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->destoryMap(Lcom/autonavi/amap/mapcore/MapCore;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public OnMapLabelsRequired(Lcom/autonavi/amap/mapcore/MapCore;[II)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 559
    if-eqz p2, :cond_0

    if-gtz p3, :cond_1

    .line 580
    :cond_0
    return-void

    .line 570
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 571
    aget v1, p2, v0

    .line 572
    new-instance v2, Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;-><init>()V

    iput-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 573
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->textTextureGenerator:Lcom/autonavi/amap/mapcore/TextTextureGenerator;

    .line 574
    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/TextTextureGenerator;->getTextPixelBuffer(I)[B

    move-result-object v2

    .line 575
    if-eqz v2, :cond_2

    .line 576
    invoke-virtual {p1, v1, v2}, Lcom/autonavi/amap/mapcore/MapCore;->putCharbitmap(I[B)V

    .line 570
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public OnMapProcessEvent(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public OnMapSurfaceCreate(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public OnMapSurfaceRenderer(Ljavax/microedition/khronos/opengles/GL10;Lcom/autonavi/amap/mapcore/MapCore;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    const/16 v0, 0xb

    if-ne p3, v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curPoiMapGrids:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 114
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRoadMapGrids:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 116
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRegionMapGrids:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 118
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curBldMapGrids:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 120
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curVectmcMapGirds:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 122
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curStiMapGirds:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V

    .line 125
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curIndoorMapGirds:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-virtual {p2, v0, v2}, Lcom/autonavi/amap/mapcore/MapCore;->fillCurGridListWithDataType(Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 132
    :cond_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized destoryMap(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 593
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 604
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->clearAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    :cond_1
    monitor-exit p0

    return-void

    .line 598
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 598
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 599
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getCurGridList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRoadMapGrids:Ljava/util/ArrayList;

    .line 152
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curBldMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curRegionMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 141
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curPoiMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 143
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curVectmcMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 145
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curScreenGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 147
    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 148
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curIndoorMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 149
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curStiMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 152
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReqGridList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->roadReqMapGrids:Ljava/util/ArrayList;

    .line 103
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->bldReqMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->regionReqMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 73
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->poiReqMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->vectmcReqMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 83
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->curScreenGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 92
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->stiReqMapGirds:Ljava/util/ArrayList;

    goto :goto_0

    .line 96
    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 97
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->versionMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 98
    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    .line 99
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->indoorMapGrids:Ljava/util/ArrayList;

    goto :goto_0

    .line 103
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGridInScreen(ILjava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 255
    invoke-direct {p0, p2, v3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 257
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public isGridsInScreen(Ljava/util/ArrayList;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 237
    :goto_0
    return v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_1
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 223
    if-nez v5, :cond_2

    .line 224
    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 225
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 227
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    monitor-exit v4

    move v0, v2

    goto :goto_0

    .line 225
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 231
    :cond_4
    monitor-exit v4

    move v0, v1

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 237
    goto :goto_0
.end method

.method public isIndoorGridInScreen(ILjava/lang/String;S)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    :goto_0
    return v0

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-direct {p0, v4, v3}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isIndoorGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 325
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public isIndoorGridsInScreen(Ljava/util/ArrayList;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 303
    :goto_0
    return v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 287
    goto :goto_0

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->mapGridFillLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->getCurGridList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 290
    if-nez v5, :cond_2

    .line 291
    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 292
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 294
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->isIndoorGridInList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    monitor-exit v4

    move v0, v2

    goto :goto_0

    .line 292
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 298
    :cond_4
    monitor-exit v4

    move v0, v1

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 303
    goto :goto_0
.end method

.method public declared-synchronized newMap(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 585
    new-instance v0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    .line 586
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autonavi/amap/mapcore/ConnectionManager;->threadFlag:Z

    .line 504
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->interrupt()V

    .line 506
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->shutDown()V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume(Lcom/autonavi/amap/mapcore/MapCore;)V
    .locals 1

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    .line 523
    new-instance v0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    .line 524
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/ConnectionManager;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :goto_0
    monitor-exit p0

    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected proccessRequiredData(Lcom/autonavi/amap/mapcore/MapCore;Ljava/util/ArrayList;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/amap/mapcore/MapCore;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/MapSourceGridData;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 369
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    .line 370
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 371
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    .line 373
    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->isProcessing(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 377
    :cond_0
    const/4 v1, 0x4

    if-ne p3, v1, :cond_4

    .line 379
    invoke-static {}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VTMCDataCache;

    move-result-object v1

    .line 380
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getData(Ljava/lang/String;Z)Lcom/autonavi/amap/mapcore/VTmcData;

    move-result-object v3

    .line 382
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->getData(Ljava/lang/String;Z)Lcom/autonavi/amap/mapcore/VTmcData;

    move-result-object v4

    .line 385
    if-eqz v3, :cond_1

    .line 386
    iget-object v1, v3, Lcom/autonavi/amap/mapcore/VTmcData;->eTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->obj:Ljava/lang/Object;

    .line 388
    :cond_1
    if-eqz v4, :cond_3

    iget-object v1, v4, Lcom/autonavi/amap/mapcore/VTmcData;->data:[B

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/autonavi/amap/mapcore/VTmcData;->data:[B

    array-length v1, v1

    if-lez v1, :cond_3

    .line 391
    iget-object v1, v4, Lcom/autonavi/amap/mapcore/VTmcData;->data:[B

    iget-object v0, v4, Lcom/autonavi/amap/mapcore/VTmcData;->data:[B

    array-length v3, v0

    iget v5, v4, Lcom/autonavi/amap/mapcore/VTmcData;->createTime:I

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/MapCore;->putMapData([BIIII)Z

    .line 370
    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    :cond_4
    :try_start_0
    iget-object v1, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->gridName:Ljava/lang/String;

    .line 401
    if-ne p3, v8, :cond_5

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->gridName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;->mIndoorIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    :cond_5
    invoke-static {}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getInstance()Lcom/autonavi/amap/mapcore/VMapDataCache;

    move-result-object v3

    .line 405
    invoke-virtual {v3, v1, p3}, Lcom/autonavi/amap/mapcore/VMapDataCache;->getRecoder(Ljava/lang/String;I)Lcom/autonavi/amap/mapcore/VMapDataRecoder;

    move-result-object v1

    .line 409
    if-eqz v1, :cond_6

    iget-object v3, v1, Lcom/autonavi/amap/mapcore/VMapDataRecoder;->mGridName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v1, v1, Lcom/autonavi/amap/mapcore/VMapDataRecoder;->mGridName:Ljava/lang/String;

    .line 410
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 430
    :cond_6
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 440
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 455
    const/4 v0, 0x0

    .line 456
    if-ne p3, v8, :cond_8

    .line 457
    new-instance v0, Lcom/autonavi/amap/mapcore/IndoorMapLoader;

    invoke-direct {v0, p1, p0, p3}, Lcom/autonavi/amap/mapcore/IndoorMapLoader;-><init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/BaseMapCallImplement;I)V

    move-object v1, v0

    .line 464
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 465
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapSourceGridData;

    .line 466
    iget-object v3, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->tileProcessCtrl:Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->addProcessingTile(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/BaseMapLoader;->addReuqestTiles(Lcom/autonavi/amap/mapcore/MapSourceGridData;)V

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 458
    :cond_8
    const/16 v1, 0xb

    if-eq p3, v1, :cond_b

    .line 461
    new-instance v0, Lcom/autonavi/amap/mapcore/NormalMapLoader;

    invoke-direct {v0, p1, p0, p3}, Lcom/autonavi/amap/mapcore/NormalMapLoader;-><init>(Lcom/autonavi/amap/mapcore/MapCore;Lcom/autonavi/amap/mapcore/BaseMapCallImplement;I)V

    move-object v1, v0

    goto :goto_2

    .line 469
    :cond_9
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    if-eqz v0, :cond_a

    .line 470
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/BaseMapCallImplement;->connectionManager:Lcom/autonavi/amap/mapcore/ConnectionManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/ConnectionManager;->insertConntionTask(Lcom/autonavi/amap/mapcore/BaseMapLoader;)V

    .line 474
    :cond_a
    return-void

    :cond_b
    move-object v1, v0

    goto :goto_2
.end method
