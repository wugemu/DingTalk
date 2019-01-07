.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
.super Ljava/lang/Enum;
.source "BatteryID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum AMNET_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum BLUETOOTH:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final DEFAULT_BUNDLE:Ljava/lang/String; = "bundle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_DIAGNOSE:Ljava/lang/String; = "diagnose"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_FALSE:Ljava/lang/String; = "0"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_TRUE:Ljava/lang/String; = "1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LOCATION:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum MAP:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum MEDIA_RECORD:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum NORMAL_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum SENSOR:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final STATS_LONG_TIME_CONSUME:Ljava/lang/String; = "longTimeCost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_WARNNING_NAME:Ljava/lang/String; = "warnName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_WARNNING_VALUE:Ljava/lang/String; = "warnVal"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum WAKE_LOCK:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum WEB_VIEW:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field public static final enum WIFI_SCAN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;",
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

    .line 14
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "STATISTIC"

    const-string/jumbo v3, "STATISTIC"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 18
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "SAMPLE_STATS"

    const-string/jumbo v3, "STATS"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 22
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "MEDIA_RECORD"

    const-string/jumbo v3, "RECORD"

    invoke-direct {v1, v2, v6, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->MEDIA_RECORD:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 26
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "LOCATION"

    const-string/jumbo v3, "LOC"

    invoke-direct {v1, v2, v7, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->LOCATION:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 30
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "MAP"

    const-string/jumbo v3, "MAP"

    invoke-direct {v1, v2, v8, v3}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->MAP:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 34
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "WIFI_SCAN"

    const/4 v3, 0x5

    const-string/jumbo v4, "SCAN"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WIFI_SCAN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 38
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "NORMAL_ALARM"

    const/4 v3, 0x6

    const-string/jumbo v4, "N_ALARM"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->NORMAL_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 42
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "AMNET_ALARM"

    const/4 v3, 0x7

    const-string/jumbo v4, "A_ALARM"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->AMNET_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 46
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "SENSOR"

    const/16 v3, 0x8

    const-string/jumbo v4, "SENSOR"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SENSOR:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 50
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "WAKE_LOCK"

    const/16 v3, 0x9

    const-string/jumbo v4, "WAKE"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WAKE_LOCK:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 54
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "WEB_VIEW"

    const/16 v3, 0xa

    const-string/jumbo v4, "H5"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WEB_VIEW:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 58
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "BLUETOOTH"

    const/16 v3, 0xb

    const-string/jumbo v4, "BT"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->BLUETOOTH:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 62
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    const-string/jumbo v2, "UNKNOWN"

    const/16 v3, 0xc

    const-string/jumbo v4, "NA"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 9
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->MEDIA_RECORD:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->LOCATION:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v2, v1, v7

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->MAP:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WIFI_SCAN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->NORMAL_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->AMNET_ALARM:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->SENSOR:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WAKE_LOCK:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->WEB_VIEW:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->BLUETOOTH:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    aput-object v3, v1, v2

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->sStringToEnum:Ljava/util/Map;

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 95
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->desc:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;->desc:Ljava/lang/String;

    return-object v0
.end method
