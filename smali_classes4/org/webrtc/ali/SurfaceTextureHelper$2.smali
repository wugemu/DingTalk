.class Lorg/webrtc/ali/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

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
    .line 95
    const-string/jumbo v0, "SurfaceTextureHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting listener to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v2}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$100(Lorg/webrtc/ali/SurfaceTextureHelper;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    iget-object v1, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$100(Lorg/webrtc/ali/SurfaceTextureHelper;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$202(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 97
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$102(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 99
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$300(Lorg/webrtc/ali/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$400(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    .line 102
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$2;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$302(Lorg/webrtc/ali/SurfaceTextureHelper;Z)Z

    .line 104
    :cond_0
    return-void
.end method
