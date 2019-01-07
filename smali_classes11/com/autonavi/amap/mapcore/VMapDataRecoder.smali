.class Lcom/autonavi/amap/mapcore/VMapDataRecoder;
.super Ljava/lang/Object;
.source "VMapDataCache.java"


# instance fields
.field mDataSource:I

.field mGridName:Ljava/lang/String;

.field mcreateTime:I

.field times:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/VMapDataRecoder;->times:I

    .line 133
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/VMapDataRecoder;->mcreateTime:I

    .line 136
    iput p2, p0, Lcom/autonavi/amap/mapcore/VMapDataRecoder;->mDataSource:I

    .line 137
    iput-object p1, p0, Lcom/autonavi/amap/mapcore/VMapDataRecoder;->mGridName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/VMapDataRecoder;->mGridName:Ljava/lang/String;

    goto :goto_0
.end method
