.class Lorg/webrtc/SurfaceTextureHelper$6;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/SurfaceTextureHelper;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/SurfaceTextureHelper;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper$6;->this$0:Lorg/webrtc/SurfaceTextureHelper;

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
    .line 215
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$6;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->access$702(Lorg/webrtc/SurfaceTextureHelper;Z)Z

    .line 216
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$6;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$600(Lorg/webrtc/SurfaceTextureHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$6;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$800(Lorg/webrtc/SurfaceTextureHelper;)V

    .line 219
    :cond_0
    return-void
.end method
