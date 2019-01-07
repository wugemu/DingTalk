.class public Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MyProfileActivity.java"


# static fields
.field public static final a:I

.field private static final x:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private n:Landroid/os/Handler;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

.field private s:Landroid/widget/LinearLayout;

.field private t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private u:Lcom/alibaba/android/user/model/SWPersonObject;

.field private v:Landroid/widget/TextView;

.field private w:Z

.field private y:Landroid/widget/LinearLayout;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$i;->name_max_limit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a:I

    .line 143
    const-class v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->z:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/user/model/SWPersonObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->u:Lcom/alibaba/android/user/model/SWPersonObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/model/SWPersonObject;)Lcom/alibaba/android/user/model/SWPersonObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/SWPersonObject;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->u:Lcom/alibaba/android/user/model/SWPersonObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->r:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/alibaba/android/user/model/SWPersonObject;)V
    .locals 4
    .param p1, "swPersonObject"    # Lcom/alibaba/android/user/model/SWPersonObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 300
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/user/model/SWPersonObject;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_1
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    const-string/jumbo v2, "getPersonalSummary or url is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;III)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v4, 0x1

    .line 116
    .line 11358
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 11359
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 11360
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 11361
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 11363
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 11365
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11366
    sget v3, Lezg$l;->dt_setting_profile_birthday_check:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Ljava/util/Calendar;)V

    .line 11367
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$30;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$30;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 11406
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 11410
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    .prologue
    .line 116
    .line 8657
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/manage_org.html"

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$7;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 116
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->r:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/model/SWPersonObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/SWPersonObject;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/model/SWPersonObject;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 465
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4472
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$2;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4514
    invoke-static {}, Lfah;->a()Lezo;

    move-result-object v1

    invoke-interface {v1, v0}, Lezo;->a(Lcma;)V

    .line 468
    :cond_0
    return-void
.end method

