.class public Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;
.super Ljava/lang/Object;
.source "TeleConfDingSimCardHelper.java"


# static fields
.field private static final DEFAULT_DING_CARD_NOTICE_INTERVAL:J = 0x93a80L

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;


# instance fields
.field private mSettingListener:Lifn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildDingSimCardGlobalSetting(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    .locals 10
    .param p1, "personalSettingStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "globalSettingJsonObj":Lorg/json/JSONObject;
    new-instance v1, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    .local v1, "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    :try_start_1
    const-string/jumbo v8, "valid"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->setValid(Z)V

    .line 258
    const-string/jumbo v8, "content"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->setContent(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v8, "uri"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->setUri(Ljava/lang/String;)V

    .line 260
    const-string/jumbo v8, "all"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->setAllOpen(Z)V

    .line 261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v4, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v8, "orgIds"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 263
    .local v5, "orgIdsJsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 264
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 265
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->setOrgIds(Ljava/util/List;)V

    .line 269
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v6, "orgLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v8, "orgLevels"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 271
    .local v7, "orgLevelsJsonArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 272
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 273
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 276
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1, v6}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->setOrgLevels(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 279
    .end local v1    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    .end local v2    # "globalSettingJsonObj":Lorg/json/JSONObject;
    .end local v4    # "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "orgIdsJsonArray":Lorg/json/JSONArray;
    .end local v6    # "orgLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "orgLevelsJsonArray":Lorg/json/JSONArray;
    .restart local v0    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    :goto_2
    return-object v0

    :catch_0
    move-exception v8

    goto :goto_2

    .end local v0    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    .restart local v1    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    .restart local v2    # "globalSettingJsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    .restart local v0    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    goto :goto_2
.end method

.method private buildDingSimCardPersonalSetting(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    .locals 4
    .param p1, "personalSettingStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    .local v2, "personalSettingJsonObj":Lorg/json/JSONObject;
    new-instance v1, Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    .local v1, "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    :try_start_1
    const-string/jumbo v3, "valid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;->setValid(Z)V

    .line 288
    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;->setContent(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;->setUri(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 292
    .end local v1    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    .end local v2    # "personalSettingJsonObj":Lorg/json/JSONObject;
    .restart local v0    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    .restart local v1    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    .restart local v2    # "personalSettingJsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    .restart local v0    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    goto :goto_0
.end method

.method private buildDingSimCardSetting(Ljava/lang/String;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 7
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "settingJsonObj":Lorg/json/JSONObject;
    new-instance v2, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .local v2, "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    :try_start_1
    const-string/jumbo v4, "valid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->setValid(Z)V

    .line 212
    const-string/jumbo v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->setContent(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v4, "uri"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->setUri(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 218
    .end local v2    # "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .end local v3    # "settingJsonObj":Lorg/json/JSONObject;
    .restart local v1    # "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "buildDingSimCardSetting exp"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .restart local v2    # "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .restart local v3    # "settingJsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .restart local v1    # "setting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    goto :goto_1
.end method

.method public static getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->sInstance:Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->sInstance:Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;-><init>()V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->sInstance:Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->sInstance:Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getValidDingSimCardBaseSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 222
    const-string/jumbo v8, "dingcard_personal"

    invoke-static {v8}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "personalSettingStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 224
    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->buildDingSimCardPersonalSetting(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;

    move-result-object v5

    .line 225
    .local v5, "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;->isValid()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v0, v5

    .line 249
    .end local v5    # "personalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardPersonalSetting;
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    const-string/jumbo v8, "dingcard_global"

    invoke-static {v8}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "globalSettingStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 231
    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->buildDingSimCardGlobalSetting(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;

    move-result-object v0

    .line 232
    .local v0, "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->isValid()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 233
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->isAllOpen()Z

    move-result v8

    if-nez v8, :cond_0

    .line 236
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v7

    .line 237
    .local v7, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v7, :cond_4

    iget-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 238
    iget-object v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 239
    .local v4, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    invoke-direct {p0, v4, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->isOrgIdValid(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;)Z

    move-result v2

    .line 240
    .local v2, "isOrgIdValid":Z
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->isMainOrg(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, v4, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->isOrgLevelValid(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    .line 241
    .local v3, "isOrgLevelValid":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    goto :goto_0

    .line 240
    .end local v3    # "isOrgLevelValid":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 249
    .end local v0    # "globalSetting":Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;
    .end local v2    # "isOrgIdValid":Z
    .end local v4    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMainOrg(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z
    .locals 1
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrgIdValid(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;)Z
    .locals 4
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "globalSetting"    # Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 303
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->getOrgIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->getOrgIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->getOrgIds()Ljava/util/List;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrgLevelValid(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;)Z
    .locals 2
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "globalSetting"    # Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 310
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->getOrgLevels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->getOrgLevels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p2}, Lcom/alibaba/android/teleconf/data/DingSimCardGlobalSetting;->getOrgLevels()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->rightsLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needUpdate()Z
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getValidDingSimCardBaseSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    .line 112
    .local v0, "newSetting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    const-string/jumbo v4, "conf_ding_sim_card_info"

    const-string/jumbo v7, ""

    invoke-static {v4, v7}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "oldSettingStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 114
    .local v2, "oldSetting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->buildDingSimCardSetting(Ljava/lang/String;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v2

    .line 117
    :cond_0
    const-string/jumbo v7, "tele_conf"

    sget-object v8, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/String;

    const-string/jumbo v4, "old:"

    aput-object v4, v9, v5

    aput-object v3, v9, v6

    const/4 v4, 0x2

    const-string/jumbo v10, ", new: "

    aput-object v10, v9, v4

    const/4 v10, 0x3

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->toJsonString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-static {v7, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move v4, v5

    .line 128
    :goto_1
    return v4

    .line 118
    :cond_3
    const-string/jumbo v4, "null"

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v1, ""

    .line 123
    .local v1, "newSettingStr":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 124
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->toJsonString()Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_5
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Set card info: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v4, "conf_ding_sim_card_info"

    invoke-static {v4, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 128
    goto :goto_1
.end method


# virtual methods
.method public getDingSimCardNoticeInterval()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    const-wide/32 v0, 0x93a80

    .line 194
    .local v0, "destInterval":J
    const-string/jumbo v4, "dingcard_warn_interval"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "timeStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 203
    :cond_0
    :goto_0
    return-wide v0

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDingSimCardSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    const-string/jumbo v1, "conf_ding_sim_card_info"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "settingStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->buildDingSimCardSetting(Ljava/lang/String;)Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 136
    :cond_0
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Ding-card info is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowDingSimCardEntrance()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getDingSimCardSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDingSimCardNoticeInterval()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    .line 143
    .local v0, "mCloudSetting":Lcom/alibaba/wukong/settings/CloudSettingService;
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string/jumbo v1, "dt_dingcard"

    const-string/jumbo v2, "dingcard_warn_interval"

    new-instance v3, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper$1;-><init>(Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->mSettingListener:Lifn;

    if-nez v1, :cond_1

    .line 168
    new-instance v1, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper$2;-><init>(Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;)V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->mSettingListener:Lifn;

    .line 189
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->mSettingListener:Lifn;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Lifn;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->mSettingListener:Lifn;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->b(Lifn;)V

    goto :goto_1
.end method

.method public updateDingSimCardSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "key is null or value is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    const-string/jumbo v2, "dingcard_personal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "dingcard_global"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "key is not valid"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {p1, p2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->needUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getDingSimCardSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    .line 89
    .local v0, "baseSetting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    if-eqz v0, :cond_5

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    const/4 v1, 0x1

    .line 96
    .local v1, "hideReddot":Z
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->A:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 97
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->A:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 101
    .end local v1    # "hideReddot":Z
    :goto_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "dingCardSettingUpdated"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 94
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "hideReddot":Z
    goto :goto_1

    .line 99
    .end local v1    # "hideReddot":Z
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->A:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    goto :goto_2
.end method
