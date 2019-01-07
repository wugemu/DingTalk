.class public Lgrs;
.super Lgry$a;
.source "FaceBoxService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lgry$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgru;)V
    .locals 9
    .param p1, "faceRecognizeModel"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;
    .param p2, "frame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .param p3, "argument"    # Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    .param p4, "listener"    # Lgru;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 55
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    array-length v0, v0

    if-nez v0, :cond_2

    .line 56
    :cond_0
    if-eqz p4, :cond_1

    .line 58
    :try_start_0
    const-string/jumbo v0, "13"

    const-string/jumbo v1, "Image data parcel error"

    invoke-interface {p4, v0, v1}, Lgru;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    invoke-static {}, Lcja;->c()V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 68
    .local v6, "startTime":J
    const-class v0, Lgrs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lgrs$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lgrs$1;-><init>(Lgrs;Lgru;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;J)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
