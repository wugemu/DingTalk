.class Lorg/webrtc/ali/SurfaceTextureHelper$4;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/SurfaceTextureHelper;->stopListening()V
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
    .line 155
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper$4;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

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
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$4;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$202(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 159
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$4;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$102(Lorg/webrtc/ali/SurfaceTextureHelper;Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;

    .line 160
    return-void
.end method
