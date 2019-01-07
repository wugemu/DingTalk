.class public final enum Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;
.super Ljava/lang/Enum;
.source "SophonSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/sdk/SophonSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurfaceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

.field public static final enum LOCALMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

.field public static final enum REMOTEMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    const-string/jumbo v1, "LOCALMODE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->LOCALMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    .line 19
    new-instance v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    const-string/jumbo v1, "REMOTEMODE"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->REMOTEMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    sget-object v1, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->LOCALMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->REMOTEMODE:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->$VALUES:[Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->$VALUES:[Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    invoke-virtual {v0}, [Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    return-object v0
.end method
