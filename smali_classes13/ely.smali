.class public Lely;
.super Ljava/lang/Object;
.source "CloudSettingUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lely;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lely;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string/jumbo v22, "autolift"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string/jumbo v22, "wk_phone"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    :cond_2
    const-string/jumbo v22, "auto_pick"

    .line 47
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string/jumbo v22, "teleconf"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    :cond_3
    const-string/jumbo v22, "num_exp"

    .line 48
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string/jumbo v22, "teleconf"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    :cond_4
    const-string/jumbo v22, "dingcard_personal"

    .line 49
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string/jumbo v22, "dt_dingcard"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    :cond_5
    const-string/jumbo v22, "dingcard_global"

    .line 50
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string/jumbo v22, "dt_dingcard"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    :cond_6
    const-string/jumbo v22, "local_contact_filter"

    .line 51
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    const-string/jumbo v22, "teleconf"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 53
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_8
    const-string/jumbo v22, "xpn"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-string/jumbo v22, "dingding_mail"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 56
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 57
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_mail_notification"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 59
    :catch_0
    move-exception v9

    .line 60
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 62
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    const-string/jumbo v22, "dt_org"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string/jumbo v22, "show_auth_org"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 65
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_auth_org"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v22 .. v24}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 66
    :catch_1
    move-exception v16

    .line 67
    .local v16, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 70
    .end local v16    # "nfe":Ljava/lang/NumberFormatException;
    :cond_a
    const-string/jumbo v22, "wk_phone"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const-string/jumbo v22, "team"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 71
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 73
    :try_start_2
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v20, "settings":Lorg/json/JSONObject;
    if-eqz v20, :cond_0

    .line 75
    const-string/jumbo v22, "lowerLimit"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 76
    .local v8, "createCount":I
    if-lez v8, :cond_0

    .line 77
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "create_org_limit_member"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 80
    .end local v8    # "createCount":I
    .end local v20    # "settings":Lorg/json/JSONObject;
    :catch_2
    move-exception v9

    .line 81
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 82
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v9

    .line 83
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 86
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_b
    const-string/jumbo v22, "dt_safe"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const-string/jumbo v22, "deactivation_enable"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 87
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 88
    const-string/jumbo v22, "unregister_enable_expire_time"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_c
    const-string/jumbo v22, "dt_alimail"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const-string/jumbo v22, "buyMailSwitch"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 92
    const-string/jumbo v22, "pref_key_org_mail_setting_switch_new"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_d
    const-string/jumbo v22, "dt_alimail"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const-string/jumbo v22, "buyMailSwitch_v3.5"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 95
    const-string/jumbo v22, "pref_key_org_mail_domain_setting_switch"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_e
    const-string/jumbo v22, "dtmail"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    const-string/jumbo v22, "mail_orgsignature_opened"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 98
    const-string/jumbo v22, "pref_key_mail_new_signature_v2"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_f
    const-string/jumbo v22, "dingding_mail"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    const-string/jumbo v22, "mail_conversation_group"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 101
    const-string/jumbo v22, "pref_key_mail_conversation_group_switch"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_10
    const-string/jumbo v22, "dt_org"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const-string/jumbo v22, "industry"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 104
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 105
    const-string/jumbo v22, "pref_key_entry_switch_industry_data"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->y()V

    .line 107
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v23

    sget-object v24, Lble;->g:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->w()Z

    move-result v22

    if-nez v22, :cond_11

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->addNoEntryId(Ljava/lang/String;Z)V

    .line 108
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v22

    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v24, "action_settings_entry_update"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 107
    :cond_11
    const/16 v22, 0x0

    goto :goto_1

    .line 110
    :cond_12
    const-string/jumbo v22, "dt_org"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const-string/jumbo v22, "user_industry_switch"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 112
    const-string/jumbo v22, "pref_key_user_industry_switch"

    const-string/jumbo v23, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    invoke-static/range {v22 .. v23}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 113
    :cond_13
    const-string/jumbo v22, "dt_org"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const-string/jumbo v22, "user_position_switch"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 115
    const-string/jumbo v22, "pref_key_user_position_switch"

    const-string/jumbo v23, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    invoke-static/range {v22 .. v23}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 116
    :cond_14
    const-string/jumbo v22, "dt_user"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    const-string/jumbo v22, "source"

    .line 117
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 118
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 119
    const-string/jumbo v22, "pref_key_new_user_source"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Leiq;->c()V

    .line 121
    invoke-static {}, Leiq;->d()V

    goto/16 :goto_0

    .line 123
    :cond_15
    const-string/jumbo v22, "dt_health"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    const-string/jumbo v22, "step"

    .line 124
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 127
    :try_start_3
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v22, "intervals"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 129
    .local v11, "intervals":I
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v22, "com.workapp.step.upload.interval.UPDATED"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "intent_key_step_upload_interval"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ldq;->a(Landroid/content/Intent;)Z

    .line 132
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "intent_key_step_upload_interval"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 134
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "intervals":I
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v9

    .line 135
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 138
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_16
    const-string/jumbo v22, "dt_user"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    const-string/jumbo v22, "profile_tags"

    .line 139
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 140
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 141
    const-string/jumbo v22, "pref_key_user_profile_tags"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v22

    new-instance v23, Lely$1;

    invoke-direct/range {v23 .. v23}, Lely$1;-><init>()V

    invoke-interface/range {v22 .. v23}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 150
    :cond_17
    const-string/jumbo v22, "user_lg"

    sget-object v23, Lely;->a:Ljava/lang/String;

    const-string/jumbo v24, "empty profile tag"

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_18
    const-string/jumbo v22, "dt_function"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    const-string/jumbo v22, "check_in_ahead_time"

    .line 153
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 154
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 156
    :try_start_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 157
    .local v6, "checkInAheadTime":J
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_check_in_ahead_time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6, v7}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 158
    const-string/jumbo v22, "ding"

    const-string/jumbo v23, ""

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "check_in_ahead_value:"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 159
    .end local v6    # "checkInAheadTime":J
    :catch_5
    move-exception v9

    .line 160
    .local v9, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 161
    const-string/jumbo v22, "ding"

    const-string/jumbo v23, ""

    const-string/jumbo v24, "check_in_ahead_value: format error"

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_19
    const-string/jumbo v22, "dt_function"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    const-string/jumbo v22, "rollback_ding_v2"

    .line 165
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 166
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 168
    :try_start_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 169
    .local v17, "rollBackToV1":Z
    const-string/jumbo v22, "rollback_ding_v2"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 170
    const-string/jumbo v22, "ding"

    const-string/jumbo v23, ""

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "ding_roll_back_to_v1:"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 171
    .end local v17    # "rollBackToV1":Z
    :catch_6
    move-exception v9

    .line 172
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 173
    const-string/jumbo v22, "ding"

    const-string/jumbo v23, ""

    const-string/jumbo v24, "ding_roll_back_to_v1: format error"

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_1a
    const-string/jumbo v22, "dt_function"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const-string/jumbo v22, "create_org_new_android"

    .line 177
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 178
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 179
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 180
    .local v21, "userCreateOrgNewFlow":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_create_org_v3"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 181
    const-string/jumbo v22, "general"

    const-string/jumbo v23, ""

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "user_create_org_new:"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v21    # "userCreateOrgNewFlow":Z
    :cond_1b
    const-string/jumbo v22, "dt_org"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    const-string/jumbo v22, "work_method_url"

    .line 184
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 185
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 186
    const-string/jumbo v22, "pref_key_work_method_url"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v22, "dt_org"

    const-string/jumbo v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_1c
    const-string/jumbo v22, "dt_function"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    const-string/jumbo v22, "dt_create_team"

    .line 190
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 191
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 192
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_create_team_empty_icon"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :cond_1d
    const-string/jumbo v22, "dt_search"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    const-string/jumbo v22, "negative_sample_rate"

    .line 196
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 197
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 199
    :try_start_6
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 200
    .local v18, "sampleRate":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_search_negative_sample_rate"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 202
    .end local v18    # "sampleRate":I
    :catch_7
    move-exception v22

    const-string/jumbo v22, "general"

    const-string/jumbo v23, ""

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "parse "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object p2, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, " failed"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_1e
    const-string/jumbo v22, "dt_search"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    const-string/jumbo v22, "negative_detail_upload_new"

    .line 206
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 207
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 208
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 209
    .local v5, "commitDetails":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_search_negative_sample_commit_details"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 211
    .end local v5    # "commitDetails":Z
    :cond_1f
    const-string/jumbo v22, "dt_search"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    const-string/jumbo v22, "msg_search_await_timeout"

    .line 212
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 213
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 215
    :try_start_7
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 216
    .local v4, "awaitTime":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_search_msg_global_sort_await_time"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_0

    .line 218
    .end local v4    # "awaitTime":I
    :catch_8
    move-exception v22

    const-string/jumbo v22, "general"

    const-string/jumbo v23, ""

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "parse "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object p2, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, " failed"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_20
    const-string/jumbo v22, "dt_search"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    const-string/jumbo v22, "msg_search_cloud"

    .line 222
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 223
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 224
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 225
    .local v19, "searchCloud":Z
    const-string/jumbo v22, "pref_key_msg_search_from_cloud_server"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 227
    .end local v19    # "searchCloud":Z
    :cond_21
    const-string/jumbo v22, "dt_user"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    const-string/jumbo v22, "friend_request_remark_limit"

    .line 228
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 229
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 231
    :try_start_8
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 232
    .local v15, "limit":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_friend_request_remark_limit"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9

    goto/16 :goto_0

    .line 234
    .end local v15    # "limit":I
    :catch_9
    move-exception v22

    const-string/jumbo v22, "general"

    const-string/jumbo v23, ""

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "parse "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object p2, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, " failed"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_22
    const-string/jumbo v22, "dt_user"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    const-string/jumbo v22, "create_org_name_limit"

    .line 238
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 239
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 241
    :try_start_9
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 242
    .restart local v15    # "limit":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_create_org_name_limit"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_0

    .line 244
    .end local v15    # "limit":I
    :catch_a
    move-exception v22

    const-string/jumbo v22, "general"

    const-string/jumbo v23, ""

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "parse "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object p2, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, " failed"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_23
    const-string/jumbo v22, "dt_search"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    const-string/jumbo v22, "search_click_history_limit"

    .line 248
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 249
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 251
    :try_start_a
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 252
    .restart local v15    # "limit":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "pref_key_search_click_history_limit"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_b

    goto/16 :goto_0

    .line 254
    .end local v15    # "limit":I
    :catch_b
    move-exception v22

    const-string/jumbo v22, "general"

    const-string/jumbo v23, ""

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "parse "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object p2, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, " failed"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_24
    const-string/jumbo v22, "dt_user"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    const-string/jumbo v22, "dt_medal_bussiness_config"

    .line 258
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 259
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 260
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_25
    const-string/jumbo v22, "dt_user"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    const-string/jumbo v22, "hrm_birthday"

    .line 263
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 264
    invoke-static/range {p2 .. p2}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_26
    const-string/jumbo v22, "oa_filter"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    const-string/jumbo v22, "oa_filter_ccp"

    .line 266
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 267
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 269
    :try_start_b
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 270
    .local v12, "isFilter":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    const-string/jumbo v23, "oa_filter_ccp"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v12}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 271
    const-string/jumbo v22, "oa"

    const-string/jumbo v23, ""

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "filter oa ccp switch is :"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_c

    goto/16 :goto_0

    .line 272
    .end local v12    # "isFilter":Z
    :catch_c
    move-exception v9

    .line 273
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 274
    const-string/jumbo v22, "oa"

    const-string/jumbo v23, ""

    const-string/jumbo v24, "filter oa ccp switch : format error"

    invoke-static/range {v22 .. v24}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_27
    const/4 v13, 0x0

    .line 281
    .local v13, "isParsed":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 283
    if-nez v13, :cond_0

    .line 284
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
