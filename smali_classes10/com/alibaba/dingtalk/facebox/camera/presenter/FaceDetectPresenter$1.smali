.class final Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$1;
.super Landroid/view/OrientationEventListener;
.source "FaceDetectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 176
    if-ne p1, v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x0

    .line 183
    .local v0, "rotate":I
    if-eq p1, v1, :cond_3

    if-ltz p1, :cond_2

    const/16 v1, 0x39

    if-le p1, v1, :cond_3

    :cond_2
    const/16 v1, 0x132

    if-lt p1, v1, :cond_5

    const/16 v1, 0x168

    if-gt p1, v1, :cond_5

    .line 184
    :cond_3
    const/4 v0, 0x0

    .line 192
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I

    .line 194
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$1;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$c;->a(I)V

    goto :goto_0

    .line 185
    :cond_5
    const/16 v1, 0x7d

    if-lt p1, v1, :cond_6

    const/16 v1, 0xec

    if-gt p1, v1, :cond_6

    .line 186
    const/16 v0, 0xb4

    goto :goto_1

    .line 187
    :cond_6
    const/16 v1, 0x3a

    if-lt p1, v1, :cond_7

    const/16 v1, 0x7c

    if-gt p1, v1, :cond_7

    .line 188
    const/16 v0, 0x5a

    goto :goto_1

    .line 189
    :cond_7
    const/16 v1, 0xed

    if-lt p1, v1, :cond_4

    const/16 v1, 0x131

    if-gt p1, v1, :cond_4

    .line 190
    const/16 v0, 0x10e

    goto :goto_1
.end method
