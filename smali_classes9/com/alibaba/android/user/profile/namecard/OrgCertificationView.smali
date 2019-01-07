.class public Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;
.super Landroid/widget/LinearLayout;
.source "OrgCertificationView.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1040
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->layout_org_certification_level:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1041
    sget v0, Lezg$h;->if_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1042
    sget v0, Lezg$h;->tv_des:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "iconFontText"    # Ljava/lang/String;
    .param p2, "textTip"    # Ljava/lang/String;
    .param p3, "bgId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(F)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method public getTalkBackDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setLevelAdvance(Z)V
    .locals 4
    .param p1, "showTextTip"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_certification_f:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_warming_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_senior:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_warming_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_senior:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_senior:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLevelMiddle(Z)V
    .locals 4
    .param p1, "showTextTip"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_certification_f:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_middle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_middle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_middle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLevelNone(Z)V
    .locals 4
    .param p1, "showTextTip"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_nocertification_fill:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_level3_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_unauth:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_level3_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_unauth:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_unauth:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLevelPrimary(Z)V
    .locals 4
    .param p1, "showTextTip"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_nocertification_fill:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->common_theme_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_basic:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->common_theme_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_basic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/OrgCertificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_basic:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
