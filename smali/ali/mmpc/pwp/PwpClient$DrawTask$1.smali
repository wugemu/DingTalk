.class Lali/mmpc/pwp/PwpClient$DrawTask$1;
.super Ljava/lang/Object;
.source "PwpClient.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/PwpClient$DrawTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lali/mmpc/pwp/PwpClient$DrawTask;


# direct methods
.method constructor <init>(Lali/mmpc/pwp/PwpClient$DrawTask;)V
    .locals 0
    .param p1, "this$1"    # Lali/mmpc/pwp/PwpClient$DrawTask;

    .prologue
    .line 797
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient$DrawTask$1;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 800
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask$1;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v0, v0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$1800(Lali/mmpc/pwp/PwpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask$1;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v0, v0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$1900(Lali/mmpc/pwp/PwpClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask$1;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2002(Lali/mmpc/pwp/PwpClient$DrawTask;Z)Z

    .line 803
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$DrawTask$1;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v0, v0, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$1900(Lali/mmpc/pwp/PwpClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 805
    monitor-exit v1

    .line 807
    :cond_0
    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
