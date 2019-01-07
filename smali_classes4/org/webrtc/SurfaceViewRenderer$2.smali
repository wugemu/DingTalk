.class Lorg/webrtc/SurfaceViewRenderer$2;
.super Ljava/lang/Object;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/SurfaceViewRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoRenderer$I420Frame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceViewRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/SurfaceViewRenderer;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer$2;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$2;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-static {v0}, Lorg/webrtc/SurfaceViewRenderer;->access$000(Lorg/webrtc/SurfaceViewRenderer;)V

    .line 313
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$2;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->requestLayout()V

    .line 314
    return-void
.end method
