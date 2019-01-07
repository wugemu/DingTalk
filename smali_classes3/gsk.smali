.class public final Lgsk;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# instance fields
.field a:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

.field b:Z

.field private c:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;)V
    .locals 1
    .param p1, "faceView"    # Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgsk;->b:Z

    .line 16
    iput-object p1, p0, Lgsk;->a:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgsk;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 23
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lgsk;->b:Z

    .line 24
    iget-object v0, p0, Lgsk;->a:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lgsk;->a:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    .line 1128
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->a:Z

    .line 2031
    :cond_2
    iget-object v0, p0, Lgsk;->a:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    if-eqz v0, :cond_0

    .line 2032
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    .line 2033
    iget-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2034
    iget-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2035
    iget-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2036
    iget-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lgsk$1;

    invoke-direct {v1, p0}, Lgsk$1;-><init>(Lgsk;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2046
    iget-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2032
    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lgsk;->b:Z

    .line 52
    iget-object v0, p0, Lgsk;->a:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lgsk;->a:Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    .line 2124
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->a:Z

    .line 55
    :cond_0
    iget-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lgsk;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 58
    :cond_1
    return-void
.end method
