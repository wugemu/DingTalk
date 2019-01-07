.class public Lcom/alibaba/android/dingtalk/circle/anim/GoodView;
.super Landroid/widget/PopupWindow;
.source "GoodView.java"

# interfaces
.implements Lbot;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Landroid/view/animation/AnimationSet;

.field private l:Landroid/content/Context;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x3c

    const/4 v2, -0x2

    const/4 v5, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->b:Ljava/lang/String;

    .line 30
    sget v0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->c:I

    .line 32
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->d:I

    .line 34
    iput v5, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->e:I

    .line 36
    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->f:I

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->g:F

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->h:F

    .line 42
    const/16 v0, 0x320

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->i:I

    .line 44
    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->j:I

    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->l:Landroid/content/Context;

    .line 1059
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1060
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1063
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1064
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1066
    new-instance v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->l:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1067
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setIncludeFontPadding(Z)V

    .line 1068
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v3, 0x1

    iget v4, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->d:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 1069
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget v3, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->c:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1070
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1073
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setContentView(Landroid/view/View;)V

    .line 1075
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1076
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1077
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->measure(II)V

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setWidth(I)V

    .line 1079
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->j:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setHeight(I)V

    .line 1080
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setFocusable(Z)V

    .line 1082
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setTouchable(Z)V

    .line 1083
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setOutsideTouchable(Z)V

    .line 1085
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    .line 56
    return-void
.end method

.method private a()Landroid/view/animation/AnimationSet;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 134
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    .line 135
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->f:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 136
    .local v1, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->g:F

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 137
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 139
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->i:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 140
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    new-instance v3, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;-><init>(Lcom/alibaba/android/dingtalk/circle/anim/GoodView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 163
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    return-object v2
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 118
    .local v0, "offsetY":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->showAsDropDown(Landroid/view/View;II)V

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->a()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->k:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    .end local v0    # "offsetY":I
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->b:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 96
    .local v0, "w":I
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->j:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setWidth(I)V

    .line 97
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->j:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1127
    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1128
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1129
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 1130
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 97
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->setHeight(I)V

    .line 98
    return-void
.end method
