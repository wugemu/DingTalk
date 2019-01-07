.class public Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;
.super Ljava/lang/Object;
.source "SettingsProxy.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/HealthSettings;


# static fields
.field private static final BG_TRAFFIC_VALUE:F = 5242880.0f

.field private static final HEALTH_BG_TRAFFIC:Ljava/lang/String; = "bg_traffic"

.field private static final HEALTH_TOTAL_TRAFFIC:Ljava/lang/String; = "total_traffic"

.field private static final KEY_NAME:Ljava/lang/String; = "settings"

.field private static final KEY_POWER_DAY_THRESHOLD:Ljava/lang/String; = "power_day_threshold"

.field private static final KEY_POWER_HOUR_THRESHOLD:Ljava/lang/String; = "power_hour_threshold"

.field private static final KEY_SOCKET_NAME:Ljava/lang/String; = "socket_check"

.field private static final KEY_TRAFFIC_STAT_PATTERN:Ljava/lang/String; = "traffic_pattern"

.field private static final MODULE_NAME:Ljava/lang/String; = "health"

.field private static final POWER_DAY_THRESHOLD:F = 0.1f

.field private static final POWER_HOUR_THRESHOLD:F = 0.2f

.field private static final TOTAL_TRAFFIC_VALUE:F = 1.048576E7f

.field public static final TRAFFIC_STAT_PATTERN_NEW:I = 0x2

.field public static final TRAFFIC_STAT_PATTERN_OLD:I = 0x1

.field private static sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;


# instance fields
.field private mHealthSettings:Lcom/alibaba/doraemon/health/HealthSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;

    .line 62
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->sInstance:Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBgTrafficThreshold()F
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    const/high16 v3, 0x4aa00000    # 5242880.0f

    .line 185
    .local v3, "value":F
    const-string/jumbo v5, "health"

    const-string/jumbo v6, "settings"

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "setting":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "bg_traffic"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "valueString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 199
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPowerDayThreshold()F
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const v3, 0x3dcccccd    # 0.1f

    .line 90
    .local v3, "value":F
    const-string/jumbo v5, "health"

    const-string/jumbo v6, "settings"

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "setting":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "power_day_threshold"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "valueString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 104
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPowerHourThreshold()F
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    const v3, 0x3e4ccccd    # 0.2f

    .line 109
    .local v3, "value":F
    const-string/jumbo v5, "health"

    const-string/jumbo v6, "settings"

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "setting":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "power_hour_threshold"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "valueString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 123
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->mHealthSettings:Lcom/alibaba/doraemon/health/HealthSettings;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->mHealthSettings:Lcom/alibaba/doraemon/health/HealthSettings;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/doraemon/health/HealthSettings;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0
.end method

.method public getTotalTrafficThreshold()F
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    const/high16 v3, 0x4b200000    # 1.048576E7f

    .line 166
    .local v3, "value":F
    const-string/jumbo v5, "health"

    const-string/jumbo v6, "settings"

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "setting":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "total_traffic"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "valueString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 180
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTrafficStatPattern()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    const/4 v3, 0x2

    .line 204
    .local v3, "value":I
    const-string/jumbo v5, "health"

    const-string/jumbo v6, "settings"

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "setting":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 208
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "traffic_pattern"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "valueString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 218
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSocketMonitor()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "intValue":I
    const-string/jumbo v2, "health"

    const-string/jumbo v3, "socket_check"

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "health socket_check==>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 230
    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVipUser()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->mHealthSettings:Lcom/alibaba/doraemon/health/HealthSettings;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->mHealthSettings:Lcom/alibaba/doraemon/health/HealthSettings;

    invoke-interface {v0}, Lcom/alibaba/doraemon/health/HealthSettings;->isVipUser()Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHealthSettings(Lcom/alibaba/doraemon/health/HealthSettings;)V
    .locals 0
    .param p1, "healthSettings"    # Lcom/alibaba/doraemon/health/HealthSettings;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/SettingsProxy;->mHealthSettings:Lcom/alibaba/doraemon/health/HealthSettings;

    .line 67
    return-void
.end method
