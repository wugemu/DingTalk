.class public final enum Lorg/webrtc/audio/AppRTCBluetoothManager$State;
.super Ljava/lang/Enum;
.source "AppRTCBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/AppRTCBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/audio/AppRTCBluetoothManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field public static final enum ERROR:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field public static final enum HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field public static final enum HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field public static final enum SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field public static final enum SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field public static final enum SCO_DISCONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field public static final enum UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    const-string/jumbo v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/audio/AppRTCBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 53
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/audio/AppRTCBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->ERROR:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 56
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    const-string/jumbo v1, "HEADSET_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/audio/AppRTCBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 59
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    const-string/jumbo v1, "HEADSET_AVAILABLE"

    invoke-direct {v0, v1, v6}, Lorg/webrtc/audio/AppRTCBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 61
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    const-string/jumbo v1, "SCO_DISCONNECTING"

    invoke-direct {v0, v1, v7}, Lorg/webrtc/audio/AppRTCBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_DISCONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 63
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    const-string/jumbo v1, "SCO_CONNECTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/webrtc/audio/AppRTCBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 65
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    const-string/jumbo v1, "SCO_CONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/webrtc/audio/AppRTCBluetoothManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->ERROR:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_DISCONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->$VALUES:[Lorg/webrtc/audio/AppRTCBluetoothManager$State;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/audio/AppRTCBluetoothManager$State;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->$VALUES:[Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v0}, [Lorg/webrtc/audio/AppRTCBluetoothManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    return-object v0
.end method
