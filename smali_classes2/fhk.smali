.class public final Lfhk;
.super Lfgx;
.source "OrgHomePageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgx",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private j:Landroid/content/Context;

.field private final k:I

.field private final l:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 67
    const/16 v0, 0xc

    iput v0, p0, Lfhk;->k:I

    .line 68
    const/16 v0, 0x12

    iput v0, p0, Lfhk;->l:I

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfhk;->j:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lezg$j;->fragment_contact_org_home_page_layout:I

    return v0
.end method

.method static synthetic a(Lfhk;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lfhk;

    .prologue
    .line 48
    iget-object v0, p0, Lfhk;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method static synthetic b(Lfhk;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lfhk;

    .prologue
    .line 48
    iget-object v0, p0, Lfhk;->h:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    sget v0, Lezg$h;->rl_component:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhk;->b:Landroid/view/View;

    .line 80
    sget v0, Lezg$h;->cell_content_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhk;->c:Landroid/view/View;

    .line 81
    sget v0, Lezg$h;->if_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfhk;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 82
    sget v0, Lezg$h;->cell_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhk;->e:Landroid/widget/TextView;

    .line 83
    sget v0, Lezg$h;->cell_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhk;->g:Landroid/widget/TextView;

    .line 84
    sget v0, Lezg$h;->rl_cell_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfhk;->f:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lezg$h;->cell_content_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfhk;->h:Landroid/widget/ImageView;

    .line 86
    sget v0, Lezg$h;->view_ads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lfhk;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 88
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 48
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 1096
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getComponent()Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1098
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getComponent()Lcom/alibaba/android/user/contact/homepage/Component;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lfhk;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v1, p0, Lfhk;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1101
    iget-object v1, p0, Lfhk;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 1102
    iget-object v1, p0, Lfhk;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1103
    iget-object v1, p0, Lfhk;->c:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lfhk;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->getIconFontResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1107
    iget-object v1, p0, Lfhk;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lfhk;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->getIconFontColorResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1110
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->getIconFontResId()I

    move-result v1

    sget v2, Lezg$l;->icon_branch:I

    if-ne v1, v2, :cond_2

    .line 1111
    iget-object v1, p0, Lfhk;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v8, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 1117
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getType()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 1118
    check-cast v0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;

    .line 1119
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgPage()Lfrq;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1120
    iget-object v1, p0, Lfhk;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    iget-object v1, p0, Lfhk;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lfhk;->j:Landroid/content/Context;

    sget v3, Lezg$e;->ui_common_level2_text_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1122
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgPage()Lfrq;

    move-result-object v1

    iget v1, v1, Lfrq;->b:I

    if-ltz v1, :cond_3

    .line 1123
    iget-object v1, p0, Lfhk;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lfhk;->j:Landroid/content/Context;

    sget v3, Lezg$l;->dt_org_home_page_completeness:I

    new-array v4, v8, [Ljava/lang/Object;

    .line 1124
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgPage()Lfrq;

    move-result-object v5

    iget v5, v5, Lfrq;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1123
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lfls;->g(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1135
    new-instance v1, Lcry;

    invoke-direct {v1}, Lcry;-><init>()V

    .line 1136
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NEW:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v2

    .line 2047
    iput v2, v1, Lcry;->a:I

    .line 1137
    iget-object v2, p0, Lfhk;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 1138
    iget-object v2, p0, Lfhk;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 1140
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgId()J

    invoke-static {v8}, Lfls;->b(Z)V

    .line 1146
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgId()J

    invoke-static {}, Lfls;->g()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1147
    iget-object v1, p0, Lfhk;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1152
    :goto_3
    iget-object v1, p0, Lfhk;->b:Landroid/view/View;

    new-instance v2, Lfhk$1;

    invoke-direct {v2, p0, v0}, Lfhk$1;-><init>(Lfhk;Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    :cond_1
    :goto_4
    return-void

    .line 1113
    :cond_2
    iget-object v1, p0, Lfhk;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v8, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 1125
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgPage()Lfrq;

    move-result-object v1

    iget v1, v1, Lfrq;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 1126
    iget-object v1, p0, Lfhk;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lfhk;->j:Landroid/content/Context;

    sget v3, Lezg$l;->dt_cooperate_with_other_company:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1128
    :cond_4
    iget-object v1, p0, Lfhk;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1131
    :cond_5
    iget-object v1, p0, Lfhk;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1142
    :cond_6
    iget-object v1, p0, Lfhk;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    goto :goto_2

    .line 1149
    :cond_7
    iget-object v1, p0, Lfhk;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1170
    :cond_8
    iget-object v0, p0, Lfhk;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
