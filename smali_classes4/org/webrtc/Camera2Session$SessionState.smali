.class final enum Lorg/webrtc/Camera2Session$SessionState;
.super Ljava/lang/Enum;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/Camera2Session$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/Camera2Session$SessionState;

.field public static final enum RUNNING:Lorg/webrtc/Camera2Session$SessionState;

.field public static final enum STOPPED:Lorg/webrtc/Camera2Session$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lorg/webrtc/Camera2Session$SessionState;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/Camera2Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    new-instance v0, Lorg/webrtc/Camera2Session$SessionState;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/Camera2Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/Camera2Session$SessionState;

    sget-object v1, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/Camera2Session$SessionState;->STOPPED:Lorg/webrtc/Camera2Session$SessionState;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/Camera2Session$SessionState;->$VALUES:[Lorg/webrtc/Camera2Session$SessionState;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/Camera2Session$SessionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lorg/webrtc/Camera2Session$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/Camera2Session$SessionState;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/Camera2Session$SessionState;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/webrtc/Camera2Session$SessionState;->$VALUES:[Lorg/webrtc/Camera2Session$SessionState;

    invoke-virtual {v0}, [Lorg/webrtc/Camera2Session$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/Camera2Session$SessionState;

    return-object v0
.end method
