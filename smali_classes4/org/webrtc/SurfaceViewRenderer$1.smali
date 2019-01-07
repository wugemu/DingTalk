.class Lorg/webrtc/SurfaceViewRenderer$1;
.super Ljava/lang/Object;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/SurfaceViewRenderer;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceViewRenderer;

.field final synthetic val$completionLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceViewRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/SurfaceViewRenderer;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer$1;->this$0:Lorg/webrtc/SurfaceViewRenderer;

    iput-object p2, p0, Lorg/webrtc/SurfaceViewRenderer$1;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$1;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 270
    return-void
.end method
