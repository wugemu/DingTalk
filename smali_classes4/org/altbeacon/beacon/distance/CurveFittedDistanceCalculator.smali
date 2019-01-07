.class public Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;
.super Ljava/lang/Object;
.source "CurveFittedDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/DistanceCalculator;


# static fields
.field public static final TAG:Ljava/lang/String; = "CurveFittedDistanceCalculator"


# instance fields
.field private mCoefficient1:D

.field private mCoefficient2:D

.field private mCoefficient3:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "coefficient1"    # D
    .param p3, "coefficient2"    # D
    .param p5, "coefficient3"    # D

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient1:D

    .line 32
    iput-wide p3, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient2:D

    .line 33
    iput-wide p5, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient3:D

    .line 34
    return-void
.end method


# virtual methods
.method public calculateDistance(ID)D
    .locals 10
    .param p1, "txPower"    # I
    .param p2, "rssi"    # D

    .prologue
    .line 46
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-nez v4, :cond_0

    .line 47
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 66
    :goto_0
    return-wide v0

    .line 50
    :cond_0
    if-ltz p1, :cond_1

    .line 51
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo v4, "CurveFittedDistanceCalculator"

    const-string/jumbo v5, "calculating distance based on mRssi of %s and txPower of %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, p2

    int-to-double v6, p1

    div-double v2, v4, v6

    .line 59
    .local v2, "ratio":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 60
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 65
    .local v0, "distance":D
    :goto_1
    const-string/jumbo v4, "CurveFittedDistanceCalculator"

    const-string/jumbo v5, "avg mRssi: %s distance: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    .end local v0    # "distance":D
    :cond_2
    iget-wide v4, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient1:D

    iget-wide v6, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient2:D

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;->mCoefficient3:D

    add-double v0, v4, v6

    .restart local v0    # "distance":D
    goto :goto_1
.end method
