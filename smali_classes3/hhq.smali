.class public final Lhhq;
.super Ljava/lang/Object;
.source "RuntimeFeatureManager.java"


# static fields
.field private static a:Lhhq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lhhq;

    invoke-direct {v0}, Lhhq;-><init>()V

    sput-object v0, Lhhq;->a:Lhhq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhhq;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lhhq;->a:Lhhq;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3
    .param p0, "featureKeys"    # [Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 49
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 50
    .local v1, "modules":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 51
    const-string/jumbo v2, "dt_feature_switch"

    aput-object v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcmt;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    .end local v0    # "i":I
    .end local v1    # "modules":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Z

    .prologue
    .line 29
    :try_start_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lchx;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 33
    .end local p1    # "df":Z
    :goto_0
    return p1

    .line 31
    .restart local p1    # "df":Z
    :catch_0
    move-exception v0

    .line 32
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "f_lightapp_new_other_app_share"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "f_lightapp_mini_share_im_new_api"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "f_lightapp_nav_show_mini_info"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "f_lightapp_mini_info_page_share_btn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "f_lightapp_mini_http_request_fail_warn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "f_lightapp_mini_new_api_file_4511"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "f_lightapp_new_api_video_4511"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "f_lightapp_e_app_sticky_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "f_lightapp_enable_migrate_prebuilt_hpm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "f_lightapp_uc_core_appllo_url_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "f_lightapp_enable_init_weex_launch_lightapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "f_lightapp_enable_init_wml"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "f_lightapp_miniapp_info_icon_load"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static c()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "f_lightapp_disable_uc_core_degrade"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "f_lightapp_app_error_enable_new_interface"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "f_lightapp_app_enable_fetch_error_view"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "f_lightapp_enable_inject_detector_js"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "f_lightapp_new_api_keyboard_4511x"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "f_lightapp_weex_env_dingtalk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "f_lightapp_disable_weex_error_reporter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "f_lightapp_use_uc_provider_inject_js"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "f_lightapp_enable_anroid_p_use_uc_core"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "f_lightapp_disable_weex_register_keyboard_event"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "f_lightapp_overrideurl_loading_icbu_login"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "f_lightapp_enable_delay_auto_scan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "f_lightapp_enable_multi_progress_degrade_from_m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "f_lightapp_enable_multi_progress_degrade_all"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "f_lightapp_mini_enable_finish_exit_activity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "f_lightapp_weex_enable_set_user_track"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static d()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "hybrid_share_get_top_activity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "hybrid_the_one_new_instance_active"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "hybrid_new_anim_full_active"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "hybrid_disable_update_miniapp_biztype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "hybrid_the_one_package_prepare_active"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "hybrid_set_option_menu_function_not_show_system_menu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "hybrid_enable_statistics_when_gray"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hybrid_debug_instruction_active"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hybrid_e_app_new_api_record"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static e()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "hybrid_enable_check_alive_status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "hybrid_enable_replace_corpid_holder"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "hybrid_enable_rocket_lwp_degraded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "hybrid_nuva_bridge_check_permission_hint"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "hybrid_e_app_record_show_permission_hint"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "hybrid_enable_click_close_keep_alive_v2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "hybrid_dd_web_only_https"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hybrid_enable_set_uc_cache_page"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hybrid_dd_confirm_not_cancelable"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "hybrid_enable_handle_url_before_open_web_page"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "hybrid_new_dispatch_event_fix_share"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "hybrid_web_referer_change"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "hybrid_e_app_new_api_audio"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "hybrid_e_app_new_api_open_app"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "hybrid_enable_mini_anim"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "hybrid_enable_h5_threadpool_provider"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "HYBRID_ENABLE_MINIAPP_ALERT_SYSTEM_MAY_ERROR"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static f()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "hybrid_disable_update_all_eapp_open_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "hybrid_enable_h5_threadpool_provider"

    aput-object v2, v0, v1

    return-object v0
.end method
