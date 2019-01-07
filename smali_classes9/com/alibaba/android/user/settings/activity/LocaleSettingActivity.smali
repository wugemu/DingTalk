.class public Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "LocaleSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v3, Lezg$j;->activity_settings_locale:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->setContentView(I)V

    .line 51
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lezg$l;->title_setting_locale:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 57
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "pref_locale"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->b:Ljava/lang/String;

    .line 59
    sget v3, Lezg$h;->locale_list:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->d:Landroid/widget/ListView;

    .line 60
    new-instance v3, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;-><init>(Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->e:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;

    .line 61
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->d:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->e:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->d:Landroid/widget/ListView;

    new-instance v4, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    sget v3, Lezg$c;->locale_map:I

    invoke-static {v3}, Lcpt;->a(I)Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->a:Ljava/util/LinkedHashMap;

    .line 85
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->a:Ljava/util/LinkedHashMap;

    const-string/jumbo v4, ""

    sget v5, Lezg$l;->locale_auto:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v3

    const-string/jumbo v4, "general_open_vi"

    .line 1217
    invoke-virtual {v3, v4, v6, v6}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 88
    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->a:Ljava/util/LinkedHashMap;

    const-string/jumbo v4, "vi_VN"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "id":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->e:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;

    .line 2117
    iput-object v1, v3, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->a:Ljava/util/List;

    .line 2118
    invoke-virtual {v3}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$a;->notifyDataSetChanged()V

    .line 97
    return-void
.end method
