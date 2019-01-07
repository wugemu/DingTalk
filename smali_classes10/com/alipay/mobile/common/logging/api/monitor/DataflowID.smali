.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
.super Ljava/lang/Enum;
.source "DataflowID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum ASPECT_V1:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum ASPECT_V2:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum ASPECT_V3:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

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

.field public static final enum H5_ASPECT:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum H5_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum H5_UCCORE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final HOST_NBNET:Ljava/lang/String; = "__host_nbnet__"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOST_PUSH:Ljava/lang/String; = "__host_push__"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOST_SYNC:Ljava/lang/String; = "__host_sync__"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_DOWNLOAD:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_H5:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum HTTPCLIENT_RPC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum MULTIMEDIA_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum MULTIMEDIA_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public static final enum UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;",
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

    .line 23
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "STATISTIC"

    const-string/jumbo v3, "STATISTIC"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 27
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "SAMPLE_STATS"

    const-string/jumbo v3, "STATS"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 31
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "AMNET_SYNC"

    const-string/jumbo v3, "SYNC"

    invoke-direct {v1, v2, v6, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 35
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "AMNET_PUSH"

    const-string/jumbo v3, "PUSH"

    invoke-direct {v1, v2, v7, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 39
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "HTTPCLIENT_RPC"

    const-string/jumbo v3, "HC_RPC"

    invoke-direct {v1, v2, v8, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_RPC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 43
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "HTTPCLIENT_H5"

    const/4 v3, 0x5

    const-string/jumbo v4, "HC_H5"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_H5:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 47
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "HTTPCLIENT_DJANGO"

    const/4 v3, 0x6

    const-string/jumbo v4, "HC_DJG"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 51
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "HTTPCLIENT_NBNET"

    const/4 v3, 0x7

    const-string/jumbo v4, "HC_NBN"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 55
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "HTTPCLIENT_DOWNLOAD"

    const/16 v3, 0x8

    const-string/jumbo v4, "HC_DL"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DOWNLOAD:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 59
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "H5_NATIVE"

    const/16 v3, 0x9

    const-string/jumbo v4, "H5_GG"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 63
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "H5_UCCORE"

    const/16 v3, 0xa

    const-string/jumbo v4, "H5_UC"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_UCCORE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 67
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "H5_ASPECT"

    const/16 v3, 0xb

    const-string/jumbo v4, "H5_AOP"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_ASPECT:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 71
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "MULTIMEDIA_DJANGO"

    const/16 v3, 0xc

    const-string/jumbo v4, "MM_J"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MULTIMEDIA_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 75
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "MULTIMEDIA_NATIVE"

    const/16 v3, 0xd

    const-string/jumbo v4, "MM_C"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MULTIMEDIA_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 79
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "ASPECT_V1"

    const/16 v3, 0xe

    const-string/jumbo v4, "AOP1"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V1:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 83
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "ASPECT_V2"

    const/16 v3, 0xf

    const-string/jumbo v4, "AOP2"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V2:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 87
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "ASPECT_V3"

    const/16 v3, 0x10

    const-string/jumbo v4, "AOP3"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V3:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 91
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "MONITOR"

    const/16 v3, 0x11

    const-string/jumbo v4, "LOG"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 95
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-string/jumbo v2, "UNKNOWN"

    const/16 v3, 0x12

    const-string/jumbo v4, "NA"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 10
    const/16 v1, 0x13

    new-array v1, v1, [Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->STATISTIC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->SAMPLE_STATS:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_SYNC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->AMNET_PUSH:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v2, v1, v7

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_RPC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_H5:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DOWNLOAD:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_UCCORE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->H5_ASPECT:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MULTIMEDIA_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MULTIMEDIA_NATIVE:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V1:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V2:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->ASPECT_V3:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    aput-object v3, v1, v2

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->sStringToEnum:Ljava/util/Map;

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 128
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->desc:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->desc:Ljava/lang/String;

    return-object v0
.end method
