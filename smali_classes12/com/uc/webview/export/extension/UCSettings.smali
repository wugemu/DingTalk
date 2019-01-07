.class public abstract Lcom/uc/webview/export/extension/UCSettings;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final CDKEY_MAX_REQ_PER_CLIENT:Ljava/lang/String; = "max_req_per_client"

.field public static final CDKEY_MAX_REQ_PER_HOST:Ljava/lang/String; = "max_req_per_host"

.field public static final CD_RESOURCE_FOCUS_AUTO_POPUP_INPUT_WHITELIST:Ljava/lang/String; = "u4_focus_auto_popup_input_list"

.field public static final CD_RESOURCE_STAT_FILTER_LIST:Ljava/lang/String; = "stat_filter_list"

.field public static FORCE_USER_SCALABLE_DEFAULT:I = 0x0

.field public static FORCE_USER_SCALABLE_DISABLE:I = 0x0

.field public static FORCE_USER_SCALABLE_ENABLE:I = 0x0

.field public static final FORM_SAVE_TYPE_AUTO:I = 0x1

.field public static final FORM_SAVE_TYPE_NO:I = 0x2

.field public static final FORM_SAVE_TYPE_PROMPT:I = 0x0

.field public static final IMAGE_QUALITY_FULL_COLOR:I = 0x3

.field public static final IMAGE_QUALITY_LOW_COLOR:I = 0x1

.field public static final IMAGE_QUALITY_NO_IMAGE:I = 0x0

.field public static final IMAGE_QUALITY_STANDARD:I = 0x2

.field public static final KEY_ADBLOCK_WHITE_LIST:Ljava/lang/String; = "resadwhitelist"

.field public static final KEY_DISABLE_ACCELERATE_CANVAS:Ljava/lang/String; = "DisableAccelerateCanvas"

.field public static final KEY_DISABLE_FLOAT_VIDEO_VIEW:Ljava/lang/String; = "video_fixed_sw_hostlist"

.field public static final KEY_DISABLE_VIDEO_RESUME:Ljava/lang/String; = "disable_video_resume"

.field public static final KEY_DONOT_PAUSE_AFTER_EXIT_VIDEO_FULLSCREEN:Ljava/lang/String; = "crsp_npef"

.field public static final KEY_DONOT_PAUSE_AFTER_SHOW_MODE_CHANGED:Ljava/lang/String; = "crsp_npsmc"

.field public static final KEY_ENABLE_VIDEO_AUTO_PLAY_LIST:Ljava/lang/String; = "video_play_gesture_whitelist"

.field public static final KEY_NIGHT_MODE_COLOR:Ljava/lang/String; = "NightModeColor"

.field public static final KEY_NO_DISPLAY_WANING_WHEN_PLAY_MEDIA_ON_MOBILE_NETWORK:Ljava/lang/String; = "crsp_nwomn"

.field public static final KEY_SWS_WHITE_LIST:Ljava/lang/String; = "sws_white_list"

.field public static final KEY_USE_RAW_VIDEO_CONTROLS:Ljava/lang/String; = "u4xr_video_st_list"

.field public static final KEY_VIDEO_ENTER_VIEW_FULLSCREEN_ONLY:Ljava/lang/String; = "crsp_fsa_bl"

.field public static final KEY_VIDEO_SUPPORT_RAW_CONTROLS_ATTR:Ljava/lang/String; = "crsp_sp_rc"

.field public static final KEY_WEBAUDIO_DISABLE_DEFAULT_DECODER:Ljava/lang/String; = "crsp_wddd"

.field public static final LAYOUT_MODE_ADAPT:I = 0x2

.field public static final LAYOUT_MODE_ZOOM:I = 0x1

.field public static final PREREAD_TYPE_NON:I = 0x0

.field public static final PREREAD_TYPE_WAP:I = 0x1

.field public static final PREREAD_TYPE_WAP_AND_WEB:I = 0x3

.field public static final PREREAD_TYPE_WEB:I = 0x2

.field public static final SDKUUID:Ljava/lang/String; = "SDKUUID"

