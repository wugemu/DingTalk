.class public abstract Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;
.super Ljava/lang/Object;
.source "FaceDetectorReceiver.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FaceDetectorHandlerWrapper"
.end annotation


# instance fields
.field private mParent:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;->mParent:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;->mParent:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;->handle(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;->onHandle(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onHandle(Landroid/content/Context;Landroid/content/Intent;)Z
.end method

.method public setParent(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$FaceDetectorHandlerWrapper;->mParent:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceDetectorReceiver$IFaceDetectorHandler;

    .line 67
    return-void
.end method
