.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
.super Ljava/lang/Enum;
.source "PerformanceID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_SDKMONITOR:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_SYNCLINK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_SYNCPROTO:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field public static final enum MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 16
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_NETWORK"

    const-string/jumbo v3, "network"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 21
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_WEBAPP"

    const-string/jumbo v3, "webapp"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 26
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_H5EXCEPTION"

    const-string/jumbo v3, "H5Exception"

    invoke-direct {v1, v2, v6, v3}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 31
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_SDKMONITOR"

    const-string/jumbo v3, "sdkmonitor"

    invoke-direct {v1, v2, v7, v3}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SDKMONITOR:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 36
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_SYNCLINK"

    const-string/jumbo v3, "synclink"

    invoke-direct {v1, v2, v8, v3}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCLINK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 41
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_SYNCPROTO"

    const/4 v3, 0x5

    const-string/jumbo v4, "syncproto"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCPROTO:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 46
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_PERFORMANCE"

    const/4 v3, 0x6

    const-string/jumbo v4, "performance"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 51
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_FOOTPRINT"

    const/4 v3, 0x7

    const-string/jumbo v4, "footprint"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 56
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    const-string/jumbo v2, "MONITORPOINT_KEYBIZTRACE"

    const/16 v3, 0x8

    const-string/jumbo v4, "keybiztrace"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 11
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SDKMONITOR:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v2, v1, v7

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCLINK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCPROTO:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    aput-object v3, v1, v2

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->sStringToEnum:Ljava/util/Map;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 74
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->desc:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->desc:Ljava/lang/String;

    return-object v0
.end method
