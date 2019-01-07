.class public final enum Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
.super Ljava/lang/Enum;
.source "AppRTCAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/AppRTCAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioDevice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field public static final enum BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field public static final enum EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field public static final enum NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field public static final enum SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field public static final enum WIRED_HEADSET:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    const-string/jumbo v1, "SPEAKER_PHONE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    new-instance v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    const-string/jumbo v1, "WIRED_HEADSET"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->WIRED_HEADSET:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    new-instance v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    const-string/jumbo v1, "EARPIECE"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    new-instance v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    const-string/jumbo v1, "BLUETOOTH"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    new-instance v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v6}, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->WIRED_HEADSET:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    aput-object v1, v0, v6

    sput-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->$VALUES:[Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->$VALUES:[Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-virtual {v0}, [Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    return-object v0
.end method
