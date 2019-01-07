.class public abstract Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;
.source "AbsDoubleListItemView.java"


# instance fields
.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lecj$i;->AbsDoubleListItemView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lecj$i;->AbsDoubleListItemView_list_content_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->setContextText(Ljava/lang/String;)V

    .line 36
    sget v1, Lecj$i;->AbsDoubleListItemView_list_caption_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->setCaptionText(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 51
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->a:I

    if-ne v1, v3, :cond_1

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->iconfont_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lecj$e;->img_avatar:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setCaptionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setContextText(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->i:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->i:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->a(Landroid/view/View;Z)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->j:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->a(Landroid/view/View;Z)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->k:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsDoubleListItemView;->a(Landroid/view/View;Z)V

    .line 47
    return-void
.end method
