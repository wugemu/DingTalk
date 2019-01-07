.class Lorg/webrtc/ali/SurfaceViewRenderer$2;
.super Ljava/lang/Object;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/SurfaceViewRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/SurfaceViewRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/SurfaceViewRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/SurfaceViewRenderer;

    .prologue
    .line 328
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceViewRenderer$2;->this$0:Lorg/webrtc/ali/SurfaceViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer$2;->this$0:Lorg/webrtc/ali/SurfaceViewRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/SurfaceViewRenderer;->access$000(Lorg/webrtc/ali/SurfaceViewRenderer;)V

    .line 332
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceViewRenderer$2;->this$0:Lorg/webrtc/ali/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceViewRenderer;->requestLayout()V

    .line 333
    return-void
.end method
