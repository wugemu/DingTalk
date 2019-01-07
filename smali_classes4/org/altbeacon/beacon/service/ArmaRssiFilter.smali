.class public Lorg/altbeacon/beacon/service/ArmaRssiFilter;
.super Ljava/lang/Object;
.source "ArmaRssiFilter.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/RssiFilter;


# static fields
.field private static DEFAULT_ARMA_SPEED:D = 0.0

.field private static final TAG:Ljava/lang/String; = "ArmaRssiFilter"


# instance fields
.field private armaMeasurement:I

.field private armaSpeed:D

.field private isInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->DEFAULT_ARMA_SPEED:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaSpeed:D

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->isInitialized:Z

    .line 29
    sget-wide v0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->DEFAULT_ARMA_SPEED:D

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaSpeed:D

    .line 30
    return-void
.end method

.method public static setDEFAULT_ARMA_SPEED(D)V
    .locals 0
    .param p0, "default_arma_speed"    # D

    .prologue
    .line 53
    sput-wide p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->DEFAULT_ARMA_SPEED:D

    .line 54
    return-void
.end method


# virtual methods
.method public addMeasurement(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "rssi"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 33
    const-string/jumbo v0, "ArmaRssiFilter"

    const-string/jumbo v1, "adding rssi: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->isInitialized:Z

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaMeasurement:I

    .line 37
    iput-boolean v6, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->isInitialized:Z

    .line 39
    :cond_0
    iget v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaMeasurement:I

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaSpeed:D

    iget v4, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaMeasurement:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    iput v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaMeasurement:I

    .line 40
    const-string/jumbo v0, "ArmaRssiFilter"

    const-string/jumbo v1, "armaMeasurement: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaMeasurement:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public calculateRssi()D
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    iget v0, p0, Lorg/altbeacon/beacon/service/ArmaRssiFilter;->armaMeasurement:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public noMeasurementsAvailable()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
