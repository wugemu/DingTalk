.class final Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;
.super Ljava/lang/Object;
.source "FaceDetectPresenter.java"

# interfaces
.implements Lgso$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V
    .locals 4
    .param p1, "checkResult"    # I
    .param p2, "faceDetecteFrame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    move-result-object v0

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->idle:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    move-result-object v0

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    move-result-object v0

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->recognitioned:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    if-ne v0, v1, :cond_2

    .line 301
    :cond_0
    if-nez p1, :cond_4

    .line 304
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->tracked:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 307
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;->b()V

    .line 311
    :cond_1
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Face] FaceTrackerListener, onFaceDetected will call recognizeFace. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0, p2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V

    .line 326
    :cond_2
    :goto_0
    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$a;->a()V

    goto :goto_0

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$2;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->b(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)V

    goto :goto_0
.end method
