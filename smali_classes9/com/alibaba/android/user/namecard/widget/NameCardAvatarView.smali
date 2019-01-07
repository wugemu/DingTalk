.class public Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
.super Landroid/widget/LinearLayout;
.source "NameCardAvatarView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->b:Landroid/view/View;

    .line 1042
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->view_name_card_exchange_avatar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1043
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->b:Landroid/view/View;

    .line 1050
    sget v0, Lezg$h;->iv_avatar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1051
    sget v0, Lezg$h;->tv_name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->a:Landroid/widget/TextView;

    .line 1052
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setGravity(I)V

    .line 1045
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setClipChildren(Z)V

    .line 1046
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setClipToPadding(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 3
    .param p1, "cardUserObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->icon_signal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lezg$e;->name_card_default_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultBgColorRes(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lful;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method

.method public getAvatarImageView()Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 61
    .local v0, "topPadding":I
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->b:Landroid/view/View;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 63
    .end local v0    # "topPadding":I
    :cond_0
    return-void
.end method
