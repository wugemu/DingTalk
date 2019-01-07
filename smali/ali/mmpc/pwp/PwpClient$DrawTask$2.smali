.class Lali/mmpc/pwp/PwpClient$DrawTask$2;
.super Ljava/lang/Object;
.source "PwpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 810
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 813
    const/high16 v4, 0x447a0000    # 1000.0f

    iget-object v5, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v5, v5, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v5}, Lali/mmpc/pwp/PwpClient;->access$2100(Lali/mmpc/pwp/PwpClient;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-long v2, v4

    .line 815
    .local v2, "intervals":J
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v4, v4, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient;->access$1900(Lali/mmpc/pwp/PwpClient;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 816
    :try_start_0
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2000(Lali/mmpc/pwp/PwpClient$DrawTask;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 818
    :try_start_1
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v4, v4, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient;->access$1900(Lali/mmpc/pwp/PwpClient;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    :cond_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v4, v4, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient;->access$1800(Lali/mmpc/pwp/PwpClient;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 827
    .local v0, "currentTimeMs":J
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-wide v4, v4, Lali/mmpc/pwp/PwpClient$DrawTask;->lastFrameTimeMs:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 828
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2200(Lali/mmpc/pwp/PwpClient$DrawTask;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 829
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2200(Lali/mmpc/pwp/PwpClient$DrawTask;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    iget-object v5, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v5}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2300(Lali/mmpc/pwp/PwpClient$DrawTask;)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 830
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2400(Lali/mmpc/pwp/PwpClient$DrawTask;)Ljfz$c;

    move-result-object v4

    invoke-interface {v4}, Ljfz$c;->a()V

    .line 831
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2600(Lali/mmpc/pwp/PwpClient$DrawTask;)Ljgd;

    move-result-object v4

    iget-object v5, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v5}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2500(Lali/mmpc/pwp/PwpClient$DrawTask;)I

    move-result v5

    iget-object v6, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v6}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2300(Lali/mmpc/pwp/PwpClient$DrawTask;)[F

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Ljgd;->a(I[FI)V

    .line 832
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2400(Lali/mmpc/pwp/PwpClient$DrawTask;)Ljfz$c;

    move-result-object v4

    invoke-interface {v4}, Ljfz$c;->b()V

    .line 833
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2700(Lali/mmpc/pwp/PwpClient$DrawTask;)V

    .line 834
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 835
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 837
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iput-wide v0, v4, Lali/mmpc/pwp/PwpClient$DrawTask;->lastFrameTimeMs:J

    .line 840
    :cond_1
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-static {v4, v8}, Lali/mmpc/pwp/PwpClient$DrawTask;->access$2002(Lali/mmpc/pwp/PwpClient$DrawTask;Z)Z

    .line 841
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-virtual {v4, p0}, Lali/mmpc/pwp/PwpClient$DrawTask;->queueEvent(Ljava/lang/Runnable;)Z

    .line 848
    .end local v0    # "currentTimeMs":J
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v4

    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 843
    :cond_2
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-virtual {v4}, Lali/mmpc/pwp/PwpClient$DrawTask;->releaseSelf()V

    .line 844
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v4, v4, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v4}, Lali/mmpc/pwp/PwpClient;->access$400(Lali/mmpc/pwp/PwpClient;)Lali/mmpc/pwp/LogCallback;

    move-result-object v4

    sget-object v5, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v6, "mmpc_pwp"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "releaseSelf mIsRecording:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lali/mmpc/pwp/PwpClient$DrawTask$2;->this$1:Lali/mmpc/pwp/PwpClient$DrawTask;

    iget-object v8, v8, Lali/mmpc/pwp/PwpClient$DrawTask;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v8}, Lali/mmpc/pwp/PwpClient;->access$1800(Lali/mmpc/pwp/PwpClient;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
