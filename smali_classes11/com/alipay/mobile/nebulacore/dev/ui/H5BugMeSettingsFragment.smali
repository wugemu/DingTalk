.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "H5BugMeSettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5BugMeSettingsFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initSummary(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 90
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 91
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 92
    .local v0, "group":Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->initSummary(Landroid/preference/Preference;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "group":Landroid/preference/PreferenceGroup;
    .end local v1    # "index":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->updateSummary(Landroid/preference/Preference;)V

    .line 98
    :cond_1
    return-void
.end method

.method private updateSummary(Landroid/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 102
    check-cast v1, Landroid/preference/ListPreference;

    .line 103
    .local v1, "listPref":Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    .end local v1    # "listPref":Landroid/preference/ListPreference;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    instance-of v3, p1, Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 105
    check-cast v0, Landroid/preference/EditTextPreference;

    .line 106
    .local v0, "editTextPref":Landroid/preference/EditTextPreference;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const-string/jumbo v3, "******"

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    .end local v0    # "editTextPref":Landroid/preference/EditTextPreference;
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    instance-of v3, p1, Landroid/preference/MultiSelectListPreference;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 114
    check-cast v0, Landroid/preference/EditTextPreference;

    .line 115
    .restart local v0    # "editTextPref":Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v3, "h5devH5App"

    const-string/jumbo v4, "h5devType"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    sget v3, Lcom/alipay/mobile/nebula/R$xml;->h5_dev_h5app_setting:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->addPreferencesFromResource(I)V

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->initSummary(Landroid/preference/Preference;)V

    .line 42
    :try_start_0
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-nez v3, :cond_1

    .line 44
    const-string/jumbo v3, "h5_bugme_advance_category"

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 45
    .local v1, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "category":Landroid/preference/PreferenceCategory;
    :cond_1
    :goto_1
    return-void

    .line 36
    :cond_2
    if-eqz v0, :cond_0

    const-string/jumbo v3, "h5devBugMe"

    const-string/jumbo v4, "h5devType"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    sget v3, Lcom/alipay/mobile/nebula/R$xml;->h5_bugme_setting:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5BugMeSettingsFragment"

    const-string/jumbo v4, "Remove debug setting"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->updateSummary(Landroid/preference/Preference;)V

    .line 76
    const-string/jumbo v1, "h5_jsapi_permission"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    const-string/jumbo v1, "\u5173\u95ed\u6743\u9650\u63a7\u5236\u53ea\u5728\u6d4b\u8bd5\u5305\u5185\u751f\u6548\uff0c\u7ebf\u4e0a\u5305\u4f9d\u65e7\u4f1a\u6709\u6743\u9650\u63a7\u5236\uff0c\u8bf7\u6ce8\u610f\u4e0a\u7ebf\u540e\u9a8c\u8bc1\u6743\u9650\uff0c\u5728\u6743\u9650\u57df\u540d\u5185\u8c03\u7528"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 79
    const-string/jumbo v1, "\u786e\u8ba4"

    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 85
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .line 87
    .end local v0    # "h5Dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    :cond_0
    return-void
.end method
