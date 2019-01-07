.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/api/FaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDetected(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V
    .locals 4
    .param p1, "frame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "face onDetected has:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->hasFace()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->e:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;

    iget-wide v2, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;->mGyro:D

    double-to-int v1, v2

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->setDeviceAngle(I)V

    .line 753
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->j(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->setYuvWidth(I)V

    .line 754
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->setYuvHeight(I)V

    .line 755
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->setYuvAngle(I)V

    .line 756
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->f:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;

    iget v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;->mLightValue:F

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->setDeviceLight(F)V

    .line 757
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget-object v1, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->e:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;

    iget-wide v2, v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;->mGyro:D

    invoke-virtual {p1, v2, v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->setFgyroangle(D)V

    .line 759
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->p(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 761
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    new-instance v0, Lcom/alipay/mobile/security/bio/task/ActionFrame;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/security/bio/task/ActionFrame;-><init>(Ljava/lang/Object;)V

    .line 764
    .local v0, "actionFrame":Lcom/alipay/mobile/security/bio/task/ActionFrame;
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->doAction(Lcom/alipay/mobile/security/bio/task/ActionFrame;)V

    .line 767
    :cond_0
    return-void

    .line 761
    .end local v0    # "actionFrame":Lcom/alipay/mobile/security/bio/task/ActionFrame;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
