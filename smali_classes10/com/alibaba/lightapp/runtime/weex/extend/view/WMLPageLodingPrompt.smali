.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;
.super Ljava/lang/Object;
.source "WMLPageLodingPrompt.java"

# interfaces
.implements Ljql;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mFourBall:Landroid/widget/ImageView;

.field private mFourBallAnimator:Landroid/animation/ObjectAnimator;

.field private mLogoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mContext:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 26
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mContext:Landroid/app/Activity;

    sget v2, Lhdn$i;->wml_loading_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .local v0, "view":Landroid/view/ViewGroup;
    sget v1, Lhdn$h;->iv_ding_logo:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mLogoView:Landroid/widget/ImageView;

    .line 29
    sget v1, Lhdn$h;->iv_four_ball:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBall:Landroid/widget/ImageView;

    .line 30
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBall:Landroid/widget/ImageView;

    sget v2, Lhdn$g;->four_ball:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 32
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBall:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 33
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBall:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 34
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBall:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 35
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 36
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 37
    return-object v0
.end method

.method public show(Z)V
    .locals 4
    .param p1, "shown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    if-eqz p1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBall:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;->mFourBallAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 44
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
