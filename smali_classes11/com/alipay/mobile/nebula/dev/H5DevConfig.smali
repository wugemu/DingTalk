.class public Lcom/alipay/mobile/nebula/dev/H5DevConfig;
.super Ljava/lang/Object;
.source "H5DevConfig.java"


# static fields
.field public static final BATCHED_SERVER:Ljava/lang/String; = "https://hpmweb.alipay.com/report/android/batch"

.field public static final DEFAULT_SERVER:Ljava/lang/String; = "https://hpmweb.alipay.com/report/android"

.field public static final H5_ALIPAY_NETWORK:Ljava/lang/String; = "h5_alipay_network"

.field public static final H5_BUG_ME_DEBUG_SWITCH:Ljava/lang/String; = "h5_bug_me_debug_switch"

.field public static final H5_BUG_ME_DEBUG_SWITCH_KEEP:Ljava/lang/String; = "h5_bug_me_debug_switch_keep"

.field public static final H5_BUG_ME_DOM_DEBUG:Ljava/lang/String; = "h5_bug_me_dom_debug"

.field public static final H5_BUG_ME_FORCE_NO_DUMP:Ljava/lang/String; = "h5_bug_me_force_no_dump"

.field public static final H5_BUG_ME_JS_INJECTOR:Ljava/lang/String; = "h5_bug_me_js_injector"

.field public static final H5_BUG_ME_SHOW_ICON:Ljava/lang/String; = "h5_bug_me_show_icon"

.field public static final H5_BUG_ME_SUPER_USER:Ljava/lang/String; = "h5_bug_me_super_user"

.field public static final H5_BUG_ME_WIRED_DEBUG:Ljava/lang/String; = "h5_bug_me_wired_debug"

.field public static final H5_DELETE_UNUSED_APP_PACKAGE:Ljava/lang/String; = "h5_delete_unused_app_package"

.field public static H5_DEV_URL:Ljava/lang/String; = null

.field public static final H5_JSAPI_PERMISSION:Ljava/lang/String; = "h5_jsapi_permission"

.field public static final H5_LAUNCH_URL:Ljava/lang/String; = "h5_param_url"

.field public static H5_LOAD_JS:Ljava/lang/String; = null

.field public static final H5_POST_EVENT:Ljava/lang/String; = "h5_post_event"

.field public static final H5_PREFER_APP_LIST:Ljava/lang/String; = "h5_prefer_app_list"

.field public static final H5_READ_SNAPSHOT:Ljava/lang/String; = "h5_read_snapshot"

.field public static final H5_READ_USE_WEBVIEW_CONFIG:Ljava/lang/String; = "h5_read_use_webview_config"

.field public static final H5_TRACE_DEBUG_SWITCH:Ljava/lang/String; = "h5_trace_debug_switch"

.field public static final H5_UPLOAD_ALL_APP_INFO:Ljava/lang/String; = "h5_upload_all_app_info"

.field public static final H5_USE_PRESET_PKG_INFO:Ljava/lang/String; = "h5_use_preset_pkg_info"

.field public static final H5_USE_UC_WEBVIEW:Ljava/lang/String; = "h5_use_uc_webview"

.field private static final TAG:Ljava/lang/String; = "H5DevConfig"

.field public static final h5_not_use_tiny_permission:Ljava/lang/String; = "h5_not_use_tiny_permission"

.field public static final h5_read_use_dev_app_config:Ljava/lang/String; = "h5_read_use_dev_app_config"

.field public static final h5_read_use_dev_db:Ljava/lang/String; = "h5_read_use_dev_db"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->H5_LOAD_JS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugSwitch(ZZZZZ)V
    .locals 6
    .param p0, "debugSwitch"    # Z
    .param p1, "domDebug"    # Z
    .param p2, "wiredDebug"    # Z
    .param p3, "showIcon"    # Z
    .param p4, "performanceTrace"    # Z

    .prologue
    .line 125
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 126
    const-string/jumbo v3, "H5DevConfig"

    const-string/jumbo v4, "h5DevGlobal.getContext is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 132
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "H5DevConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "debugSwitch:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v3, "h5_bug_me_debug_switch"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 136
    .local v0, "previewsSwitch":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_debug_switch"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_dom_debug"

    .line 137
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_wired_debug"

    .line 138
    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_show_icon"

    .line 139
    invoke-interface {v3, v4, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_trace_debug_switch"

    .line 140
    invoke-interface {v3, v4, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 141
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    if-eq v0, p0, :cond_0

    .line 144
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 145
    .local v1, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->onBugMeSwitched(Z)V

    goto :goto_0
.end method

.method public static getBooleanConfig(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Z

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    .end local p1    # "df":Z
    :goto_0
    return p1

    .line 82
    .restart local p1    # "df":Z
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 85
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    .end local p1    # "df":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 94
    .restart local p1    # "df":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 97
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static resetBugMeSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 154
    const-string/jumbo v3, "H5DevConfig"

    const-string/jumbo v4, "h5DevGlobal.getContext is null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v0, "previewsSwitch":Z
    .local v2, "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 158
    .end local v0    # "previewsSwitch":Z
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 160
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "H5DevConfig"

    const-string/jumbo v4, "resetBugMeSettings"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "h5_bug_me_debug_switch"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 163
    .restart local v0    # "previewsSwitch":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_debug_switch"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_dom_debug"

    .line 164
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_show_icon"

    .line 165
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_wired_debug"

    .line 166
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_debug_switch_keep"

    .line 167
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "h5_bug_me_super_user"

    .line 168
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 169
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 173
    .local v1, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->onBugMeSwitched(Z)V

    goto :goto_0
.end method

.method public static setBooleanConfig(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    const-string/jumbo v1, "H5DevConfig"

    const-string/jumbo v2, "h5DevGlobal.getContext is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setStringConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    const-string/jumbo v1, "H5DevConfig"

    const-string/jumbo v2, "h5DevGlobal.getContext is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
