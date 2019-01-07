.class public Lfrb;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfrb$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, "dataJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "dataJson":Lorg/json/JSONObject;
    .local v2, "dataJson":Lorg/json/JSONObject;
    move-object v1, v2

    .line 412
    .end local v2    # "dataJson":Lorg/json/JSONObject;
    .restart local v1    # "dataJson":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_1

    .line 413
    const-string/jumbo v8, "dataJson is null"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v7

    .line 436
    :cond_0
    :goto_1
    return-object v6

    .line 408
    :catch_0
    move-exception v3

    .line 409
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v8, "click_action"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 418
    .local v0, "clickAction":I
    const/4 v6, 0x0

    .line 419
    .local v6, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 420
    const-string/jumbo v8, "click agree"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lfxo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    const-string/jumbo v8, "from"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "fromStr":Ljava/lang/String;
    const-string/jumbo v8, "__"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "froms":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v8, v5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    :cond_2
    move-object v6, v7

    .line 425
    goto :goto_1

    .line 427
    :cond_3
    aget-object v6, v5, v10

    .line 430
    aget-object v7, v5, v11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p0, :cond_0

    .line 431
    aget-object v7, v5, v11

    invoke-static {v7}, Lfrb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 432
    aget-object v7, v5, v11

    invoke-static {v7}, Lfrb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSimulator"    # Z

    .prologue
    .line 200
    if-eqz p1, :cond_1

    const-string/jumbo v5, "1"

    .line 202
    .local v5, "simulator":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v6

    .line 203
    .local v6, "time":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 206
    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "decrypt":Ljava/lang/String;
    :try_start_0
    new-instance v8, Landroid/content/ContextWrapper;

    invoke-direct {v8, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v4

    .line 210
    .local v4, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 211
    .local v0, "comp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v0, :cond_2

    .line 212
    const/16 v8, 0x10

    const-string/jumbo v9, "000111"

    invoke-interface {v0, v8, v9, v1}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 221
    .end local v0    # "comp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :goto_1
    return-object v3

    .line 200
    .end local v1    # "decrypt":Ljava/lang/String;
    .end local v5    # "simulator":Ljava/lang/String;
    .end local v6    # "time":J
    :cond_1
    const-string/jumbo v5, "0"

    goto :goto_0

    .line 217
    .restart local v1    # "decrypt":Ljava/lang/String;
    .restart local v5    # "simulator":Ljava/lang/String;
    .restart local v6    # "time":J
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v3, v1

    .line 221
    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)Ljava/lang/String;
    .locals 3
    .param p0, "orgApplyObject"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .prologue
    .line 259
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 260
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v1, :cond_1

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_0
    return-object v1

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 271
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)Ljava/lang/String;
    .locals 3
    .param p0, "orgApplyObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .prologue
    .line 243
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 244
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v1, :cond_1

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 250
    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 255
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mobile"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v0, "pref_key_show_privacy_dialog"

    .line 329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_show_privacy_dialog"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "mobilePhone"    # Ljava/lang/String;

    .prologue
    .line 440
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "__"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 104
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 105
    .local v1, "mApp":Landroid/app/Application;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 106
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_0

    .line 107
    const-string/jumbo v4, "pref_logout_is_save_phone_number"

    invoke-static {v1, v4, v6}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 108
    .local v0, "isSave":Z
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 109
    new-instance v3, Lcom/alibaba/android/user/login/UserLoginInfoModel;

    invoke-direct {v3}, Lcom/alibaba/android/user/login/UserLoginInfoModel;-><init>()V

    .line 110
    .local v3, "userLoginInfoModel":Lcom/alibaba/android/user/login/UserLoginInfoModel;
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/login/UserLoginInfoModel;->mobile:Ljava/lang/String;

    .line 111
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/login/UserLoginInfoModel;->name:Ljava/lang/String;

    .line 112
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/login/UserLoginInfoModel;->avatarMediaId:Ljava/lang/String;

    .line 113
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/login/UserLoginInfoModel;->stateCode:Ljava/lang/String;

    .line 114
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v4, v3, Lcom/alibaba/android/user/login/UserLoginInfoModel;->uid:J

    .line 115
    invoke-static {v3}, Lfrb;->a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)Z

    .line 1467
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v5, "pre_key_ever_login_flag"

    invoke-static {v4, v5, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    .end local v3    # "userLoginInfoModel":Lcom/alibaba/android/user/login/UserLoginInfoModel;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pref_pwd_error_count_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v4, "LoginUtils"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lfrb$2;

    invoke-direct {v5, v2}, Lfrb$2;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 139
    .end local v0    # "isSave":Z
    :cond_0
    invoke-static {}, Lfrb;->b()V

    .line 140
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 141
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    const-wide/16 v6, -0x1

    .line 2215
    iput-wide v6, v4, Lccr;->a:J

    .line 142
    const-string/jumbo v4, "pref_user_id"

    invoke-static {v1, v4}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcod;->a()Lcod;

    move-result-object v4

    sget-object v5, Lcod;->d:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 145
    return-void

    .line 118
    .restart local v0    # "isSave":Z
    :cond_1
    const-string/jumbo v4, "pref_logout_is_save_phone_number"

    invoke-static {v1, v4, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 120
    const-class v4, Lfrb;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lfrb$1;

    invoke-direct {v5}, Lfrb$1;-><init>()V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "userToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lfxm;->a()Lfxm;

    invoke-static {}, Lfxm;->b()Lcom/ali/user/open/core/config/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->setEnvironment(Lcom/ali/user/open/core/config/Environment;)V

    .line 475
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ali/user/open/core/config/ConfigManager;->setAppKeyIndex(II)V

    .line 477
    const-string/jumbo v0, "dingding"

    new-instance v1, Lfrb$5;

    invoke-direct {v1, p0, p1, p2}, Lfrb$5;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    invoke-static {p0, v0, v1}, Lcom/ali/user/open/core/AliMemberSDK;->init(Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/core/callback/InitResultCallback;)V

    .line 520
    return-void
.end method

.method public static a(Lfrb$a;)V
    .locals 2
    .param p0, "callback"    # Lfrb$a;

    .prologue
    .line 157
    const-class v0, Lfrb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfrb$3;

    invoke-direct {v1, p0}, Lfrb$3;-><init>(Lfrb$a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public static a(J)Z
    .locals 6
    .param p0, "lastTime"    # J

    .prologue
    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 454
    .local v0, "currentTime":J
    sub-long v2, v0, p0

    .line 455
    .local v2, "deltaTime":J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 456
    :cond_0
    const/4 v4, 0x1

    .line 459
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mobilePhone"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 444
    invoke-static {p1}, Lfrb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lfrb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mobileWithArea"    # Ljava/lang/String;
    .param p2, "areaCode"    # Ljava/lang/String;
    .param p3, "identifyFlag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v1, v3

    .line 400
    :goto_0
    return v1

    .line 349
    :cond_1
    invoke-static {}, Lfvw;->a()Lfvw;

    move-result-object v5

    const-string/jumbo v6, "PrivacyConfirm"

    invoke-virtual {v5, v6, v4}, Lfvw;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 351
    goto :goto_0

    .line 354
    :cond_2
    invoke-static {p2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->f(Ljava/lang/String;)Z

    move-result v0

    .line 356
    .local v0, "isEu":Z
    if-eqz v0, :cond_3

    invoke-static {}, Lfvw;->a()Lfvw;

    move-result-object v5

    const-string/jumbo v6, "check_license"

    invoke-virtual {v5, v6, v4}, Lfvw;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 358
    goto :goto_0

    .line 361
    :cond_3
    invoke-static {p1}, Lfrb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    .line 363
    goto :goto_0

    .line 368
    :cond_4
    if-eqz v0, :cond_5

    .line 369
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "file:///android_asset/privacy_policy/eu.html?showBtn=1"

    aput-object v6, v5, v3

    const-string/jumbo v6, "&from="

    aput-object v6, v5, v4

    invoke-static {p3, p1}, Lfrb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "url":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_8

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lezg$l;->privacy_policy:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lflz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 380
    goto :goto_0

    .line 370
    .end local v2    # "url":Ljava/lang/String;
    :cond_5
    sget-object v5, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 371
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "file:///android_asset/privacy_policy/tw.html?showBtn=1"

    aput-object v6, v5, v3

    const-string/jumbo v6, "&from="

    aput-object v6, v5, v4

    invoke-static {p3, p1}, Lfrb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_1

    .line 372
    .end local v2    # "url":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcms;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 373
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "file:///android_asset/privacy_policy/zh.html?showBtn=1"

    aput-object v6, v5, v3

    const-string/jumbo v6, "&from="

    aput-object v6, v5, v4

    invoke-static {p3, p1}, Lfrb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_1

    .line 375
    .end local v2    # "url":Ljava/lang/String;
    :cond_7
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "file:///android_asset/privacy_policy/en.html?showBtn=1"

    aput-object v6, v5, v3

    const-string/jumbo v6, "&from="

    aput-object v6, v5, v4

    invoke-static {p3, p1}, Lfrb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_1

    .line 383
    :cond_8
    const/4 v1, 0x1

    .line 384
    .local v1, "originJudge":Z
    invoke-static {p1}, Lfrb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 386
    const/4 v1, 0x0

    .line 389
    :cond_9
    if-eqz v1, :cond_a

    const-string/jumbo v4, "+86"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "86"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 390
    const/4 v1, 0x0

    .line 393
    :cond_a
    if-nez v1, :cond_b

    .line 395
    invoke-static {p1}, Lfrb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 397
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->privacy_policy:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lflz;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 232
    :try_start_0
    new-instance v4, Landroid/content/ContextWrapper;

    invoke-direct {v4, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 233
    .local v2, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSimulatorDetectComp()Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;

    move-result-object v0

    .line 234
    .local v0, "comp":Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;->isSimulator()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 238
    .end local v0    # "comp":Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    .end local v2    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_0
    :goto_0
    return v3

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/user/login/UserLoginInfoModel;)Z
    .locals 4
    .param p0, "userLoginInfoModel"    # Lcom/alibaba/android/user/login/UserLoginInfoModel;

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_logout_is_save_phone_number"

    invoke-static {v2, v3, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    .local v0, "isSave":Z
    if-eqz v0, :cond_0

    .line 177
    const-class v2, Lfrb;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lfrb$4;

    invoke-direct {v3, p0}, Lfrb$4;-><init>(Lcom/alibaba/android/user/login/UserLoginInfoModel;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 189
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mobile"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string/jumbo v0, "pref_key_show_privacy_dialog_new"

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_show_privacy_dialog_new"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 150
    .local v0, "mApp":Landroid/app/Application;
    const-string/jumbo v1, "pref_logout_phone_number"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "pref_logout_avatar"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "pref_logout_nick"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "pref_logout_state_code"

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "site"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lfxm;->a()Lfxm;

    invoke-static {}, Lfxm;->b()Lcom/ali/user/open/core/config/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/open/core/AliMemberSDK;->setEnvironment(Lcom/ali/user/open/core/config/Environment;)V

    .line 527
    const-string/jumbo v0, "dingding"

    new-instance v1, Lfrb$6;

    invoke-direct {v1, p0, p1, p2}, Lfrb$6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    invoke-static {p0, v0, v1}, Lcom/ali/user/open/core/AliMemberSDK;->init(Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/core/callback/InitResultCallback;)V

    .line 599
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 291
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const-string/jumbo v1, "+86"

    .line 298
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "+1"

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "zimId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 669
    :goto_0
    return-void

    .line 609
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    :cond_1
    new-instance v1, Lfrb$7;

    invoke-direct {v1, p2}, Lfrb$7;-><init>(Lcma;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 619
    :cond_2
    const-string/jumbo v1, "23794744"

    new-instance v2, Lfrb$8;

    invoke-direct {v2}, Lfrb$8;-><init>()V

    invoke-static {p0, v1, v2}, Ljez;->a(Landroid/content/Context;Ljava/lang/String;Ljey;)V

    .line 632
    invoke-static {p0}, Lcom/mybank/android/phone/common/utils/VerifyIdentityUtils;->preVerifyAlipay(Landroid/content/Context;)Landroid/os/Bundle;

    .line 634
    invoke-static {p0}, Lcom/alipay/mobile/security/zim/api/ZIMFacadeBuilder;->create(Landroid/content/Context;)Lcom/alipay/mobile/security/zim/api/ZIMFacade;

    move-result-object v0

    .line 635
    .local v0, "zimFacade":Lcom/alipay/mobile/security/zim/api/ZIMFacade;
    const/4 v1, 0x0

    new-instance v2, Lfrb$9;

    invoke-direct {v2, v0, p2, p1}, Lfrb$9;-><init>(Lcom/alipay/mobile/security/zim/api/ZIMFacade;Lcma;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->verify(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/security/zim/api/ZIMCallback;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pre_key_ever_login_flag"

    invoke-static {v0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
