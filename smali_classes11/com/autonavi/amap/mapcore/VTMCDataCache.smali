.class public Lcom/autonavi/amap/mapcore/VTMCDataCache;
.super Ljava/lang/Object;
.source "VTMCDataCache.java"


# static fields
.field public static final MAXSIZE:I = 0x1f4

.field public static final MAX_EXPIREDTIME:I = 0x12c

.field private static instance:Lcom/autonavi/amap/mapcore/VTMCDataCache;

.field static vtmcHs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/amap/mapcore/VTmcData;",
            ">;"
        }
    .end annotation
.end field

.field static vtmcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mNewestTimeStamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->mNewestTimeStamp:I

    return-void
.end method

.method private deleteData(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 77
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void

    .line 76
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/autonavi/amap/mapcore/VTMCDataCache;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->instance:Lcom/autonavi/amap/mapcore/VTMCDataCache;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/VTMCDataCache;-><init>()V

    sput-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->instance:Lcom/autonavi/amap/mapcore/VTMCDataCache;

    .line 62
    :cond_0
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->instance:Lcom/autonavi/amap/mapcore/VTMCDataCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getData(Ljava/lang/String;Z)Lcom/autonavi/amap/mapcore/VTmcData;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 87
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/VTmcData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 91
    :cond_1
    if-eqz v0, :cond_3

    .line 94
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, v0, Lcom/autonavi/amap/mapcore/VTmcData;->createTime:I

    sub-int/2addr v2, v3

    const/16 v3, 0x12c

    if-le v2, v3, :cond_2

    move-object v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    iget v2, p0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->mNewestTimeStamp:I

    iget v3, v0, Lcom/autonavi/amap/mapcore/VTmcData;->timeStamp:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v2, v3, :cond_0

    move-object v0, v1

    .line 105
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 112
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized putData([B)Lcom/autonavi/amap/mapcore/VTmcData;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/autonavi/amap/mapcore/VTmcData;

    invoke-direct {v1, p1}, Lcom/autonavi/amap/mapcore/VTmcData;-><init>([B)V

    .line 120
    iget v0, p0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->mNewestTimeStamp:I

    iget v2, v1, Lcom/autonavi/amap/mapcore/VTmcData;->timeStamp:I

    if-ge v0, v2, :cond_0

    .line 123
    iget v0, v1, Lcom/autonavi/amap/mapcore/VTmcData;->timeStamp:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->mNewestTimeStamp:I

    .line 126
    :cond_0
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    iget-object v2, v1, Lcom/autonavi/amap/mapcore/VTmcData;->girdName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/VTmcData;

    .line 127
    if-eqz v0, :cond_2

    .line 129
    iget-object v2, v0, Lcom/autonavi/amap/mapcore/VTmcData;->eTag:Ljava/lang/String;

    iget-object v3, v1, Lcom/autonavi/amap/mapcore/VTmcData;->eTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget v1, p0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->mNewestTimeStamp:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/VTmcData;->updateTimeStamp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit p0

    return-object v0

    .line 139
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/autonavi/amap/mapcore/VTmcData;->girdName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autonavi/amap/mapcore/VTMCDataCache;->deleteData(Ljava/lang/String;)V

    .line 145
    :cond_2
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_3

    .line 146
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    sget-object v2, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_3
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    iget-object v2, v1, Lcom/autonavi/amap/mapcore/VTmcData;->girdName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/autonavi/amap/mapcore/VTmcData;->girdName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 152
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    sget-object v0, Lcom/autonavi/amap/mapcore/VTMCDataCache;->vtmcHs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 68
    return-void
.end method
