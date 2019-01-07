.class public Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MyCustomerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfhw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/view/View;

.field private c:I

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lfmj;

.field private n:Lfmm;

.field private o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

.field private p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

.field private q:Lcn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->c:I

    .line 458
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;Lfmj;)Lfmj;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;
    .param p1, "x1"    # Lfmj;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    return-object p1
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 255
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->q:Lcn;

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 256
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 257
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 258
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->q:Lcn;

    invoke-virtual {v1}, Lcn;->b()Z

    .line 259
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "animation"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->q:Lcn;

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 238
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_0

    .line 239
    sget v2, Lezg$a;->fragment_anim_down:I

    sget v3, Lezg$a;->fragment_anim_up:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->q:Lcn;

    invoke-virtual {v2, p1}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 243
    .local v0, "fm":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1

    .line 244
    sget v2, Lezg$h;->ll_container:I

    invoke-virtual {v1, v2, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 250
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 251
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->q:Lcn;

    invoke-virtual {v2}, Lcn;->b()Z

    .line 252
    return-void

    .line 246
    :cond_1
    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 247
    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->c:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lfmj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 569
    iget-object v0, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->d:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->name:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 229
    const-class v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 232
    const-class v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 575
    iget-object v0, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->d:Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->name:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 582
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->b()V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->finish()V

    .line 551
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_customer_search:I

    if-ne v0, v1, :cond_1

    .line 208
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/my_customer_search.html"

    new-instance v2, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$2;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_customer_filter:I

    if-ne v0, v1, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    if-eqz v0, :cond_2

    .line 2303
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    .line 221
    :goto_1
    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->b()V

    goto :goto_0

    .line 2306
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2307
    const-string/jumbo v1, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2308
    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    .line 2309
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    new-instance v1, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V

    .line 3080
    iput-object v1, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$b;

    .line 2326
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->p:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget v0, Lezg$j;->customer_my_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->setContentView(I)V

    .line 1135
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1136
    const-string/jumbo v0, "user_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->j:Ljava/lang/String;

    .line 1137
    const-string/jumbo v0, "corp_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    .line 1138
    const-string/jumbo v0, "display_enterprise_oid"

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_0

    .line 1143
    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    .line 1144
    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i:Ljava/lang/String;

    .line 1154
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1155
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->finish()V

    .line 1262
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    if-eqz v0, :cond_5

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 1181
    :goto_2
    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->q:Lcn;

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->q:Lcn;

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1184
    sget v1, Lezg$h;->ll_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    const-class v3, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1185
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2189
    sget v0, Lezg$h;->tv_customer_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->k:Landroid/widget/TextView;

    .line 2190
    sget v0, Lezg$h;->tv_customer_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->l:Landroid/widget/TextView;

    .line 2191
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2192
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2194
    sget v0, Lezg$h;->view_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a:Landroid/view/View;

    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$1;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2202
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void

    .line 1147
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_0

    .line 1149
    iget-wide v4, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    .line 1150
    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i:Ljava/lang/String;

    goto :goto_0

    .line 1159
    :cond_2
    const-string/jumbo v0, "intent_key_appId"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1169
    :goto_3
    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1170
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    const/16 v6, 0x80

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v0

    .line 1171
    if-eqz v0, :cond_3

    .line 1172
    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    iput-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->e:J

    .line 1176
    :cond_3
    const-string/jumbo v0, "staff_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h:Ljava/lang/String;

    .line 1177
    sget-object v0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->b:Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->j:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->e:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_4
    move-wide v4, v2

    goto :goto_3

    .line 1266
    :cond_5
    new-instance v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;-><init>()V

    .line 1267
    new-instance v1, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V

    .line 1376
    iput-object v1, v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    .line 1289
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1290
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1291
    const-string/jumbo v2, "staff_id"

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1293
    const-string/jumbo v2, "corp_id"

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v2, "intent_key_appId"

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string/jumbo v2, "user_name"

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    new-instance v2, Lfmn;

    invoke-direct {v2, p0}, Lfmn;-><init>(Lfhw;)V

    .line 1380
    iput-object v2, v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->c:Lfhx;

    .line 1297
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 359
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    if-eqz v2, :cond_3

    .line 360
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    iget-boolean v2, v2, Lfmj;->a:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    iget-boolean v2, v2, Lfmj;->c:Z

    if-eqz v2, :cond_1

    .line 361
    :cond_0
    const/4 v2, 0x3

    sget v3, Lezg$l;->filter:I

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 362
    .local v0, "item":Landroid/view/MenuItem;
    sget v2, Lezg$g;->customer_filter_icon:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 363
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 365
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    if-eqz v2, :cond_3

    .line 366
    sget-object v2, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 3220
    iget-object v3, v3, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 366
    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 367
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    if-eqz v2, :cond_3

    .line 368
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    iget-boolean v2, v2, Lfmj;->a:Z

    if-eqz v2, :cond_2

    .line 369
    sget v2, Lezg$l;->org_manager_txt:I

    invoke-interface {p1, v5, v4, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 370
    .local v1, "item2":Landroid/view/MenuItem;
    sget v2, Lezg$g;->customer_manager_icon:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 371
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 373
    .end local v1    # "item2":Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->m:Lfmj;

    iget-boolean v2, v2, Lfmj;->b:Z

    if-eqz v2, :cond_3

    .line 374
    const/4 v2, 0x4

    sget v3, Lezg$l;->add_my_customer:I

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 375
    .restart local v1    # "item2":Landroid/view/MenuItem;
    sget v2, Lezg$g;->ic_actbar_more:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 376
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 388
    .end local v1    # "item2":Landroid/view/MenuItem;
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 379
    :cond_4
    sget-object v2, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 4220
    iget-object v3, v3, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 379
    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    const/4 v2, 0x5

    sget v3, Lezg$l;->dt_crm_customer_single_subordinate:I

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 381
    .restart local v1    # "item2":Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 382
    .end local v1    # "item2":Landroid/view/MenuItem;
    :cond_5
    sget-object v2, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 5220
    iget-object v3, v3, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 382
    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    const/4 v2, 0x6

    sget v3, Lezg$l;->dt_crm_customer_single_employee:I

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 384
    .restart local v1    # "item2":Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 10376
    iput-object v1, v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    .line 558
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 10380
    iput-object v1, v0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->c:Lfhx;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->n:Lfmm;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->n:Lfmm;

    invoke-virtual {v0}, Lfmm;->b()V

    .line 562
    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->n:Lfmm;

    .line 564
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 565
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 393
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 394
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 421
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 397
    :pswitch_0
    const-string/jumbo v2, "pref_key_crm_guide"

    invoke-static {p0, v2, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 398
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    sget-object v2, Lezh;->a:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v9}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string/jumbo v2, "crm_clientlist_manage_click"

    const-string/jumbo v4, "org_id=%d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    .line 5315
    invoke-static {v9, v2, v4, v5}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->n:Lfmm;

    if-nez v2, :cond_1

    .line 406
    new-instance v2, Lfmm;

    iget-wide v4, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    iget-object v3, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v3}, Lfmm;-><init>(Landroid/app/Activity;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->n:Lfmm;

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->n:Lfmm;

    invoke-virtual {v2}, Lfmm;->a()V

    goto :goto_0

    .line 5508
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    if-eqz v2, :cond_0

    .line 5509
    new-instance v4, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V

    .line 5510
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6479
    iget-object v2, v4, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    array-length v2, v2

    new-array v6, v2, [Ljava/lang/CharSequence;

    move v2, v3

    .line 6480
    :goto_1
    iget-object v7, v4, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    .line 6481
    iget-object v7, v4, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    iget-object v8, v4, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getNameResId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 6480
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5511
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->o:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .line 7220
    iget-object v7, v2, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 7495
    if-eqz v7, :cond_4

    move v2, v3

    .line 7498
    :goto_2
    iget-object v8, v4, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    array-length v8, v8

    if-ge v2, v8, :cond_4

    .line 7499
    iget-object v8, v4, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v8

    invoke-virtual {v7}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 5511
    :goto_3
    new-instance v3, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;)V

    invoke-virtual {v5, v6, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5539
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 7498
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 7503
    goto :goto_3

    .line 8425
    :pswitch_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 8426
    const-string/jumbo v2, "title"

    sget v5, Lezg$l;->dt_crm_customer_single_subordinate:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8427
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8428
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "intent_key_filter_model"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 8429
    if-nez v2, :cond_5

    .line 8431
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 8432
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "intent_key_appId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 8434
    :cond_5
    iput-boolean v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    .line 8435
    const-string/jumbo v5, "intent_key_filter_model"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8436
    const-string/jumbo v2, "bread_node_name"

    sget v5, Lezg$l;->dt_crm_customer_single_subordinate:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8437
    invoke-static {}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 8438
    const-string/jumbo v2, "crm_clientlist_substaffclient_click"

    const-string/jumbo v4, "org_id=%d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    .line 9315
    invoke-static {v9, v2, v4, v5}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9442
    :pswitch_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 9443
    const-string/jumbo v2, "title"

    sget v5, Lezg$l;->dt_crm_customer_single_employee:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9444
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9445
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "intent_key_filter_model"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 9446
    if-nez v2, :cond_6

    .line 9448
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 9449
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "intent_key_appId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 9451
    :cond_6
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    .line 9452
    const-string/jumbo v5, "intent_key_filter_model"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9453
    const-string/jumbo v2, "bread_node_name"

    sget v5, Lezg$l;->dt_crm_customer_single_employee:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9454
    invoke-static {}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 9455
    const-string/jumbo v2, "crm_clientlist_substaffclient_click"

    const-string/jumbo v4, "org_id=%d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    .line 10315
    invoke-static {v9, v2, v4, v5}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string/jumbo v0, "intent_key_agent_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->e:J

    .line 126
    const-string/jumbo v0, "org_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "display_enterprise_oid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    .line 128
    const-string/jumbo v0, "intent_key_appId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "corp_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "staff_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->j:Ljava/lang/String;

    .line 132
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    const-string/jumbo v0, "intent_key_agent_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 113
    const-string/jumbo v0, "org_name"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 115
    const-string/jumbo v0, "intent_key_appId"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "corp_id"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "staff_id"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method
