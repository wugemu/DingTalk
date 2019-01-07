.class public final enum Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
.super Ljava/lang/Enum;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/utils/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_2G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_3G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_4G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_BLUETOOTH:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_ETHERNET:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_NONE:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_UNKNOWN:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

.field public static final enum CONNECTION_WIFI:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 54
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_ETHERNET"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_ETHERNET:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 55
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_WIFI"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 56
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_4G"

    invoke-direct {v0, v1, v6}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 57
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_3G"

    invoke-direct {v0, v1, v7}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_3G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 58
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_2G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_2G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 59
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_UNKNOWN_CELLULAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 60
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_BLUETOOTH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_BLUETOOTH:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 61
    new-instance v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    const-string/jumbo v1, "CONNECTION_NONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    sget-object v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_ETHERNET:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_3G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_2G:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_BLUETOOTH:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->$VALUES:[Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->$VALUES:[Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, [Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/utils/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method
