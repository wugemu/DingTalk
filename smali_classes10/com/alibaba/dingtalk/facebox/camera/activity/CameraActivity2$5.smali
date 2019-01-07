.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 814
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lgrv$f;->dt_facebox_face_recognition:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "smileFaceScore"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 712
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 747
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;J)J

    .line 716
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->b(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;

    move-result-object v3

    .line 1142
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->invalidate()V

    .line 1143
    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/camera/view/facetrack/FaceView;->d:Landroid/graphics/Rect;

    .line 717
    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 719
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->x(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 721
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->y(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 722
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a()V

    .line 723
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->z(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-result-object v2

    if-nez v2, :cond_2

    .line 724
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    new-instance v3, Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-direct {v3}, Lcom/alibaba/dingtalk/facebox/model/DetectResult;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v2

    if-lez v2, :cond_3

    .line 728
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    .line 729
    .local v1, "score":F
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->z(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->smileFaceScore:Ljava/lang/String;

    .line 733
    .end local v1    # "score":F
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2, v6}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 736
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 738
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 739
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 740
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 744
    .end local v0    # "message":Landroid/os/Message;
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "FACE"

    const-string/jumbo v5, "RECOG"

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->C(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    const-string/jumbo v3, "RECOGING_TIME"

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->A(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v6}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->B(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto/16 :goto_0

    .line 731
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->z(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-result-object v2

    iput-object p1, v2, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->smileFaceScore:Ljava/lang/String;

    goto :goto_1

    .line 742
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 822
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lgrv$f;->dt_common_uploading2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    .line 760
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0, v8}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;I)I

    .line 766
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 767
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 768
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "error_code"

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oa_m2_attendance_appcheck_error"

    invoke-interface {v0, v1, v2, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 771
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "FACE"

    const-string/jumbo v3, "RECOG"

    const-string/jumbo v5, ""

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->D(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    .line 777
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 780
    .local v7, "message":Landroid/os/Message;
    iput v8, v7, Landroid/os/Message;->what:I

    .line 781
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 787
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 800
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)V

    .line 805
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgrv$f;->dt_image_upload_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;ZLjava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$5;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->p(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 807
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "FACE"

    const-string/jumbo v3, "UPLOAD"

    const-string/jumbo v5, ""

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
