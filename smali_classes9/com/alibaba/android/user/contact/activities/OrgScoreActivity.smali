.class public Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgScoreActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/user/contact/view/LineChartView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgTrendItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lezx;

.field private g:Lcom/alibaba/android/user/model/OrgTrendDataObject;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Landroid/support/v4/app/Fragment;

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->l:Z

    .line 293
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->n:I

    .line 295
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->o:I

    .line 297
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->p:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;Lcom/alibaba/android/user/model/OrgTrendDataObject;)Lcom/alibaba/android/user/model/OrgTrendDataObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/OrgTrendDataObject;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g:Lcom/alibaba/android/user/model/OrgTrendDataObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method private a(ILcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "privilegeFrom"    # Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 334
    const-string/jumbo v1, "https://h5.dingtalk.com/base/me/grade.html"

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->k:I

    .line 2319
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 2320
    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v4, "?lwfrom="

    .line 2321
    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2322
    packed-switch p1, :pswitch_data_0

    .line 2361
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_c

    .line 2362
    const-string/jumbo v1, "20151013151639783"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2372
    :cond_0
    :goto_0
    const-string/jumbo v1, "&type="

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v4, "&level="

    .line 2373
    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2375
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "finalUrl":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void

    .line 2324
    .end local v0    # "finalUrl":Ljava/lang/String;
    :pswitch_0
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_1

    .line 2325
    const-string/jumbo v1, "20151013151639783"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2326
    :cond_1
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_2

    .line 2327
    const-string/jumbo v1, "20151013153620243"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2328
    :cond_2
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_3

    .line 2329
    const-string/jumbo v1, "20151013154312588"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2330
    :cond_3
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 2331
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2335
    :pswitch_1
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_4

    .line 2336
    const-string/jumbo v1, "20151013151645459"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2337
    :cond_4
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_5

    .line 2338
    const-string/jumbo v1, "20151013153810924"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2339
    :cond_5
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_6

    .line 2340
    const-string/jumbo v1, "20151013154317483"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 2341
    :cond_6
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_7

    .line 2342
    const-string/jumbo v1, "20151013154330913"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2343
    :cond_7
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 2344
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2348
    :pswitch_2
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_8

    .line 2349
    const-string/jumbo v1, "20151013151649280"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2350
    :cond_8
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_9

    .line 2351
    const-string/jumbo v1, "20151013153816936"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2352
    :cond_9
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_a

    .line 2353
    const-string/jumbo v1, "20151013154324957"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2354
    :cond_a
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_b

    .line 2355
    const-string/jumbo v1, "20151013154336504"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2356
    :cond_b
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 2357
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2363
    :cond_c
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_d

    .line 2364
    const-string/jumbo v1, "20151013153620243"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2365
    :cond_d
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_e

    .line 2366
    const-string/jumbo v1, "20151013154312588"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2367
    :cond_e
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 2368
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 2322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->k:I

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    .line 3254
    sget v0, Lezg$l;->settings_privilege_enterprise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3255
    sget v1, Lezg$l;->team:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3257
    sparse-switch p1, :sswitch_data_0

    .line 3286
    :goto_0
    return-void

    .line 3259
    :sswitch_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3260
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3262
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3270
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3273
    :sswitch_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " V1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3276
    :sswitch_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " V2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3279
    :sswitch_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " V3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3282
    :sswitch_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " V4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3285
    :sswitch_6
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " V5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3288
    :sswitch_7
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " V6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3257
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcb -> :sswitch_4
        0xcc -> :sswitch_5
        0xcd -> :sswitch_6
        0xce -> :sswitch_7
    .end sparse-switch
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 134
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g:Lcom/alibaba/android/user/model/OrgTrendDataObject;

    return-object v0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->f:Lezx;

    if-nez v0, :cond_1

    .line 191
    invoke-static {}, Lfay;->a()Lezx;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->f:Lezx;

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->showLoadingDialog()V

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->f:Lezx;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lezx;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/contact/view/LineChartView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->m:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    .line 3122
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 3128
    :goto_0
    return-void

    .line 3124
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    if-ne v0, v3, :cond_2

    .line 3125
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->manager_org_custom_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3126
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 3127
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 3129
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->k:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget v2, Lezg$j;->fragment_org_manager_score:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "display_enterprise_oid"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h:J

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "bread_node_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->i:Ljava/lang/String;

    .line 95
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    :goto_0
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c:Ljava/util/List;

    .line 97
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 98
    .local v0, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 100
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 104
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->managePermission:Z

    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->l:Z

    .line 106
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->i:Ljava/lang/String;

    .line 1139
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1140
    new-instance v4, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    invoke-direct {v4}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->m:Landroid/support/v4/app/Fragment;

    .line 1141
    sget v4, Lezg$h;->fragment_circle:I

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->m:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1142
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 1145
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v4

    .line 1147
    sget v2, Lezg$h;->line:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/view/LineChartView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    .line 1148
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/contact/view/LineChartView;->setScreenWidth(I)V

    .line 1149
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    sget v4, Lezg$g;->line_score_selected_blue:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/contact/view/LineChartView;->setSelectDrawable(I)V

    .line 1150
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    sget v4, Lezg$g;->line_score_unselected_blue:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/contact/view/LineChartView;->setUnselectDrawable(I)V

    .line 1151
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->line_white_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/contact/view/LineChartView;->setLineColor(I)V

    .line 1152
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/contact/view/LineChartView;->setXFontColor(I)V

    .line 1153
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d:Lcom/alibaba/android/user/contact/view/LineChartView;

    const/4 v4, 0x3

    new-array v4, v4, [I

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->line_area_top_color_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v4, v3

    const/4 v3, 0x1

    .line 1154
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->line_area_down_color_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v4, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->pure_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v4, v3

    .line 1153
    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/contact/view/LineChartView;->setAreaColors([I)V

    .line 1156
    sget v2, Lezg$h;->btn_add_score:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d()V

    .line 116
    return-void

    .line 96
    .end local v0    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v0    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    move v2, v3

    .line 104
    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 301
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 302
    sget v2, Lezg$l;->common_edit:I

    invoke-interface {p1, v5, v6, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v4, Lezg$l;->icon_act_open:I

    .line 303
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 304
    .local v0, "menuItemEdit":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 306
    .end local v0    # "menuItemEdit":Landroid/view/MenuItem;
    :cond_0
    const/4 v2, 0x3

    sget v3, Lezg$l;->more:I

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v4, Lezg$l;->icon_more:I

    .line 307
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    move-result-object v1

    .line 308
    .local v1, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 309
    const/4 v2, 0x4

    sget v3, Lezg$l;->efficiency:I

    invoke-interface {v1, v5, v2, v5, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 311
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1343
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    :cond_1
    const/4 v2, -0x1

    .line 1348
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1349
    new-array v4, v3, [Ljava/lang/String;

    .line 1350
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1352
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 1353
    if-eqz v5, :cond_5

    .line 1354
    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    move v0, v1

    .line 1357
    :goto_2
    iget-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 1350
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 1361
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 1362
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    sget v1, Lezg$l;->choose_from_enterprise:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1363
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V

    invoke-virtual {v0, v4, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1380
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 321
    :pswitch_2
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    const/4 v0, 0x2

    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a(ILcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;)V

    goto :goto_0

    .line 325
    :cond_3
    const/4 v0, 0x3

    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a(ILcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    .line 316
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
