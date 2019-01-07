.class public Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;
.super Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
.source "RotateIconFontTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 33
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->onAttachedToWindow()V

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbrx$a;->device_loading_rotate_anim:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/RotateAnimation;

    .line 36
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RotateIconFontTextView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "animation":Landroid/view/animation/RotateAnimation;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
