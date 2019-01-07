.class public Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CreateOrgActivity.java"


# instance fields
.field private a:I

.field private b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

.field private c:I

.field private d:Landroid/widget/Button;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 93
    iput v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    .line 97
    iput v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c:I

    .line 101
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    .line 107
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->h:Z

    .line 109
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->i:Z

    .line 112
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->j:Z

    return-void
.end method

.method private a(I)V
    .locals 6
    .param p1, "step"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    aget-object v0, v0, v5

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->h:Z

    invoke-static {v2, v3, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(JZ)Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    move-result-object v1

    aput-object v1, v0, v5

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c()V

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->create_org_step_1_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->create_org_step_sub_title:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->d:Landroid/widget/Button;

    sget v1, Lezg$l;->create_org_step_1_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep3Fragment;-><init>()V

    aput-object v1, v0, v4

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c()V

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->create_org_step_3_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->create_org_step_sub_title:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->d:Landroid/widget/Button;

    sget v1, Lezg$l;->create_org_step_1_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep4Fragment;-><init>()V

    aput-object v1, v0, v3

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c()V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->create_org_step_4_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->create_org_step_sub_title:I

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->d:Landroid/widget/Button;

    sget v1, Lezg$l;->create_org_step_4_button:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    .line 1219
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 1222
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1227
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a(Ljava/util/List;)V

    .line 1228
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "create_org_limit_member"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 1229
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 1230
    sget v1, Lezg$l;->create_org_limit_count_txt:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sget-object v1, Lflr;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1233
    sget v0, Lezg$l;->create_org_check_member_max_count_toast:I

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Lflr;->b:Ljava/lang/Integer;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1238
    :cond_2
    const-string/jumbo v0, "org_create_staff_next_click"

    const-string/jumbo v1, "num=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "cos3 member num=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->f:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    if-nez v0, :cond_3

    .line 1242
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->f:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->f:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2103
    iput-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->c:Ljava/util/List;

    .line 2104
    iget-object v2, v0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->b:Lfkz;

    if-eqz v2, :cond_5

    .line 2105
    iget-object v0, v0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->b:Lfkz;

    .line 3062
    iput-object v1, v0, Lfkz;->a:Ljava/util/List;

    .line 3063
    iget-object v1, v0, Lfkz;->a:Ljava/util/List;

    if-nez v1, :cond_4

    .line 3064
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lfkz;->a:Ljava/util/List;

    .line 3066
    :cond_4
    invoke-virtual {v0}, Lfkz;->notifyDataSetChanged()V

    .line 1245
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->f:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)V

    .line 3099
    iput-object v1, v0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->a:Landroid/view/View$OnClickListener;

    .line 1252
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1261
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    aget-object v0, v0, v1

    .line 1262
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->c()V

    .line 1264
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c:I

    .line 1265
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;JLjava/lang/String;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    .line 3462
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->j:Z

    if-eqz v0, :cond_0

    .line 3463
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_create_org_times"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 3464
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_create_org_times"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3404
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;-><init>()V

    .line 3405
    iput-wide p1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    .line 3406
    iput-object p3, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    .line 3408
    const-string/jumbo v0, "https://industry-fab.dingtalk.com/custom/guide?corpId="

    .line 3409
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 3410
    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    .line 3411
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "pref_last_create_org_info"

    aput-object v4, v3, v6

    .line 3412
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 3411
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4052
    const/4 v4, -0x1

    invoke-static {v3, v1, v4}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 3414
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3415
    new-array v1, v8, [Ljava/lang/String;

    aput-object v0, v1, v6

    aput-object v2, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3417
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 434
    .local p1, "orgDeptViewModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 456
    :cond_0
    return-void

    .line 438
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 440
    .local v1, "orgDeptViewModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v1, :cond_2

    .line 444
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 445
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptMembers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 447
    .local v0, "orgCreationUserModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 450
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->e:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 454
    .end local v0    # "orgCreationUserModel":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getSubDepts()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->f:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    if-gtz v0, :cond_1

    .line 272
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->i:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p0}, Lfls;->b(Landroid/app/Activity;)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->finish()V

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->c()V

    .line 279
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c:I

    .line 280
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    .line 281
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 332
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const/16 v3, 0x1001

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(I)Landroid/support/v4/app/FragmentTransaction;

    .line 334
    iget v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c:I

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    if-eq v3, v4, :cond_0

    .line 335
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c:I

    aget-object v2, v3, v4

    .line 336
    .local v2, "preFragment":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
    if-eqz v2, :cond_0

    .line 337
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 341
    .end local v2    # "preFragment":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    aget-object v0, v3, v4

    .line 342
    .local v0, "curFragment":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 344
    sget v3, Lezg$h;->ll_org_create_fragment_container:I

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 349
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 350
    return-void

    .line 346
    :cond_2
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    .prologue
    .line 78
    .line 3354
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    move-result-object v5

    .line 3355
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3356
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3357
    :cond_0
    :goto_0
    return-void

    .line 3360
    :cond_1
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->updateBossList()V

    .line 3362
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;

    invoke-direct {v1, p0, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$4;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V

    .line 3388
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 3389
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->showLoadingDialog()V

    .line 3391
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrganizationModel()Lcfi;

    move-result-object v4

    .line 3392
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_create_org_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3393
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_create_org_source"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcfi;->t:Ljava/lang/Integer;

    .line 3396
    :cond_2
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getTemplateId()J

    move-result-wide v2

    .line 3397
    invoke-virtual {v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptNodeObjectList()Ljava/util/List;

    move-result-object v5

    .line 3396
    invoke-interface/range {v1 .. v6}, Lezt;->a(JLcfi;Ljava/util/List;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b()V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget v5, Lezg$j;->activity_create_org_v2:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 120
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "template_id"

    const-wide/16 v6, -0x3e8

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    .line 1189
    sget v5, Lezg$h;->btn_next:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->d:Landroid/widget/Button;

    .line 1190
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->d:Landroid/widget/Button;

    new-instance v6, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    iput-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b:[Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;

    .line 127
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v5

    invoke-virtual {v5}, Lfku;->d()V

    .line 128
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v5

    invoke-virtual {v5}, Lfku;->b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    move-result-object v4

    .line 129
    .local v4, "orgCreation":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
    if-eqz v4, :cond_6

    .line 130
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    const-wide/16 v8, -0x3e8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getTemplateId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 132
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v5

    invoke-virtual {v5}, Lfku;->e()V

    .line 133
    const-string/jumbo v5, "cre_org_v2"

    const-string/jumbo v6, "clearData tmpId=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :goto_0
    if-nez p1, :cond_7

    .line 157
    iget v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-direct {p0, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a(I)V

    .line 1199
    :goto_1
    invoke-static {}, Lflr;->g()V

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 169
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 170
    .local v1, "curUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->j:Z

    .line 173
    :cond_1
    return-void

    .line 136
    .end local v1    # "curUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    const-wide/16 v8, -0x3e8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 137
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->i:Z

    .line 140
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getTemplateId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    .line 141
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->h:Z

    .line 142
    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getCurrentStep()I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    .line 143
    iget v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    if-gez v5, :cond_5

    .line 144
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    .line 145
    iget v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setCurrentStep(I)V

    .line 150
    :cond_4
    :goto_2
    const-string/jumbo v5, "cre_org_v2"

    const-string/jumbo v6, "lastData tmpId=%d index=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_5
    iget v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    .line 147
    const/4 v5, 0x2

    iput v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    .line 148
    iget v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setCurrentStep(I)V

    goto :goto_2

    .line 153
    :cond_6
    const-string/jumbo v5, "cre_org_v2"

    const-string/jumbo v6, "lastData null, tmpId=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->g:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 159
    :cond_7
    const-string/jumbo v5, "current_index"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getSupportFragmentManager()Lcn;

    move-result-object v5

    iget v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 161
    .local v0, "curFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->getSupportFragmentManager()Lcn;

    move-result-object v5

    invoke-virtual {v5}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 162
    .local v2, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 178
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v0

    invoke-virtual {v0}, Lfku;->c()V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b()V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    const-string/jumbo v0, "current_index"

    iget v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method
