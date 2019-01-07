.class public Lcom/autonavi/amap/mapcore/MapCoreManager;
.super Ljava/lang/Object;
.source "MapCoreManager.java"


# static fields
.field static mapCoreManager:Lcom/autonavi/amap/mapcore/MapCoreManager;


# instance fields
.field private mapCoreTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/amap/mapcore/MapCore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    :try_start_0
    const-string/jumbo v0, "gdinamapv4sdk752"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "gdinamapv4sdk752ex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreTable:Ljava/util/Hashtable;

    .line 15
    return-void
.end method

.method private OnMapDataRequired(I[Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OnMapDataRequired instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    if-eqz p3, :cond_1

    .line 49
    invoke-virtual {p0, p3}, Lcom/autonavi/amap/mapcore/MapCoreManager;->getMapCore(I)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->OnMapDataRequired(I[Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "instance is 0:  tilesNames: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "instance is 0:  tilesNames: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 61
    iget-object v2, p0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapCore;

    .line 62
    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->OnMapDataRequired(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method private OnMapLabelsRequired([III)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OnMapLabelsRequired instance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p0, p3}, Lcom/autonavi/amap/mapcore/MapCoreManager;->getMapCore(I)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore/MapCore;->OnMapLabelsRequired([II)V

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OnMapLabelsRequired instance is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  chars: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p1, v0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "OnMapLabelsRequired instance is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " chars: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/autonavi/amap/mapcore/MapCoreManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreManager:Lcom/autonavi/amap/mapcore/MapCoreManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/autonavi/amap/mapcore/MapCoreManager;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/MapCoreManager;-><init>()V

    sput-object v0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreManager:Lcom/autonavi/amap/mapcore/MapCoreManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreManager:Lcom/autonavi/amap/mapcore/MapCoreManager;

    return-object v0
.end method

.method private onIndoorBuildingActivity([BI)V
    .locals 1

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0, p2}, Lcom/autonavi/amap/mapcore/MapCoreManager;->getMapCore(I)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapCore;->onIndoorBuildingActivity([B)V

    .line 96
    :cond_0
    return-void
.end method

.method private onIndoorDataRequired(I[Ljava/lang/String;[I[II)V
    .locals 1

    .prologue
    .line 100
    if-eqz p5, :cond_0

    .line 101
    invoke-virtual {p0, p5}, Lcom/autonavi/amap/mapcore/MapCoreManager;->getMapCore(I)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/amap/mapcore/MapCore;->onIndoorDataRequired(I[Ljava/lang/String;[I[I)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public getMapCore(I)Lcom/autonavi/amap/mapcore/MapCore;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/MapCore;

    return-object v0
.end method

.method public getMapCoreSize()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public putMapCore(ILcom/autonavi/amap/mapcore/MapCore;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public removeMapCore(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/MapCoreManager;->mapCoreTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
