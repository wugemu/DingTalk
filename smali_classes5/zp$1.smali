.class public final Lzp$1;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzp;


# direct methods
.method public constructor <init>(Lzp;)V
    .locals 0
    .param p1, "this$0"    # Lzp;

    .prologue
    .line 102
    iput-object p1, p0, Lzp$1;->a:Lzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lzp$1;->a:Lzp;

    .line 8037
    invoke-virtual {v0, p1}, Lzp;->a(Landroid/view/SurfaceHolder;)V

    .line 126
    iget-object v0, p0, Lzp$1;->a:Lzp;

    invoke-virtual {v0}, Lzp;->c()V

    .line 127
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 104
    const/4 v0, 0x1

    .line 106
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Lzp$1;->a:Lzp;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    .line 1037
    iput-object v2, v1, Lzp;->b:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v1, p0, Lzp$1;->a:Lzp;

    .line 5037
    iget-object v1, v1, Lzp;->g:Lzp$a;

    .line 115
    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lzp$1;->a:Lzp;

    .line 6037
    iget-object v1, v1, Lzp;->g:Lzp$a;

    .line 116
    invoke-interface {v1, v0}, Lzp$a;->a(Z)V

    .line 119
    :cond_0
    iget-object v1, p0, Lzp$1;->a:Lzp;

    invoke-virtual {v1}, Lzp;->b()V

    .line 120
    iget-object v1, p0, Lzp$1;->a:Lzp;

    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    .line 7037
    iput-object v2, v1, Lzp;->a:Landroid/media/MediaRecorder;

    .line 121
    return-void

    .line 108
    :catch_0
    move-exception v1

    const-string/jumbo v1, "CameraHelper"

    const-string/jumbo v2, "open camera failed, finish activity"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lzp$1;->a:Lzp;

    .line 2037
    iget-object v1, v1, Lzp;->e:Landroid/content/Context;

    .line 109
    if-eqz v1, :cond_1

    iget-object v1, p0, Lzp$1;->a:Lzp;

    .line 3037
    iget-object v1, v1, Lzp;->e:Landroid/content/Context;

    .line 109
    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lzp$1;->a:Lzp;

    .line 4037
    iget-object v1, v1, Lzp;->e:Landroid/content/Context;

    .line 110
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lzp$1;->a:Lzp;

    .line 9037
    iget-object v0, v0, Lzp;->b:Landroid/hardware/Camera;

    .line 131
    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lzp$1;->a:Lzp;

    .line 10037
    iget-object v0, v0, Lzp;->b:Landroid/hardware/Camera;

    .line 132
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 133
    iget-object v0, p0, Lzp$1;->a:Lzp;

    const/4 v1, 0x0

    .line 11037
    iput-object v1, v0, Lzp;->b:Landroid/hardware/Camera;

    .line 135
    :cond_0
    return-void
.end method
