.class public final Ldyz;
.super Ljava/lang/Object;
.source "SessionGrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()F
    .locals 2

    .prologue
    .line 52
    const/high16 v0, 0x41400000    # 12.0f

    .line 1056
    const-string/jumbo v1, "intent_key_efficient_smart_HOUR"

    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;F)F

    move-result v0

    .line 52
    return v0
.end method

.method public static a(Z)V
    .locals 6
    .param p0, "isOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 87
    if-eqz p0, :cond_1

    const-string/jumbo v0, "1"

    .line 88
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "user_settings"

    const-string/jumbo v3, "streamline_mode_quick_menu_enabled"

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 90
    if-nez p0, :cond_0

    .line 2036
    const-string/jumbo v1, "pref_key_efficient_mode_open"

    invoke-static {v1, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 2044
    const-string/jumbo v1, "pref_key_efficient_mode_open"

    invoke-static {v1, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 93
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "intent_action_efficient_mode_force_changed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 96
    :cond_0
    return-void

    .line 87
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public static a(ZZ)V
    .locals 7
    .param p0, "force"    # Z
    .param p1, "open"    # Z

    .prologue
    .line 102
    .line 103
    move v0, p0

    .local v0, "showUpdate":Z
    if-nez p0, :cond_0

    .line 104
    const-string/jumbo v2, "sp_efficient_sync2_server"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 105
    .local v1, "sync2Server":Z
    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 110
    .end local v1    # "sync2Server":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 111
    const-string/jumbo v2, "sp_efficient_sync2_server"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 113
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "user_settings"

    const-string/jumbo v5, "streamline_mode_enabled"

    if-eqz p1, :cond_2

    const-string/jumbo v2, "1"

    :goto_0
    sget-object v6, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 115
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "update efficient to server force:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    return-void

    .line 113
    :cond_2
    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "user_settings"

    const-string/jumbo v3, "im_not_disturb_only_at_msgs"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
