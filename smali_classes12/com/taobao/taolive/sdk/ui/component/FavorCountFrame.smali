.class public Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;
.super Lcom/taobao/taolive/sdk/component/BaseFrame;
.source "FavorCountFrame.java"


# instance fields
.field private mAnimatorSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mFavorCount:J

.field private mIvAnim1:Landroid/widget/ImageView;

.field private mIvAnim2:Landroid/widget/ImageView;

.field private mIvPraise:Landroid/view/View;

.field private mTvCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/component/BaseFrame;-><init>(Landroid/content/Context;)V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mFavorCount:J

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mAnimatorSet:Ljava/util/List;

    .line 36
    return-void
.end method

.method private setUpView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mFavorCount:J

    invoke-virtual {p0, v0, v1}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->updateFavorCount(J)V

    .line 58
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public getIvPraise()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvPraise:Landroid/view/View;

    return-object v0
.end method

.method public increaseFavorCount()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 113
    const-wide/16 v0, 0x0

    .line 114
    .local v0, "count":J
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 116
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 118
    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->updateFavorCount(J)V

    .line 121
    .end local v0    # "count":J
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/ViewStub;)V
    .locals 2
    .param p1, "stub"    # Landroid/view/ViewStub;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    sget v0, Lbtp$f;->taolive_frame_favor_count:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mContainer:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mContainer:Landroid/view/View;

    sget v1, Lbtp$e;->iv_praise:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvPraise:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mContainer:Landroid/view/View;

    sget v1, Lbtp$e;->tv_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mContainer:Landroid/view/View;

    sget v1, Lbtp$e;->iv_anim1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvAnim1:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mContainer:Landroid/view/View;

    sget v1, Lbtp$e;->iv_anim2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvAnim2:Landroid/widget/ImageView;

    .line 48
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->setUpView()V

    .line 50
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/taobao/taolive/sdk/component/BaseFrame;->onDestroy()V

    .line 109
    return-void
.end method

.method public startAnimator(Z)V
    .locals 14
    .param p1, "withVibrator"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    iget-object v10, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvAnim1:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvAnim2:Landroid/widget/ImageView;

    if-nez v10, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v10, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mAnimatorSet:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 65
    iget-object v10, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mAnimatorSet:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 66
    .local v4, "isFirst":Z
    if-eqz v4, :cond_5

    const v5, 0x3f4ccccd    # 0.8f

    .line 67
    .local v5, "scale":F
    :goto_1
    if-eqz v4, :cond_6

    iget-object v9, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvAnim1:Landroid/widget/ImageView;

    .line 68
    .local v9, "view":Landroid/view/View;
    :goto_2
    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v5, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3fc00000    # 1.5f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 69
    .local v6, "scaleX":Landroid/animation/ObjectAnimator;
    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v5, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3fc00000    # 1.5f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 70
    .local v7, "scaleY":Landroid/animation/ObjectAnimator;
    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 72
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 73
    const-wide/16 v10, 0x12c

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 74
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    new-instance v10, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame$1;

    invoke-direct {v10, p0, v9}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame$1;-><init>(Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;Landroid/view/View;)V

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    iget-object v10, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mAnimatorSet:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v4    # "isFirst":Z
    .end local v5    # "scale":F
    .end local v6    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v7    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mAnimatorSet:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 89
    .local v1, "animator":Landroid/animation/Animator;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_3

    .line 90
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 94
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_4
    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    iget-object v10, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "vibrator"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    .line 97
    .local v8, "vibrator":Landroid/os/Vibrator;
    if-eqz v8, :cond_0

    .line 98
    const-wide/16 v10, 0x64

    invoke-virtual {v8, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 100
    .end local v8    # "vibrator":Landroid/os/Vibrator;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "Vibrator failed, error="

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1013
    const-string/jumbo v11, "live"

    const/4 v12, 0x0

    invoke-static {v11, v12, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "isFirst":Z
    :cond_5
    const v5, 0x3e4ccccd    # 0.2f

    goto/16 :goto_1

    .line 67
    .restart local v5    # "scale":F
    :cond_6
    iget-object v9, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mIvAnim2:Landroid/widget/ImageView;

    goto/16 :goto_2

    .line 70
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public updateFavorCount(J)V
    .locals 7
    .param p1, "count"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mFavorCount:J

    .line 125
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_3

    .line 129
    const-wide/16 v0, 0x0

    .line 130
    .local v0, "oldCount":J
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 131
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 132
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "tag":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 134
    :cond_1
    cmp-long v3, v0, p1

    if-gez v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->formatOnLineNumber(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 140
    .end local v0    # "oldCount":J
    :cond_3
    iget-object v3, p0, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->mTvCount:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
