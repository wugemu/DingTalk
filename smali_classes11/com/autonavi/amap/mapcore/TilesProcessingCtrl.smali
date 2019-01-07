.class Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;
.super Ljava/lang/Object;
.source "TilesProcessingCtrl.java"


# instance fields
.field lastInsertTime:J

.field private processingTiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/amap/mapcore/ProcessingTile;",
            ">;"
        }
    .end annotation
.end field

.field requiresize:I

.field threadFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->processingTiles:Ljava/util/Hashtable;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->requiresize:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->threadFlag:Z

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->updateLastInsertTime()V

    .line 31
    return-void
.end method


# virtual methods
.method public addProcessingTile(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->processingTiles:Ljava/util/Hashtable;

    new-instance v1, Lcom/autonavi/amap/mapcore/ProcessingTile;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/autonavi/amap/mapcore/ProcessingTile;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->processingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 28
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->processingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public isProcessing(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->processingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->processingTiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public updateLastInsertTime()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/TilesProcessingCtrl;->lastInsertTime:J

    .line 35
    return-void
.end method
