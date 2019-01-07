.class Lorg/webrtc/ali/VideoFileRenderer$1;
.super Ljava/lang/Object;
.source "VideoFileRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/VideoFileRenderer;-><init>(Ljava/lang/String;IILorg/webrtc/ali/EglBase$Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/VideoFileRenderer;

.field final synthetic val$sharedContext:Lorg/webrtc/ali/EglBase$Context;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/EglBase$Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/VideoFileRenderer;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/webrtc/ali/VideoFileRenderer$1;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    iput-object p2, p0, Lorg/webrtc/ali/VideoFileRenderer$1;->val$sharedContext:Lorg/webrtc/ali/EglBase$Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$1;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    iget-object v1, p0, Lorg/webrtc/ali/VideoFileRenderer$1;->val$sharedContext:Lorg/webrtc/ali/EglBase$Context;

    sget-object v2, Lorg/webrtc/ali/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {v1, v2}, Lorg/webrtc/ali/EglBase;->create(Lorg/webrtc/ali/EglBase$Context;[I)Lorg/webrtc/ali/EglBase;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/VideoFileRenderer;->access$002(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/EglBase;)Lorg/webrtc/ali/EglBase;

    .line 70
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$1;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/VideoFileRenderer;->access$000(Lorg/webrtc/ali/VideoFileRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->createDummyPbufferSurface()V

    .line 71
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$1;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/VideoFileRenderer;->access$000(Lorg/webrtc/ali/VideoFileRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->makeCurrent()V

    .line 72
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer$1;->this$0:Lorg/webrtc/ali/VideoFileRenderer;

    new-instance v1, Lorg/webrtc/ali/YuvConverter;

    invoke-direct {v1}, Lorg/webrtc/ali/YuvConverter;-><init>()V

    invoke-static {v0, v1}, Lorg/webrtc/ali/VideoFileRenderer;->access$102(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/YuvConverter;)Lorg/webrtc/ali/YuvConverter;

    .line 73
    return-void
.end method
