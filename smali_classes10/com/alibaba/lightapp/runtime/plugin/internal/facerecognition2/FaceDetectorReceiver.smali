.class public Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceDetectorReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;,
        Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;
    }
.end annotation


# instance fields
.field private mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->mRegistered:Z

    .line 62
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->handle(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 19
    return-void
.end method

.method public registerSelf(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->mRegistered:Z

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action_face_box_face_detected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setFaceDetectorHandler(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorCacheManager;->setParent(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;)V

    .line 23
    return-void
.end method

.method public unregisterSelf(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;->mRegistered:Z

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