.field public static final THEME_BLUE:I = 0x3

.field public static final THEME_DEFAULT:I = 0x0

.field public static final THEME_GREEN:I = 0x1

.field public static final THEME_GREY:I = 0x4

.field public static final THEME_PINK:I = 0x2

.field public static final THEME_TRANSPARENT:I = -0x1

.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    sput-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "u4xr_video_st_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "crsp_sp_rc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "crsp_fsa_bl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "video_fixed_sw_hostlist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "video_play_gesture_whitelist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "resadwhitelist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "stat_filter_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "NightModeColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    const-string/jumbo v1, "u4_focus_auto_popup_input_list"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/extension/UCSettings;->FORCE_USER_SCALABLE_DEFAULT:I

    .line 224
    const/4 v0, 0x1

    sput v0, Lcom/uc/webview/export/extension/UCSettings;->FORCE_USER_SCALABLE_ENABLE:I

    .line 225
    const/4 v0, 0x2

    sput v0, Lcom/uc/webview/export/extension/UCSettings;->FORCE_USER_SCALABLE_DISABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableNetwork(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 831
    const-string/jumbo v0, "UCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "background netoff current value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 833
    if-eqz v0, :cond_0

    .line 834
    const-string/jumbo v1, "OFFNET_ON"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 835
    :cond_0
    return-void
.end method

.method public static donotPauseAfterExitVideoFullScreen()V
    .locals 5

    .prologue
    .line 152
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "crsp_npef"

    const-string/jumbo v4, "1"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public static enableUCParam()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 867
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 868
    if-eqz v0, :cond_0

    .line 869
    const-string/jumbo v1, "SDKUCParam"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 871
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static enableUCVideoViewFullscreen()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 817
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 818
    if-eqz v0, :cond_0

    .line 819
    const-string/jumbo v1, "enable_uc_videoview_fullscreen"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 821
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getEnableAllResourceCallBack()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 572
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 573
    if-eqz v0, :cond_0

    .line 574
    const-string/jumbo v1, "enable_allresponse_callback"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 576
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getEnableRequestIntercept()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 558
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 559
    if-eqz v0, :cond_0

    .line 560
    const-string/jumbo v1, "enable_request_intercept"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 562
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getFormSaveType()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 787
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 788
    if-eqz v0, :cond_0

    .line 789
    const-string/jumbo v1, "FormSave"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 791
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getGlobalBoolValue(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 945
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 946
    if-eqz v0, :cond_0

    .line 947
    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 949
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getImageQuality()I
    .locals 2

    .prologue
    .line 711
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 712
    if-eqz v0, :cond_0

    .line 713
    const-string/jumbo v1, "ImageQuality"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getLayoutMode()I
    .locals 2

    .prologue
    .line 404
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 405
    if-eqz v0, :cond_0

    .line 406
    const-string/jumbo v1, "LayoutStyle"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPageCacheCapacity()I
    .locals 2

    .prologue
    .line 606
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 607
    if-eqz v0, :cond_0

    .line 608
    const-string/jumbo v1, "CachePageNumber"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPageColorTheme()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 682
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 683
    if-eqz v0, :cond_1

    .line 684
    const-string/jumbo v1, "IsTransparentTheme"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    const/4 v0, -0x1

    .line 690
    :goto_0
    return v0

    .line 687
    :cond_0
    const-string/jumbo v1, "PageColorTheme"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 690
    goto :goto_0
.end method

.method public static getPrereadType()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 762
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 763
    if-eqz v0, :cond_0

    .line 764
    const-string/jumbo v1, "PrereadOptions"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 766
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getSmartReader()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 736
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 737
    if-eqz v0, :cond_0

    .line 738
    const-string/jumbo v1, "EnableSmartReader"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 740
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEnableCustomErrorPage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 470
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 471
    if-eqz v0, :cond_0

    .line 472
    const-string/jumbo v1, "EnableCustomErrPage"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isGlobalPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 888
    const-string/jumbo v0, "IsNoFootmark"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCSettings;->getGlobalBoolValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkDisabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 843
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 844
    if-eqz v0, :cond_0

    .line 845
    const-string/jumbo v1, "OFFNET_ON"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 846
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNightMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 430
    const/16 v0, 0x2726

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    const-string/jumbo v1, "IsNightMode"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    .line 434
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static setEnableAdblock(Z)V
    .locals 2

    .prologue
    .line 497
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 498
    if-eqz v0, :cond_0

    .line 499
    const-string/jumbo v1, "EnableAdBlock"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 501
    :cond_0
    return-void
.end method

.method public static setEnableAllResourceCallBack(Z)V
    .locals 2

    .prologue
    .line 537
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 538
    if-eqz v0, :cond_0

    .line 539
    const-string/jumbo v1, "enable_allresponse_callback"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 541
    :cond_0
    return-void
.end method

.method public static setEnableCustomErrorPage(Z)V
    .locals 2

    .prologue
    .line 445
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 446
    if-eqz v0, :cond_0

    const-string/jumbo v1, "EnableCustomErrPage"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 447
    const-string/jumbo v1, "EnableCustomErrPage"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 449
    :cond_0
    return-void
.end method

.method public static setEnableDispatcher(Z)V
    .locals 2

    .prologue
    .line 511
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 512
    if-eqz v0, :cond_0

    .line 513
    const-string/jumbo v1, "enable_dispatcher"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 515
    :cond_0
    return-void
.end method

.method public static setEnableMediaCache(Z)V
    .locals 0

    .prologue
    .line 461
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Z)V

    .line 462
    return-void
.end method

.method public static setEnableMultiThreadParser(Z)V
    .locals 2

    .prologue
    .line 524
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 525
    if-eqz v0, :cond_0

    .line 526
    const-string/jumbo v1, "enable_multithread_parser"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 528
    :cond_0
    return-void
.end method

.method public static setEnableRequestIntercept(Z)V
    .locals 2

    .prologue
    .line 550
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 551
    if-eqz v0, :cond_0

    .line 552
    const-string/jumbo v1, "enable_request_intercept"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 554
    :cond_0
    return-void
.end method

.method public static setEnableUCParam(Z)V
    .locals 2

    .prologue
    .line 855
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 856
    if-eqz v0, :cond_0

    .line 857
    const-string/jumbo v1, "SDKUCParam"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 859
    :cond_0
    return-void
.end method

.method public static setEnableUCVideoViewFullscreen(Z)V
    .locals 2

    .prologue
    .line 802
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 803
    if-eqz v0, :cond_0

    .line 804
    const-string/jumbo v1, "enable_uc_videoview_fullscreen"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 806
    :cond_0
    return-void
.end method

.method public static setForceUserScalable(I)V
    .locals 3

    .prologue
    .line 642
    sget v0, Lcom/uc/webview/export/extension/UCSettings;->FORCE_USER_SCALABLE_DEFAULT:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/uc/webview/export/extension/UCSettings;->FORCE_USER_SCALABLE_ENABLE:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/uc/webview/export/extension/UCSettings;->FORCE_USER_SCALABLE_DISABLE:I

    if-eq p0, v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", should be one of FORCE_USER_SCALABLE_DEFAULT/FORCE_USER_SCALABLE_ENABLE/FORCE_USER_SCALABLE_DISABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 650
    if-eqz v0, :cond_1

    .line 651
    const-string/jumbo v1, "PageForceUserScalable"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 653
    :cond_1
    return-void
.end method

.method public static setFormSaveType(I)V
    .locals 2

    .prologue
    .line 775
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 776
    if-eqz v0, :cond_0

    .line 777
    const-string/jumbo v1, "FormSave"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 779
    :cond_0
    return-void
.end method

.method public static setGlobalBoolValue(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 933
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 934
    if-eqz v0, :cond_0

    .line 935
    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 937
    :cond_0
    return-void
.end method

.method public static setGlobalEnableUCProxy(Z)V
    .locals 2

    .prologue
    .line 484
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 485
    if-eqz v0, :cond_0

    .line 486
    const-string/jumbo v1, "global_enable_ucproxy"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 488
    :cond_0
    return-void
.end method

.method public static setGlobalIntValue(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 897
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 898
    if-eqz v0, :cond_0

    .line 899
    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 901
    :cond_0
    return-void
.end method

.method public static setGlobalPrivateBrowsing(Z)V
    .locals 1

    .prologue
    .line 879
    const-string/jumbo v0, "IsNoFootmark"

    invoke-static {v0, p0}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 880
    return-void
.end method

.method public static setGlobalStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 909
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 910
    if-eqz v0, :cond_0

    .line 911
    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_0
    return-void
.end method

.method public static setImageQuality(I)V
    .locals 2

    .prologue
    .line 699
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 700
    if-eqz v0, :cond_0

    .line 701
    const-string/jumbo v1, "ImageQuality"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 703
    :cond_0
    return-void
.end method

.method public static setLayoutMode(I)V
    .locals 2

    .prologue
    .line 392
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 393
    if-eqz v0, :cond_0

    const-string/jumbo v1, "LayoutStyle"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 394
    const-string/jumbo v1, "LayoutStyle"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 396
    :cond_0
    return-void
.end method

.method public static setNightMode(Z)V
    .locals 2

    .prologue
    .line 418
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 419
    if-eqz v0, :cond_0

    const-string/jumbo v1, "IsNightMode"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 420
    const-string/jumbo v1, "IsNightMode"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 422
    :cond_0
    return-void
.end method

.method public static setPageCacheCapacity(I)V
    .locals 3

    .prologue
    .line 587
    if-ltz p0, :cond_0

    const/16 v0, 0x14

    if-le p0, v0, :cond_1

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "capacity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", should be a non-negative integer between 0 (no cache) and 20 (max)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 593
    if-eqz v0, :cond_2

    .line 594
    const-string/jumbo v1, "CachePageNumber"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 596
    :cond_2
    return-void
.end method

.method public static setPageColorTheme(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    const/16 v0, 0x2726

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 663
    if-eqz v0, :cond_0

    .line 664
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 665
    const-string/jumbo v1, "IsTransparentTheme"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    const-string/jumbo v1, "IsTransparentTheme"

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getBoolValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    const-string/jumbo v1, "IsTransparentTheme"

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 670
    :cond_2
    const-string/jumbo v1, "PageColorTheme"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setPrereadType(I)V
    .locals 2

    .prologue
    .line 749
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 750
    if-eqz v0, :cond_0

    .line 751
    const-string/jumbo v1, "PrereadOptions"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setIntValue(Ljava/lang/String;I)V

    .line 753
    :cond_0
    return-void
.end method

.method public static setRIPort(I)V
    .locals 3

    .prologue
    .line 920
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 921
    if-eqz v0, :cond_0

    .line 922
    const-string/jumbo v1, "SDKRIPort"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_0
    return-void
.end method

.method public static setSmartReader(Z)V
    .locals 2

    .prologue
    .line 724
    const/16 v0, 0x2726

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 725
    if-eqz v0, :cond_0

    .line 726
    const-string/jumbo v1, "EnableSmartReader"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 728
    :cond_0
    return-void
.end method

.method public static updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 189
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/uc/webview/export/extension/UCSettings;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    instance-of v0, p3, [Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-interface {v2, p0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p3, Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string/jumbo p3, ""

    goto :goto_2
.end method


# virtual methods
.method public enableFastScroller()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 629
    const-string/jumbo v0, "UCSettings"

    const-string/jumbo v1, "enableFastScroller not override"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getEnableUCProxy()Z
.end method

.method public abstract getForceUCProxy()Z
.end method

.method public abstract getUCCookieType()I
.end method

.method public setEnableFastScroller(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 619
    const-string/jumbo v0, "UCSettings"

    const-string/jumbo v1, "setEnableFastScroller not override"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public abstract setEnableUCProxy(Z)V
.end method

.method public abstract setForceUCProxy(Z)V
.end method

.method public abstract setUCCookieType(I)V
.end method
