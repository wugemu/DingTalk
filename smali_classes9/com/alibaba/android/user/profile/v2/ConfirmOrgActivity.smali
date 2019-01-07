.class public Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ConfirmOrgActivity.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$i;->name_max_limit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->c()V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->b:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->c:Ljava/util/List;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$2;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 434
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_contact_permission"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;)V

    .line 441
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/app/Activity;)V

    .line 2447
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    .line 2448
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lezt;->b(Ljava/lang/Long;Lcma;)V

    .line 439
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    .line 3207
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 3213
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3233
    :cond_0
    :goto_0
    return-void

    .line 3216
    :cond_1
    const/4 v1, 0x0

    .line 3217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 3218
    if-eqz v0, :cond_2

    .line 3221
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v3, :cond_4

    move-object v2, v0

    .line 3228
    :goto_2
    if-eqz v2, :cond_9

    .line 3229
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->f:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3230
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->g:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3241
    if-eqz v2, :cond_3

    .line 3247
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->authLevel:I

    .line 3248
    :goto_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 3249
    sget v0, Lezg$l;->dt_orgnization_auth_level_senior:I

    .line 3250
    sget v1, Lezg$g;->bg_org_profile_auth_level_advanced:I

    .line 3261
    :goto_4
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3262
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3232
    :cond_3
    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3233
    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 3266
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 3269
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$3;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V

    const-class v4, Lcma;

    .line 3270
    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3305
    invoke-static {}, Lfay;->a()Lezx;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Lezx;->a(Lcma;J)V

    goto :goto_0

    .line 3224
    :cond_4
    if-nez v1, :cond_a

    :goto_5
    move-object v1, v0

    .line 3227
    goto :goto_1

    .line 3247
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 3251
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 3252
    sget v0, Lezg$l;->dt_orgnization_auth_level_middle:I

    .line 3253
    sget v1, Lezg$g;->bg_org_profile_auth_level_middle:I

    goto :goto_4

    .line 3254
    :cond_7
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 3255
    sget v0, Lezg$l;->dt_orgnization_auth_level_basic:I

    .line 3256
    sget v1, Lezg$g;->bg_org_profile_auth_level_basic:I

    goto :goto_4

    .line 3258
    :cond_8
    sget v0, Lezg$l;->dt_orgnization_auth_level_unauth:I

    .line 3259
    sget v1, Lezg$g;->bg_org_profile_auth_level_no_auth:I

    goto :goto_4

    .line 3236
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_5

    :cond_b
    move-object v2, v1

    goto/16 :goto_2
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    .line 3416
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->dismissLoadingDialog()V

    .line 3417
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 3418
    const-string/jumbo v0, ""

    .line 3419
    if-eqz v1, :cond_0

    .line 3420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3423
    :goto_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/pwd.html"

    new-instance v3, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$7;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;Ljava/lang/String;)V

    .line 3424
    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 59
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d()V

    .line 454
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 309
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 1384
    invoke-static {}, Lfaf;->b()Lezm;

    sget-object v2, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 1385
    if-eqz v0, :cond_0

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1388
    :cond_0
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$6;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v1, v0}, Lezm;->a(Ljava/lang/String;Lcma;)V

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    sget v0, Lezg$h;->edit_nick:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2318
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_1

    .line 2322
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2323
    sget v1, Lezg$l;->my_profile_nick:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2324
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2325
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->a:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 2326
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2327
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 2328
    new-instance v1, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$4;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2345
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2346
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2348
    :cond_3
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2349
    sget v2, Lezg$l;->my_profile_nick:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2350
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2351
    sget v2, Lezg$l;->cancel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2352
    sget v2, Lezg$l;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$5;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2379
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2380
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v0, Lezg$j;->activity_confirm_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->setContentView(I)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->my_profile_signup_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1095
    :cond_0
    sget v0, Lezg$h;->divider_org_ding:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->e:Landroid/view/View;

    .line 1096
    sget v0, Lezg$h;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->f:Landroid/widget/TextView;

    .line 1097
    sget v0, Lezg$h;->tv_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->g:Landroid/widget/TextView;

    .line 1098
    sget v0, Lezg$h;->tv_auth_level:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->h:Landroid/widget/TextView;

    .line 1099
    sget v0, Lezg$h;->tv_org_ding:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->i:Landroid/widget/TextView;

    .line 1100
    sget v0, Lezg$h;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1107
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v0, :cond_1

    .line 1109
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1110
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity$1;-><init>(Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;)V

    const-class v7, Lcma;

    invoke-interface {v0, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 1109
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    :goto_0
    return-void

    .line 1133
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/ConfirmOrgActivity;->c()V

    goto :goto_0
.end method
