.class final enum Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;
.super Ljava/lang/Enum;
.source "CameraCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MediaRecorderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

.field public static final enum ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

.field public static final enum ACTIVE_TO_IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

.field public static final enum IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

.field public static final enum IDLE_TO_ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 29
    new-instance v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    const-string/jumbo v1, "IDLE_TO_ACTIVE"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE_TO_ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 30
    new-instance v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    const-string/jumbo v1, "ACTIVE_TO_IDLE"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE_TO_IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 31
    new-instance v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    sget-object v1, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->IDLE_TO_ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE_TO_IDLE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->ACTIVE:Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->$VALUES:[Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->$VALUES:[Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    invoke-virtual {v0}, [Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/CameraCapturer$MediaRecorderState;

    return-object v0
.end method
