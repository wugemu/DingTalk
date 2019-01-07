.class public final Lcom/alibaba/android/user/settings/utils/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/settings/utils/SettingsUtils$PrivilegeDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 542
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "prefKeyRecommendJs_"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "jsonKey":Ljava/lang/String;
    invoke-static {v1}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 556
    :goto_0
    return-object v2

    .line 550
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    .line 549
    invoke-static {v4, v5, v0}, Lcpt;->a(Lcom/google/gson/Gson;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 552
    .local v2, "object":Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v2, v3

    .line 553
    goto :goto_0

    .line 556
    :cond_1
    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    goto :goto_0
.end method

.method public static a(I)Lfww;
    .locals 17
    .param p0, "level"    # I

    .prologue
    .line 399
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v15

    invoke-virtual {v15}, Lcid;->c()Landroid/app/Application;

    move-result-object v15

    const-string/jumbo v16, "pref_key_privilege_info"

    invoke-static/range {v15 .. v16}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "jsonStr":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 401
    const/4 v9, 0x0

    .line 484
    .end local v3    # "jsonStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 404
    .restart local v3    # "jsonStr":Ljava/lang/String;
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    .local v8, "object":Lorg/json/JSONObject;
    const-string/jumbo v15, "user_level"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 407
    .local v12, "userLevelJSONArray":Lorg/json/JSONArray;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-gtz v15, :cond_3

    .line 408
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 411
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_4

    .line 412
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 413
    .local v13, "userLevelJSONObject":Lorg/json/JSONObject;
    if-eqz v13, :cond_a

    .line 417
    const-string/jumbo v15, "level"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v0, p0

    if-ne v0, v15, :cond_a

    .line 418
    new-instance v9, Lfww;

    invoke-direct {v9}, Lfww;-><init>()V

    .line 2043
    .local v9, "privilegeObject":Lfww;
    move/from16 v0, p0

    iput v0, v9, Lfww;->a:I

    .line 420
    const-string/jumbo v15, "maxCallMinutesV2"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 421
    const-string/jumbo v15, "maxCallMinutesV2"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 2051
    iput v15, v9, Lfww;->b:I

    .line 428
    :goto_2
    const-string/jumbo v15, "brief"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 429
    .local v6, "levelBriefJSONObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_7

    .line 430
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 433
    .local v5, "keyIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 434
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 435
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4099
    .local v14, "value":Ljava/lang/String;
    iget-object v15, v9, Lfww;->f:Ljava/util/Map;

    invoke-interface {v15, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 480
    .end local v2    # "i":I
    .end local v3    # "jsonStr":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyIter":Ljava/util/Iterator;
    .end local v6    # "levelBriefJSONObject":Lorg/json/JSONObject;
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v9    # "privilegeObject":Lfww;
    .end local v12    # "userLevelJSONArray":Lorg/json/JSONArray;
    .end local v13    # "userLevelJSONObject":Lorg/json/JSONObject;
    .end local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 484
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 422
    .restart local v2    # "i":I
    .restart local v3    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "object":Lorg/json/JSONObject;
    .restart local v9    # "privilegeObject":Lfww;
    .restart local v12    # "userLevelJSONArray":Lorg/json/JSONArray;
    .restart local v13    # "userLevelJSONObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string/jumbo v15, "maxCallMinutes"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 423
    const-string/jumbo v15, "maxCallMinutes"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 3051
    iput v15, v9, Lfww;->b:I

    goto :goto_2

    .line 425
    :cond_6
    const/4 v15, 0x0

    .line 4051
    iput v15, v9, Lfww;->b:I

    goto :goto_2

    .line 440
    .restart local v6    # "levelBriefJSONObject":Lorg/json/JSONObject;
    :cond_7
    const-string/jumbo v15, "upgBrief"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 441
    .local v10, "upgradeBriefJSONObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_8

    .line 442
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 445
    .restart local v5    # "keyIter":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 446
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 447
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5087
    .restart local v14    # "value":Ljava/lang/String;
    iget-object v15, v9, Lfww;->e:Ljava/util/Map;

    invoke-interface {v15, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 452
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyIter":Ljava/util/Iterator;
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v15, "title"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 453
    .local v7, "levelTitleJSONObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_9

    .line 454
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 457
    .restart local v5    # "keyIter":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 458
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 459
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6063
    .restart local v14    # "value":Ljava/lang/String;
    iget-object v15, v9, Lfww;->d:Ljava/util/Map;

    invoke-interface {v15, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 464
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyIter":Ljava/util/Iterator;
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v15, "upgTitle"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 465
    .local v11, "upgradeTitleJSONObject":Lorg/json/JSONObject;
    if-eqz v11, :cond_0

    .line 466
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 469
    .restart local v5    # "keyIter":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 470
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 471
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6075
    .restart local v14    # "value":Ljava/lang/String;
    iget-object v15, v9, Lfww;->c:Ljava/util/Map;

    invoke-interface {v15, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 411
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyIter":Ljava/util/Iterator;
    .end local v6    # "levelBriefJSONObject":Lorg/json/JSONObject;
    .end local v7    # "levelTitleJSONObject":Lorg/json/JSONObject;
    .end local v9    # "privilegeObject":Lfww;
    .end local v10    # "upgradeBriefJSONObject":Lorg/json/JSONObject;
    .end local v11    # "upgradeTitleJSONObject":Lorg/json/JSONObject;
    .end local v14    # "value":Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static a(IILcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .param p1, "level"    # I
    .param p2, "privilegeFrom"    # Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    .prologue
    .line 250
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 251
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "https://h5.dingtalk.com/base/commission.html"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?showmenu=false"

    .line 252
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&lwfrom="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 253
    packed-switch p0, :pswitch_data_0

    .line 292
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_c

    .line 293
    const-string/jumbo v1, "20151013151639783"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 303
    :cond_0
    :goto_0
    const-string/jumbo v1, "&type="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&level="

    .line 304
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 306
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 255
    :pswitch_0
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_1

    .line 256
    const-string/jumbo v1, "20151013151639783"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 257
    :cond_1
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_2

    .line 258
    const-string/jumbo v1, "20151013153620243"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 259
    :cond_2
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_3

    .line 260
    const-string/jumbo v1, "20151013154312588"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 261
    :cond_3
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 262
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 266
    :pswitch_1
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_4

    .line 267
    const-string/jumbo v1, "20151013151645459"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 268
    :cond_4
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_5

    .line 269
    const-string/jumbo v1, "20151013153810924"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 270
    :cond_5
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_6

    .line 271
    const-string/jumbo v1, "20151013154317483"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 272
    :cond_6
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_7

    .line 273
    const-string/jumbo v1, "20151013154330913"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 274
    :cond_7
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 275
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 279
    :pswitch_2
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_8

    .line 280
    const-string/jumbo v1, "20151013151649280"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 281
    :cond_8
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_9

    .line 282
    const-string/jumbo v1, "20151013153816936"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 283
    :cond_9
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_a

    .line 284
    const-string/jumbo v1, "20151013154324957"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 285
    :cond_a
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_b

    .line 286
    const-string/jumbo v1, "20151013154336504"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 287
    :cond_b
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 288
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 294
    :cond_c
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_d

    .line 295
    const-string/jumbo v1, "20151013153620243"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 296
    :cond_d
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_e

    .line 297
    const-string/jumbo v1, "20151013154312588"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 298
    :cond_e
    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    if-ne p2, v1, :cond_0

    .line 299
    const-string/jumbo v1, "20151123122924768"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "apiEventListener"    # Lcma;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 630
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "apiEventListener"    # Lcma;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "processError"    # Z

    .prologue
    .line 642
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->c(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 647
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    :cond_2
    if-eqz p1, :cond_0

    .line 649
    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$5;-><init>(Landroid/app/Activity;Lcma;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 663
    :cond_3
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "stateCode":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v8

    .line 670
    .local v8, "api":Lezm;
    sget-object v0, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 671
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;-><init>(Lcma;Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;Ljava/lang/String;Z)V

    const-class v1, Lcma;

    invoke-interface {v9, v0, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v8, v10, v0}, Lezm;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 666
    .end local v3    # "stateCode":Ljava/lang/String;
    .end local v8    # "api":Lezm;
    :cond_4
    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .restart local v3    # "stateCode":Ljava/lang/String;
    goto :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    .line 8839
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8840
    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 8841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lezg$l;->server_down:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8840
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 8841
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 101
    return-void
.end method

.method public static a(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "unshowIndustryCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 964
    const/4 v0, 0x1

    .line 966
    .local v0, "isShow":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 967
    const/4 v3, 0x1

    .line 981
    :goto_0
    return v3

    .line 6992
    :cond_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 6993
    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_4

    :cond_1
    move v1, v4

    .line 971
    .local v1, "mainOrgIndustryCode":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 972
    .local v2, "unshowIndustryCode":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 975
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 976
    const/4 v0, 0x0

    .end local v2    # "unshowIndustryCode":Ljava/lang/Integer;
    :cond_3
    move v3, v0

    .line 981
    goto :goto_0

    .line 6996
    .end local v1    # "mainOrgIndustryCode":I
    :cond_4
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 6997
    if-eqz v3, :cond_5

    .line 7000
    iget-boolean v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v6, :cond_5

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_5

    .line 7001
    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    :goto_2
    move v1, v3

    .line 7006
    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public static a(Z)Z
    .locals 5
    .param p0, "printTrace"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1083
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_user_medal_entry_v2"

    .line 7083
    invoke-virtual {v3, v4, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 1083
    if-nez v3, :cond_2

    .line 1084
    if-eqz p0, :cond_0

    .line 1085
    const-string/jumbo v2, "[false]feature closed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v0, v1

    .line 1128
    :cond_1
    :goto_0
    return v0

    .line 1091
    :cond_2
    invoke-static {}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->d()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1092
    if-eqz p0, :cond_3

    .line 1093
    const-string/jumbo v2, "[false]not org user"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    .line 1095
    goto :goto_0

    .line 1099
    :cond_4
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1100
    if-eqz p0, :cond_5

    .line 1101
    const-string/jumbo v2, "[false]oversea user"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v0, v1

    .line 1103
    goto :goto_0

    .line 1107
    :cond_6
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v3

    const-string/jumbo v4, "show_medal_entry_v2"

    .line 7217
    invoke-virtual {v3, v4, v1, v1}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 1107
    if-eqz v3, :cond_8

    .line 1108
    if-eqz p0, :cond_7

    .line 1109
    const-string/jumbo v3, "[true]csconfig open"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move v0, v2

    .line 1111
    goto :goto_0

    .line 1115
    :cond_8
    const-string/jumbo v3, "pref_key_is_medal_entry_blocked_by_blacklist"

    invoke-static {v3, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1116
    if-eqz p0, :cond_9

    .line 1117
    const-string/jumbo v2, "[false]in blacklist"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    move v0, v1

    .line 1119
    goto :goto_0

    .line 1123
    :cond_a
    const-string/jumbo v3, "pref_key_show_medal_entry_total_switch"

    invoke-static {v3, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1124
    .local v0, "totalSwitch":Z
    if-eqz p0, :cond_1

    .line 1125
    const-string/jumbo v3, "totalSwitch=%b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 101
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->c(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 6
    .param p0, "enable"    # Z

    .prologue
    const/16 v5, 0x13

    .line 1166
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    sput-boolean p0, Lcic;->a:Z

    .line 1172
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1173
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_2

    .line 1176
    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :cond_2
    :goto_1
    if-eqz p0, :cond_4

    const-string/jumbo v3, "\u5df2\u5f00\u542fjs\u8c03\u8bd5\u6a21\u5f0f"

    :goto_2
    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 1186
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v3, v4, :cond_0

    .line 1190
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1191
    .local v2, "preference":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 1195
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1196
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 1200
    const-string/jumbo v3, "DevSettingActivity_WEBVIEW_DEBUG"

    sget-boolean v4, Lcic;->a:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1201
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1177
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preference":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {p0}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    goto :goto_1

    .line 1184
    :cond_4
    const-string/jumbo v3, "\u5df2\u5173\u95edjs\u8c03\u8bd5\u6a21\u5f0f"

    goto :goto_2
.end method

.method public static b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 880
    const-string/jumbo v1, "pref_key_entry_switch_promotion"

    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "unshowOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    .line 1013
    .local v0, "isShow":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 1014
    const/4 v5, 0x1

    .line 1029
    :goto_0
    return v5

    .line 1017
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 1018
    .local v1, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_3

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 1019
    .local v2, "mainOrgId":J
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1020
    .local v4, "unshowOrgId":Ljava/lang/Long;
    if-eqz v4, :cond_1

    .line 1023
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 1024
    const/4 v0, 0x0

    .end local v4    # "unshowOrgId":Ljava/lang/Long;
    :cond_2
    move v5, v0

    .line 1029
    goto :goto_0

    .line 1018
    .end local v2    # "mainOrgId":J
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private static c(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "apiEventListener"    # Lcma;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "processError"    # Z

    .prologue
    .line 738
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lezg$j;->dialog_input_old_pwd:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 744
    .local v9, "dialogView":Landroid/view/View;
    sget v0, Lezg$h;->edt_old_pwd:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 745
    .local v1, "editText":Landroid/widget/EditText;
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    .local v7, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lezg$l;->settings_verify_old_password:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 747
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lezg$l;->settings_old_password_for_enter:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {v7, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 749
    sget v0, Lezg$l;->cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 750
    sget v0, Lezg$l;->sure:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lcma;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 808
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 809
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v8

    .line 810
    .local v8, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 811
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    .line 812
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 813
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 818
    :cond_2
    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;

    invoke-direct {v0, v8, v1}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$8;-><init>(Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .end local v8    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    move-object v0, p2

    .line 746
    goto :goto_1

    :cond_4
    move-object v0, p3

    .line 747
    goto :goto_2
.end method

.method public static c()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1138
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v4, "dt_user"

    const-string/jumbo v5, "show_claim_energy_entry_setting"

    invoke-interface {v2, v4, v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 1139
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_0

    move v1, v3

    .line 1146
    :goto_0
    return v1

    .line 1143
    :cond_0
    const-string/jumbo v2, "1"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1144
    .local v1, "isShow":Z
    const-string/jumbo v2, "getClaimEnergyEntryVisibility=%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1160
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_user_use_personal_medal_logic"

    .line 8083
    invoke-virtual {v2, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1160
    if-eqz v2, :cond_0

    .line 1161
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v2

    const-string/jumbo v3, "use_personal_medal_logic"

    .line 8217
    invoke-virtual {v2, v3, v1, v1}, Lfvv;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    .line 1161
    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
