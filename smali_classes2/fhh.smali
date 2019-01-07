.class public final Lfhh;
.super Lfgx;
.source "DepartmentViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgx",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;",
        "Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Landroid/content/Context;

.field private k:Lcom/alibaba/android/user/model/OrgInviteObject;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfhh;->j:Landroid/content/Context;

    .line 71
    :cond_0
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lezg$j;->fragment_contact_home_main_org_layout:I

    return v0
.end method

.method static synthetic a(Lfhh;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfhh;

    .prologue
    .line 50
    iget-object v0, p0, Lfhh;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lfhh;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 3
    .param p0, "x0"    # Lfhh;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    .prologue
    .line 50
    .line 2192
    iget-object v0, p0, Lfhh;->j:Landroid/content/Context;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/manage_org.html"

    new-instance v2, Lfhh$4;

    invoke-direct {v2, p0, p1}, Lfhh$4;-><init>(Lfhh;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 50
    return-void
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 239
    iget-object v0, p0, Lfhh;->j:Landroid/content/Context;

    iget-object v1, p0, Lfhh;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgInviteObject;JLjava/lang/Boolean;)V

    .line 240
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    sget v0, Lezg$h;->cell_left_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfhh;->a:Landroid/widget/ImageView;

    .line 80
    sget v0, Lezg$h;->cell_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhh;->b:Landroid/widget/TextView;

    .line 81
    sget v0, Lezg$h;->if_org_secret_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfhh;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 82
    sget v0, Lezg$h;->rl_cell_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhh;->e:Landroid/view/View;

    .line 83
    sget v0, Lezg$h;->if_operation_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfhh;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 84
    sget v0, Lezg$h;->tv_operation_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhh;->g:Landroid/widget/TextView;

    .line 85
    sget v0, Lezg$h;->cell_content_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfhh;->h:Landroid/widget/ImageView;

    .line 86
    sget v0, Lezg$h;->view_certification:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    iput-object v0, p0, Lfhh;->c:Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    .line 87
    sget v0, Lezg$h;->root_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhh;->i:Landroid/view/View;

    .line 89
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 1
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lfhh;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 224
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    if-ne p2, v0, :cond_1

    .line 225
    invoke-direct {p0}, Lfhh;->b()V

    .line 227
    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 50
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 1093
    if-eqz p1, :cond_1

    .line 1094
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getComposite()Lcom/alibaba/android/user/contact/homepage/Composite;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    .line 1095
    if-eqz v8, :cond_1

    .line 1096
    iget-object v0, p0, Lfhh;->b:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgLogo()Ljava/lang/String;

    move-result-object v2

    .line 1187
    iget-object v0, p0, Lfhh;->a:Landroid/widget/ImageView;

    sget v1, Lezg$g;->icon_contact_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1188
    iget-object v1, p0, Lfhh;->a:Landroid/widget/ImageView;

    .line 2044
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    move v6, v5

    move-object v7, v3

    .line 2045
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1101
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->isOpenEncrypt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1102
    iget-object v0, p0, Lfhh;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1107
    :goto_0
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getAuthLevel()I

    move-result v0

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgId()J

    move-result-wide v2

    .line 2173
    iget-object v1, p0, Lfhh;->c:Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setVisibility(I)V

    .line 2175
    iget-object v1, p0, Lfhh;->c:Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    new-instance v6, Lfhh$3;

    invoke-direct {v6, p0, v0, v2, v3}, Lfhh$3;-><init>(Lfhh;IJ)V

    invoke-virtual {v1, v6}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2183
    iget-object v1, p0, Lfhh;->c:Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    invoke-virtual {v1, v0, v5, v4}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->a(IZZ)V

    .line 1108
    iget-object v0, p0, Lfhh;->e:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1111
    iget-object v0, p0, Lfhh;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    :goto_1
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->canManage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1118
    iget-object v0, p0, Lfhh;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lfhh;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lfhh;->j:Landroid/content/Context;

    sget v2, Lezg$l;->icon_setting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v0, p0, Lfhh;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lfhh;->j:Landroid/content/Context;

    sget v2, Lezg$l;->dt_contacts_menu_manage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->isShowManageRedDot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1123
    iget-object v0, p0, Lfhh;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1128
    :goto_2
    iget-object v0, p0, Lfhh;->e:Landroid/view/View;

    new-instance v1, Lfhh$1;

    invoke-direct {v1, p0, v8}, Lfhh$1;-><init>(Lfhh;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    :cond_0
    :goto_3
    iget-object v0, p0, Lfhh;->i:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lfhh;->c:Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/EnterpriseCertificationLevelView;->getTalkBackDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    return-void

    .line 1104
    :cond_2
    iget-object v0, p0, Lfhh;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1113
    :cond_3
    iget-object v0, p0, Lfhh;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1125
    :cond_4
    iget-object v0, p0, Lfhh;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1136
    :cond_5
    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->canInvite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v0

    const-string/jumbo v1, "invite_in_contact_hp"

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lfvv;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lfhh;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lfhh;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lfhh;->j:Landroid/content/Context;

    sget v2, Lezg$l;->icon_invite:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v0, p0, Lfhh;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lfhh;->j:Landroid/content/Context;

    sget v2, Lezg$l;->home_menu_share:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v0, p0, Lfhh;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lfhh;->e:Landroid/view/View;

    new-instance v1, Lfhh$2;

    invoke-direct {v1, p0, v8}, Lfhh$2;-><init>(Lfhh;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lfhh;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lfhh;->b()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