.method private d()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 521
    .line 4973
    new-instance v6, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->o:Landroid/content/BroadcastReceiver;

    .line 5166
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 5167
    const-string/jumbo v6, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5168
    const-string/jumbo v6, "selector_region"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5169
    const-string/jumbo v6, "com.workapp.did.set.dingtalk.id"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5170
    const-string/jumbo v6, "intent_key_certify_submitted"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5171
    const-string/jumbo v6, "com.alibaba.dingtalk.runtimebase.WORK_MOBILE_UPDATE"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5172
    const-string/jumbo v6, "dingCardSettingUpdated"

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5174
    const-string/jumbo v6, "EVENTBUTLER"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-interface {v6, v8, p0, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 526
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 528
    .local v0, "fragmentManager":Lcn;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcn;->g()Z

    move-result v6

    if-nez v6, :cond_14

    .line 529
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 531
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v6, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-direct {v6}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    .line 532
    sget v6, Lezg$h;->personal_info_fragment:I

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-virtual {v1, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 533
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 534
    invoke-virtual {v0}, Lcn;->b()Z

    .line 535
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->g()V

    .line 536
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 537
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 539
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_16

    .line 540
    iget v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->z:I

    .line 541
    .local v3, "level":I
    iget v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->z:I

    .line 542
    .local v4, "mainOrgLevel":I
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->e:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 544
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->f:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->g:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_13

    .line 557
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 558
    .local v5, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v5, :cond_3

    .line 561
    if-nez v2, :cond_5

    const/4 v6, 0x1

    move v7, v6

    :goto_2
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 562
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_6

    const/4 v6, 0x1

    move v8, v6

    .line 5583
    :goto_3
    new-instance v9, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;

    invoke-direct {v9, v5}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 5584
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v10, Lezg$j;->layout_item_organization:I

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 5585
    new-instance v6, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4;

    invoke-direct {v6, p0, v5}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5597
    sget v6, Lezg$h;->tv_tag_main_org:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iget-boolean v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5598
    sget v6, Lezg$h;->cell_title:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5599
    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgLogo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5600
    sget v6, Lezg$h;->cell_left_avatar:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v11, 0x0

    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getOrgLogo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5602
    :cond_1
    sget v6, Lezg$h;->tv_org_manage:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 5603
    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->canManage()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5604
    new-instance v6, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$5;

    invoke-direct {v6, p0, v9}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$5;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5610
    sget v6, Lezg$h;->top_divider:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v7, :cond_9

    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5611
    sget v6, Lezg$h;->bottom_divider:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v8, :cond_a

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5612
    sget v6, Lezg$h;->cell_divider:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v8, :cond_b

    const/16 v6, 0x8

    :goto_8
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5615
    sget v6, Lezg$h;->tv_org_auth:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 5616
    invoke-virtual {v9}, Lcom/alibaba/android/user/contact/homepage/OrganizationGroup;->getAuthLevel()I

    move-result v7

    .line 5617
    invoke-static {}, Lcms;->h()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 5618
    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5619
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 5620
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5621
    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 5622
    sget v8, Lezg$g;->icon_advanced_certify:I

    invoke-static {p0, v8}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5646
    :goto_9
    sget v6, Lezg$h;->fl_org_auth:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v8, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;

    invoke-direct {v8, p0, v7, v9}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$6;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;ILcom/alibaba/android/user/contact/homepage/OrganizationGroup;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5653
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 564
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_3

    .line 565
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    if-ge v3, v6, :cond_2

    .line 566
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v3, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    .line 568
    :cond_2
    iget-boolean v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v6, :cond_3

    .line 569
    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    .line 556
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 547
    .end local v2    # "index":I
    .end local v5    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->f:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->g:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->f:Landroid/view/View;

    new-instance v7, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$3;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$3;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 561
    .restart local v2    # "index":I
    .restart local v5    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_5
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_2

    .line 562
    :cond_6
    const/4 v6, 0x0

    move v8, v6

    goto/16 :goto_3

    .line 5597
    :cond_7
    const/16 v6, 0x8

    goto/16 :goto_4

    .line 5603
    :cond_8
    const/16 v6, 0x8

    goto/16 :goto_5

    .line 5610
    :cond_9
    const/16 v6, 0x8

    goto/16 :goto_6

    .line 5611
    :cond_a
    const/16 v6, 0x8

    goto/16 :goto_7

    .line 5612
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 5623
    :cond_c
    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 5624
    sget v8, Lezg$g;->icon_middle_certify:I

    invoke-static {p0, v8}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 5625
    :cond_d
    const/4 v8, 0x3

    if-ne v7, v8, :cond_e

    .line 5626
    sget v8, Lezg$g;->icon_primary_certify:I

    invoke-static {p0, v8}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 5628
    :cond_e
    sget v8, Lezg$g;->icon_non_certify:I

    invoke-static {p0, v8}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 5631
    :cond_f
    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 5632
    sget v8, Lezg$l;->advanced_certification:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 5633
    sget v8, Lezg$g;->bg_org_profile_auth_level_advanced:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 5634
    :cond_10
    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    .line 5635
    sget v8, Lezg$l;->base_certification:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 5636
    sget v8, Lezg$g;->bg_org_profile_auth_level_middle:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 5637
    :cond_11
    const/4 v8, 0x3

    if-ne v7, v8, :cond_12

    .line 5638
    sget v8, Lezg$l;->user_org_primary_certification:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 5639
    sget v8, Lezg$g;->bg_org_profile_auth_level_basic:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 5641
    :cond_12
    sget v8, Lezg$l;->dt_orgnization_auth_level_unauth:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 5642
    sget v8, Lezg$g;->bg_org_profile_auth_level_no_auth:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5643
    sget v8, Lezg$g;->icon_org_auth_level:I

    invoke-static {p0, v8}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v11, 0x0

    sget v12, Lezg$g;->contact_icon_auth_none_arrow:I

    invoke-static {p0, v12}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v6, v8, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 574
    .end local v5    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_13
    iget v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->z:I

    if-eq v4, v6, :cond_15

    .end local v4    # "mainOrgLevel":I
    :goto_a
    iput v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->z:I

    .line 575
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->supportInvalidateOptionsMenu()V

    .line 580
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    .end local v2    # "index":I
    .end local v3    # "level":I
    :cond_14
    :goto_b
    return-void

    .restart local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    .restart local v2    # "index":I
    .restart local v3    # "level":I
    .restart local v4    # "mainOrgLevel":I
    :cond_15
    move v4, v3

    .line 574
    goto :goto_a

    .line 577
    .end local v2    # "index":I
    .end local v3    # "level":I
    .end local v4    # "mainOrgLevel":I
    :cond_16
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->e:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->d()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method private g()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 779
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    .line 781
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyAvatar:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 782
    .local v3, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->user_profile_avator:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 783
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 784
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    .line 785
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$10;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$10;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 797
    iget-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 798
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$11;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    .line 816
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 820
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->user_profile_nick:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 821
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 822
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$13;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$13;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 828
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 832
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->user_profile_mobile:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 833
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 834
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$14;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$14;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 841
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 845
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyWorkPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 846
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$l;->dt_contact_work_mobile_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 847
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 848
    const-string/jumbo v4, "https://h5.dingtalk.com/phone_dingcard/index.html?dingCardFrom=ding_card_my_info_icon#/dingcardrouterpage"

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    .line 849
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$15;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$15;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 855
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c()Ljava/util/List;

    move-result-object v2

    .line 860
    .local v2, "orgAppList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 861
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 862
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->user_profile_dingding_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 863
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    if-eqz v4, :cond_4

    .line 864
    sget v4, Lezg$l;->user_profile_dingding_hint:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 865
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$16;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$16;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 874
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_2
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyQrCodeInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 879
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->qr_code_card_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 880
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$17;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$17;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 891
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 895
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->user_profile_gender:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 896
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->gender:Ljava/lang/String;

    invoke-static {v4}, Lfvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 897
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$18;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$18;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 903
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 907
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->user_profile_birthday:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 908
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dob:Ljava/util/Date;

    invoke-static {v4}, Lfvj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lezg$l;->user_profile_dingding_hint:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "content":Ljava/lang/String;
    :cond_3
    iput-object v1, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 910
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$19;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$19;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 917
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 921
    .restart local v3    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->user_profile_city:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 922
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->city:Ljava/lang/String;

    .line 923
    .local v0, "city":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v4, :cond_5

    .line 924
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->city:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    :goto_1
    iput-object v0, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 929
    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$20;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$20;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 943
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->p:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->a(Ljava/util/List;)V

    .line 946
    return-void

    .line 872
    .end local v0    # "city":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 5949
    .restart local v0    # "city":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->x:Ljava/lang/String;

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$21;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    const/4 v2, 0x1

    .line 116
    .line 8768
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8769
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8770
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8771
    const-string/jumbo v1, "album_need_preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8772
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    .line 9704
    new-instance v0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9705
    new-instance v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;)V

    .line 10112
    iput-object v1, v0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->a:Landroid/view/View$OnClickListener;

    .line 9760
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->setCanceledOnTouchOutside(Z)V

    .line 9761
    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->show()V

    .line 116
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->g()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    .line 10676
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10680
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 10681
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    sget v1, Lezg$l;->choose_avatar_dlg_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10682
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    sget v1, Lezg$c;->choose_avatar_dlg_items:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$8;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10697
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->A:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 116
    :cond_1
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    const/4 v4, 0x0

    .line 116
    .line 11182
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 11183
    sget v1, Lezg$l;->my_profile_nick:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 11184
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11185
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 11186
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 11187
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 11188
    new-instance v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$24;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$24;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11205
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11206
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11208
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11209
    sget v2, Lezg$l;->my_profile_nick:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11210
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11211
    sget v2, Lezg$l;->cancel:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11212
    sget v2, Lezg$l;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11266
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11267
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 11269
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$26;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$26;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    .line 11281
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11282
    sget v0, Lezg$l;->user_profile_gender:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11283
    const/4 v0, -0x1

    .line 11284
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->gender:Ljava/lang/String;

    invoke-static {v2}, Lfvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11285
    sget v3, Lezg$l;->profile_male:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11286
    const/4 v0, 0x0

    .line 11290
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->gender:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->q:Ljava/lang/String;

    .line 11291
    sget v2, Lezg$c;->gender:I

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$27;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$27;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11301
    sget v0, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$28;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11334
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 116
    return-void

    .line 11287
    :cond_1
    sget v3, Lezg$l;->profile_female:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    const/4 v6, 0x1

    .line 116
    .line 11341
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 11342
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dob:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 11343
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dob:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11345
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$29;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$29;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 11351
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 11352
    invoke-virtual {v0, v6}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 11353
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 116
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->c()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    .line 11513
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 11514
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 11515
    const-string/jumbo v0, ""

    .line 11516
    if-eqz v1, :cond_0

    .line 11517
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

    .line 11520
    :goto_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/pwd.html"

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$34;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$34;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 116
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic v(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 116
    .line 11530
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$35;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$35;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 11547
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    .line 11548
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lezt;->b(Ljava/lang/Long;Lcma;)V

    .line 11540
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->finish()V

    .line 116
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1474
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1475
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 6480
    invoke-static {}, Lfaf;->b()Lezm;

    sget-object v2, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 6481
    if-eqz v0, :cond_0

    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6482
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6484
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

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$32;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$32;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v1, v0}, Lezm;->a(Ljava/lang/String;Lcma;)V

    .line 1477
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    sget v0, Lezg$j;->activity_my_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->setContentView(I)V

    .line 2162
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2164
    if-eqz v3, :cond_0

    .line 2168
    const-string/jumbo v0, "intent_key_sw_person_data"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/SWPersonObject;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->u:Lcom/alibaba/android/user/model/SWPersonObject;

    .line 2169
    const-string/jumbo v0, "intent_key_mine_new_version"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->w:Z

    .line 2178
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->n:Landroid/os/Handler;

    .line 2179
    sget v0, Lezg$l;->dt_contact_my_info_page_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->setTitle(I)V

    .line 2182
    sget v0, Lezg$h;->user_personal_certify:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2183
    sget v0, Lezg$h;->certify_info_content_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->c:Landroid/widget/TextView;

    .line 2184
    sget v0, Lezg$h;->certify_info_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->d:Landroid/widget/ImageView;

    .line 2185
    sget v0, Lezg$h;->rl_certify_item:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2191
    sget v0, Lezg$h;->org_info_fragment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->y:Landroid/widget/LinearLayout;

    .line 2192
    sget v0, Lezg$h;->tv_org_info_tip_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->e:Landroid/view/View;

    .line 2193
    sget v0, Lezg$h;->tv_org_info_change_main_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->f:Landroid/view/View;

    .line 2194
    sget v0, Lezg$h;->tv_org_info_tip_arrow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->g:Landroid/view/View;

    .line 2196
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v3, "invoice_folder"

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    .line 2198
    if-eqz v0, :cond_1

    .line 2199
    sget v0, Lezg$h;->rl_my_invoice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2200
    sget v0, Lezg$h;->rl_my_invoice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$12;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2367
    :cond_1
    invoke-static {}, Lfag;->a()Lezn;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$40;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v3, v0}, Lezn;->a(Lcma;)V

    .line 2210
    sget v0, Lezg$h;->ll_work_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->s:Landroid/widget/LinearLayout;

    .line 2211
    sget v0, Lezg$h;->tv_work_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->v:Landroid/widget/TextView;

    .line 2212
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->s:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$23;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$23;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2218
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->w:Z

    if-eqz v0, :cond_2

    .line 3281
    sget v0, Lezg$h;->tv_ding_record:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->l:Landroid/widget/TextView;

    .line 3282
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3283
    sget v0, Lezg$h;->ll_ding_work_record:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j:Landroid/view/View;

    .line 3284
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3285
    sget v0, Lezg$h;->tv_work_record_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k:Landroid/widget/TextView;

    .line 3287
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$37;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$37;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3316
    sget v0, Lezg$h;->rl_dingcard:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->h:Landroid/view/View;

    .line 3318
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->n()Z

    move-result v0

    .line 3320
    if-nez v0, :cond_4

    .line 3321
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->h:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4245
    :goto_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4249
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->u:Lcom/alibaba/android/user/model/SWPersonObject;

    if-eqz v0, :cond_5

    .line 4250
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->u:Lcom/alibaba/android/user/model/SWPersonObject;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/model/SWPersonObject;)V

    .line 4251
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 2182
    goto/16 :goto_0

    .line 3325
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->h:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 3326
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->h:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$38;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3337
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->m()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->r:Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    .line 3340
    sget v0, Lezg$h;->dingcard_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 3341
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->A:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$39;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$39;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    goto :goto_1

    .line 4254
    :cond_5
    new-instance v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$33;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 4276
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4277
    invoke-static {v0}, Lfvz;->a(Lcma;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-static {p0, v2, v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 408
    :goto_0
    return v1

    .line 404
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    sget v1, Lezg$l;->dt_user_mine_rights:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 406
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 408
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1566
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 1567
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 1568
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 414
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 415
    .local v0, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->userRightsLevel:I

    .line 4426
    iget v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->z:I

    sget-object v3, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(IILcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;)Ljava/lang/String;

    move-result-object v1

    .line 4427
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .end local v0    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 1553
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 7434
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 7435
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v0, :cond_0

    .line 7436
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

    .line 7437
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    const-class v7, Lcma;

    invoke-interface {v0, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 7436
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    .line 7461
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->c()V

    .line 1555
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->c()V

    .line 8226
    invoke-static {}, Lfuv;->a()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    .line 8227
    if-eqz v0, :cond_2

    .line 8228
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->icon:Ljava/lang/String;

    .line 8229
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->status:Ljava/lang/String;

    .line 8230
    invoke-static {v1}, Lcsy;->a(Ljava/lang/String;)I

    move-result v1

    .line 8231
    if-lez v1, :cond_1

    .line 8232
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 8236
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8238
    :goto_2
    return-void

    .line 7459
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->d()V

    goto :goto_0

    .line 8234
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 8239
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 8240
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->v:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_ownness_input:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
