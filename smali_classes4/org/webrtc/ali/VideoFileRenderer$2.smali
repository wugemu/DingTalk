.class Lorg/webrtc/ali/VideoFileRenderer$2;
.super Ljava/lang/Object;
.source "VideoFileRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/VideoFileRenderer;->renderFrame(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/VideoFileRenderer;

.field final synthetic val$frame:Lorg/webrtc/ali/VideoRenderer$I420Frame;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/VideoFileRenderer;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/webrtc/ali/VideoFileRenderer$2;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/VideoFileRenderer$2;->val$frame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$2;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    iget-object v1, p0, Lorg/webrtc/ali/VideoFileRenderer$2;->val$frame:Lorg/webrtc/ali/VideoRenderer$I420Frame;

    invoke-static {v0, v1}, Lorg/webrtc/ali/VideoFileRenderer;->access$200(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 83
    return-void
.end method
