.class public Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgInviteActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

.field private b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

.field private c:Lcom/alibaba/android/user/model/OrgInviteObject;

.field private d:J

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->e:Z

    .line 338
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)Lcom/alibaba/android/user/model/OrgInviteObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "checkdStr"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, " "

    .end local p0    # "checkdStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    .prologue
    .line 52
    .line 4172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 4173
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v2, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->a:Landroid/widget/ToggleButton;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4174
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->showLoadingDialog()V

    .line 4175
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->d:J

    .line 5049
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5050
    const-class v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ContactIService;

    .line 5051
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->c(JJ)Lcmg;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/alibaba/android/user/idl/services/ContactIService;->setOrgInviteSwitch(Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    .line 52
    :cond_0
    return-void

    .line 4173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    .prologue
    .line 52
    .line 5231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v0, :cond_1

    .line 5235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 5236
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 5238
    const-string/jumbo v0, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    .line 5240
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5241
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5243
    new-instance v3, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 5244
    invoke-virtual {v3, v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 5245
    invoke-virtual {v3, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 5246
    invoke-virtual {v3, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 5247
    const-string/jumbo v0, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    invoke-virtual {v3, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 5248
    const-string/jumbo v0, "invite_share_click"

    invoke-virtual {v3, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setShareKey(Ljava/lang/String;)V

    .line 5251
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 5252
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 5255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5257
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5258
    sget v2, Lezg$l;->dt_invite_title_share_dingtalk:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5259
    sget v2, Lezg$l;->dt_invite_title_share_weixin_friend:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5260
    sget v2, Lezg$l;->dt_invite_title_share_sms:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5268
    :goto_0
    sget v2, Lezg$l;->invite_share_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 52
    :cond_1
    return-void

    .line 5262
    :cond_2
    sget v2, Lezg$l;->dt_invite_title_share_dingtalk:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5263
    sget v2, Lezg$l;->dt_invite_title_share_whatsapp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWhatsAppFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5264
    const-string/jumbo v2, "facebook"

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newFacebookFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5265
    sget v2, Lezg$l;->dt_invite_title_share_sms:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5266
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newAndroidSystemShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    .prologue
    .line 52
    .line 5279
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_invite_qrcode.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V

    .line 5280
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 52
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    .prologue
    .line 52
    .line 6210
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v0, :cond_1

    .line 6214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 6215
    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6217
    const-string/jumbo v0, "https://gw.alicdn.com/tps/TB1u3jCMXXXXXcuXpXXXXXXXXXX-200-200.png"

    .line 6219
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6220
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 6221
    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6222
    const-string/jumbo v1, " "

    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6223
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6225
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lezg$l;->dt_contacts_org_invite_copy_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6224
    invoke-static {p0, v0, v1}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 5
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 105
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    if-ne p2, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->dismissLoadingDialog()V

    .line 108
    :cond_0
    if-eqz p1, :cond_2

    .line 109
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 2295
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    .line 2296
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2297
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2299
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2300
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v4, v4, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2303
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->e:Z

    if-eqz v0, :cond_5

    .line 2304
    if-eqz v3, :cond_4

    .line 2305
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2327
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 2297
    goto :goto_0

    .line 2307
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2308
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    sget v1, Lezg$l;->org_invite_hint_close:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2311
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    .line 2313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2314
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v4, v4, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2315
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v4, v4, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2318
    :cond_6
    if-eqz v3, :cond_7

    .line 2319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    .line 2321
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2322
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2323
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2326
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2328
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2329
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->dismissLoadingDialog()V

    .line 117
    const-string/jumbo v0, "408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget v0, Lezg$l;->server_down:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 84
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->showLoadingDialog()V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(J)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v2, Lezg$j;->activity_org_invite:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->setContentView(I)V

    .line 73
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lezg$l;->org_invite:I

    new-array v4, v0, [Ljava/lang/Object;

    sget v5, Lezg$l;->app_name:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 1129
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 1132
    const-string/jumbo v2, "org_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->d:J

    .line 1134
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "key_org_role"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "key_org_role"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->f:I

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_can_manage"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->e:Z

    .line 77
    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    .line 78
    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 1143
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->e:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->f:I

    if-ne v2, v0, :cond_3

    .line 1144
    :goto_1
    if-eqz v0, :cond_4

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 1138
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->d:J

    invoke-static {v2, v3}, Lfls;->a(J)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->f:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1143
    goto :goto_1

    .line 1147
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$a;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->e:Z

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x1

    sget v2, Lezg$l;->org_invite_member_list:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 157
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 2039
    iput-object v1, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    .line 98
    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 99
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3180
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3181
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->c:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    .line 3182
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 3205
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/orgapplylist"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 92
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method
