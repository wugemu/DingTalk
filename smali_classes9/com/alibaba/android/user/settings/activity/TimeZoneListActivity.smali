.class public Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "TimeZoneListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 1114
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->showLoadingDialog()V

    .line 1115
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "user_settings"

    const-string/jumbo v2, "timezone_id"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    new-instance v5, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)V

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 41
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->c:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lezg$j;->activity_setting_timezone:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->setContentView(I)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_setting_timezone:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 55
    invoke-static {}, Lfwx;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->d:Ljava/lang/String;

    .line 57
    sget v0, Lezg$h;->timezone_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b:Landroid/widget/ListView;

    .line 58
    new-instance v0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;-><init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->c:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->c:Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;->showLoadingDialog()V

    .line 75
    invoke-static {}, Lfan;->a()Lezr;

    move-result-object v1

    const-string/jumbo v0, "timezone_etag"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 76
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/TimeZoneListActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 75
    invoke-interface {v1, v2, v0}, Lezr;->a(Ljava/lang/String;Lcma;)V

    .line 111
    return-void
.end method
