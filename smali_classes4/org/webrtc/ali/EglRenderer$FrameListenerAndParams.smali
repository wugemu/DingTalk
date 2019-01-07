.class Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;
.super Ljava/lang/Object;
.source "EglRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameListenerAndParams"
.end annotation


# instance fields
.field public final applyFpsReduction:Z

.field public final drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

.field public final listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

.field public final scale:F


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/EglRenderer$FrameListener;FLorg/webrtc/ali/RendererCommon$GlDrawer;Z)V
    .locals 0
    .param p1, "listener"    # Lorg/webrtc/ali/EglRenderer$FrameListener;
    .param p2, "scale"    # F
    .param p3, "drawer"    # Lorg/webrtc/ali/RendererCommon$GlDrawer;
    .param p4, "applyFpsReduction"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->listener:Lorg/webrtc/ali/EglRenderer$FrameListener;

    .line 48
    iput p2, p0, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->scale:F

    .line 49
    iput-object p3, p0, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->drawer:Lorg/webrtc/ali/RendererCommon$GlDrawer;

    .line 50
    iput-boolean p4, p0, Lorg/webrtc/ali/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    .line 51
    return-void
.end method
