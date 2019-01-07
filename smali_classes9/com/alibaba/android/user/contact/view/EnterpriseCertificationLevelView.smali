.class public Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;
.super Landroid/widget/LinearLayout;
.source "EnterpriseCertificationLevelView.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
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
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
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
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1038
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->layout_org_certification_level:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1039
    sget v0, Lezg$h;->if_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1040
    sget v0, Lezg$h;->tv_des:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(IZZ)V
    .locals 2
    .param p1, "authLevel"    # I
    .param p2, "showTextTip"    # Z
    .param p3, "showWhenNoneAuth"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setLevelAdvance(Z)V

    .line 130
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setLevelMiddle(Z)V

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 122
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setLevelPrimary(Z)V

    goto :goto_0

    .line 124
    :cond_2
    if-eqz p3, :cond_3

    .line 125
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setLevelNone(Z)V

    goto :goto_0

    .line 127
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getTalkBackDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContentDescription()Ljava/lang/CharSequence;

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

    .line 44
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_certification_f:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_warming_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_senior:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_warming_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_senior:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

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

    .line 61
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_certification_f:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_middle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_middle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

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

    .line 95
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_nocertification_fill:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_level3_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_unauth:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_level3_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_unauth:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

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

    .line 78
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->icon_nocertification_fill:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->common_theme_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_basic:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->common_theme_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$l;->dt_orgnization_auth_level_basic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lezg$l;->dt_orgnization_auth_level_basic:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
