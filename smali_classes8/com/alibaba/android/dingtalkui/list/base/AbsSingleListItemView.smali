.class public abstract Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;
.source "AbsSingleListItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 30
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->a:I

    if-ne v1, v3, :cond_1

    .line 32
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 33
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsSingleListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
