.class public final Lfhl;
.super Lfgx;
.source "OtherOrgViewHolder.java"


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
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfhl;->d:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lezg$j;->fragment_contact_home_other_org_layout:I

    return v0
.end method

.method static synthetic a(Lfhl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfhl;

    .prologue
    .line 49
    iget-object v0, p0, Lfhl;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    sget v0, Lezg$h;->rl_other_org_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lfhl;->a:Landroid/widget/RelativeLayout;

    .line 76
    sget v0, Lezg$h;->other_org_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhl;->b:Landroid/widget/TextView;

    .line 77
    sget v0, Lezg$h;->other_org_adsview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lfhl;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 79
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 49
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 1083
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getOrgCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1085
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lezg$l;->dt_contact_other_group_at:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 1086
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1085
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    iget-object v3, p0, Lfhl;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v3, p0, Lfhl;->a:Landroid/widget/RelativeLayout;

    new-instance v4, Lfhl$1;

    invoke-direct {v4, p0, p1}, Lfhl$1;-><init>(Lfhl;Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    iget-object v3, p0, Lfhl;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1099
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getComposite()Lcom/alibaba/android/user/contact/homepage/Composite;

    move-result-object v3

    .line 1100
    const/4 v0, 0x0

    .line 1101
    instance-of v3, v3, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;

    if-eqz v3, :cond_0

    .line 1102
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getComposite()Lcom/alibaba/android/user/contact/homepage/Composite;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;

    .line 1105
    :cond_0
    new-instance v3, Lcry;

    invoke-direct {v3}, Lcry;-><init>()V

    .line 2047
    iput v1, v3, Lcry;->a:I

    .line 1107
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;->getUnreadCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 2055
    :goto_0
    iput-boolean v0, v3, Lcry;->b:Z

    .line 1108
    iget-object v0, p0, Lfhl;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 49
    return-void

    :cond_1
    move v0, v2

    .line 1107
    goto :goto_0
.end method
