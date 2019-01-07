.class Lorg/webrtc/ali/SurfaceTextureHelper$5;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/SurfaceTextureHelper;->returnTextureFrame()V
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
    .line 186
    iput-object p1, p0, Lorg/webrtc/ali/SurfaceTextureHelper$5;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

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
    .line 189
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$5;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$602(Lorg/webrtc/ali/SurfaceTextureHelper;Z)Z

    .line 190
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$5;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$700(Lorg/webrtc/ali/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$5;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$800(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/SurfaceTextureHelper$5;->this$0:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->access$500(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    goto :goto_0
.end method
