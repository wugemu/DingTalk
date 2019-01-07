.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

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
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 271
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->e(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->f(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v4, v4, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->g(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v5, v5, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v5}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;I)V

    .line 276
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->h(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)I

    move-result v2

    const/16 v3, 0x50

    if-lt v2, v3, :cond_0

    .line 277
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2, v9}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->c(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Z)Z

    .line 279
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a()V

    .line 280
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    sget v3, Lgrv$d;->fireworks_first:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 281
    .local v0, "view":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    sget v3, Lgrv$d;->fireworks_second:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 282
    .local v1, "view2":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->i(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;

    move-result-object v2

    .line 1113
    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1114
    const-string/jumbo v4, "scaleX"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1115
    const-string/jumbo v5, "scaleY"

    new-array v6, v8, [F

    fill-array-data v6, :array_2

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1116
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v9

    aput-object v5, v6, v8

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1117
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1118
    new-instance v4, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$1;

    invoke-direct {v4, v2, v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1138
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1140
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;

    invoke-direct {v4, v2, v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;Landroid/view/View;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11$1;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;

    iget-object v2, v2, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$11;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->j(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;)V

    goto/16 :goto_0

    .line 1113
    .line 1114
    .line 1115
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
