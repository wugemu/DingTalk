.class public final Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;
.super Ljava/lang/Object;
.source "SmileDetectPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->b:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x2

    .line 143
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->a:Landroid/view/View;

    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 144
    .local v1, "scaleX2":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;->a:Landroid/view/View;

    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 147
    .local v2, "scaleY2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 150
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 151
    .local v0, "animSet2":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 152
    new-instance v3, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 173
    return-void

    .line 143
    .line 144
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method
