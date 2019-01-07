.class Lorg/webrtc/ali/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/SurfaceTextureHelper;-><init>(Lorg/webrtc/ali/EglBase$Context;Landroid/os/Handler;)V
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
    .line 127
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$302(Lorg/webrtc/ali/SurfaceTextureHelper;Z)Z

    .line 131
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$500(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    .line 132
    return-void
.end method
