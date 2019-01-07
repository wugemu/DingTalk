.class public final enum Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;
.super Ljava/lang/Enum;
.source "ArtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/audio/ArtcAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioDevice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

.field public static final enum EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

.field public static final enum SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

.field public static final enum WIRED_HEADSET:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    const-string/jumbo v1, "SPEAKER_PHONE"

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    .line 55
    new-instance v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    const-string/jumbo v1, "WIRED_HEADSET"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->WIRED_HEADSET:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    .line 56
    new-instance v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    const-string/jumbo v1, "EARPIECE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->WIRED_HEADSET:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->$VALUES:[Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->$VALUES:[Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-virtual {v0}, [Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    return-object v0
.end method
