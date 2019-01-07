.class final enum Lorg/webrtc/ali/CameraCapturer$SwitchState;
.super Ljava/lang/Enum;
.source "CameraCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/CameraCapturer$SwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/CameraCapturer$SwitchState;

.field public static final enum IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

.field public static final enum IN_PROGRESS:Lorg/webrtc/ali/CameraCapturer$SwitchState;

.field public static final enum PENDING:Lorg/webrtc/ali/CameraCapturer$SwitchState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 23
    new-instance v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 24
    new-instance v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/CameraCapturer$SwitchState;

    sget-object v1, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/ali/CameraCapturer$SwitchState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;->$VALUES:[Lorg/webrtc/ali/CameraCapturer$SwitchState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/CameraCapturer$SwitchState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/CameraCapturer$SwitchState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/webrtc/ali/CameraCapturer$SwitchState;->$VALUES:[Lorg/webrtc/ali/CameraCapturer$SwitchState;

    invoke-virtual {v0}, [Lorg/webrtc/ali/CameraCapturer$SwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/CameraCapturer$SwitchState;

    return-object v0
.end method
