.class Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EglSurfaceCreation"
.end annotation


# instance fields
.field private surface:Ljava/lang/Object;

.field final synthetic this$0:Lorg/webrtc/ali/EglRenderer;


# direct methods
.method private constructor <init>(Lorg/webrtc/ali/EglRenderer;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/ali/EglRenderer;Lorg/webrtc/ali/EglRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/ali/EglRenderer;
    .param p2, "x1"    # Lorg/webrtc/ali/EglRenderer$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;-><init>(Lorg/webrtc/ali/EglRenderer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v1

    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lorg/webrtc/ali/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->makeCurrent()V

    .line 73
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->this$0:Lorg/webrtc/ali/EglRenderer;

    invoke-static {v0}, Lorg/webrtc/ali/EglRenderer;->access$000(Lorg/webrtc/ali/EglRenderer;)Lorg/webrtc/ali/EglBase;

    move-result-object v1

    iget-object v0, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Lorg/webrtc/ali/EglBase;->createSurface(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid surface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setSurface(Ljava/lang/Object;)V
    .locals 1
    .param p1, "surface"    # Ljava/lang/Object;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/webrtc/ali/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
